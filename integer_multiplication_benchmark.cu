#include <stdio.h>
#include <cuda.h>

__global__ void loop_mult(unsigned int* a, unsigned int* b, int64_t* times_bef, int64_t* times_aft, int n) {
    int u = blockDim.x * blockIdx.x + threadIdx.x;
    unsigned int op_a = a[u];
    unsigned int op_b = b[u];

    times_bef[u] = clock64(); 
    for(int i=0; i<1000; i++) {
        asm volatile("mul.lo.u32 %0, %0, %1;" : "+r"(op_a) : "r"(op_b));
        /* 999 more multiplications */
    }
    timeis_aft[u] = clock64();

    a[u] = op_a;
}

int main(int argc, char** argv) {
    int n_threads = 1;
    int n_loops = 1;
    int n_grids = 1;

    if(argc == 2) {
        n_threads = atoi(argv[1]);
    }
    if(argc == 3) {
        n_threads = atoi(argv[1]);
        n_loops = atoi(argv[2]);
    }
    if(argc == 4) {
        n_threads = atoi(argv[1]);
        n_loops = atoi(argv[2]);
        n_grids = atoi(argv[3]);
    }

    dim3 dimBlock(n_threads, 1, 1);
    dim3 dimGrid(n_grids, 1, 1);

    unsigned int *a, *b;
    unsigned int *d_a, *d_b;
    int64_t *times_bef, *times_aft;
    int64_t *d_times_bef, *d_times_aft;

    a = (unsigned int *) malloc(n_threads*sizeof(unsigned int));
    b = (unsigned int *) malloc(n_threads*sizeof(unsigned int));
    times_bef = (int64_t *) malloc(n_threads*sizeof(int64_t));
    times_aft = (int64_t *) malloc(n_threads*sizeof(int64_t));

    for (int i = 0; i < n_threads; i++) {
        a[i] = (unsigned int) 3.1;
        b[i] = (unsigned int) 245321.0;
    }

    cudaMalloc ( &d_a,n_threads*sizeof(unsigned int));
    cudaMalloc ( &d_b,n_threads*sizeof(unsigned int));
    cudaMalloc ( &d_times_bef,n_threads*sizeof(int64_t));
    cudaMalloc ( &d_times_aft,n_threads*sizeof(int64_t));

    cudaMemcpy(d_a, a, n_threads*sizeof(unsigned int), cudaMemcpyHostToDevice);
    cudaMemcpy(d_b, b, n_threads*sizeof(unsigned int), cudaMemcpyHostToDevice);
    cudaMemcpy(d_times_bef, times_bef, n_threads*sizeof(int64_t), cudaMemcpyHostToDevice);
    cudaMemcpy(d_times_aft, times_aft, n_threads*sizeof(int64_t), cudaMemcpyHostToDevice);

    loop_mult<<<dimGrid, dimBlock >>>(d_a, d_b, d_times_bef, d_times_aft, n_loops);
    
    cudaMemcpy(a, d_a, n_threads*sizeof(unsigned int), cudaMemcpyDeviceToHost);
    cudaMemcpy(times_bef, d_times_bef, n_threads*sizeof(int64_t), cudaMemcpyDeviceToHost);
    cudaMemcpy(times_aft, d_times_aft, n_threads*sizeof(int64_t), cudaMemcpyDeviceToHost);

    for( int i=0; i < n_threads; i++) {
        fprintf(stderr, "%lu %lu\n",times_bef[i],times_aft[i]); 
    }
    
    cudaFree(d_a);
    cudaFree(d_b);
    cudaFree(d_times_bef);
    cudaFree(d_times_aft);
    free(a);
    free(b);
    free(times_aft);
    free(times_bef);
    return EXIT_SUCCESS;

}

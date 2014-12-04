#include <stdio.h>
#include <cuda.h>

__global__ void loop_mult(DATA_TYPE* a, DATA_TYPE* b, DATA_TYPE* c, DATA_TYPE* d, int64_t* times_bef, int64_t* times_aft, int n) {
    int u = blockDim.x * blockIdx.x + threadIdx.x;
    DATA_TYPE op_a = a[u];
    DATA_TYPE op_b = b[u];
    DATA_TYPE op_c = c[u];
    DATA_TYPE op_d = d[u];

    times_bef[u] = clock();   
MEASUREMENT_TARGET
    time_aft = clock();
    times_aft[u] = (time_aft < times_bef[u]) ? time_aft + (0xffffffff - times_bef[u]) : time_aft;    

    a[u] = op_a;
	c[u] = op_c;
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

    DATA_TYPE *a, *b, *c, *d;
    DATA_TYPE *d_a, *d_b, *d_c, *d_d;
    int64_t *times_bef, *times_aft;
    int64_t *d_times_bef, *d_times_aft;

    a = (DATA_TYPE *) malloc(n_threads*sizeof(DATA_TYPE));
    b = (DATA_TYPE *) malloc(n_threads*sizeof(DATA_TYPE));
	c = (DATA_TYPE *) malloc(n_threads*sizeof(DATA_TYPE));
    d = (DATA_TYPE *) malloc(n_threads*sizeof(DATA_TYPE));

    times_bef = (int64_t *) malloc(n_threads*sizeof(int64_t));
    times_aft = (int64_t *) malloc(n_threads*sizeof(int64_t));

    for (int i = 0; i < n_threads; i++) {
        a[i] = (DATA_TYPE) 3.1;
        b[i] = (DATA_TYPE) 2.0;
		c[i] = (DATA_TYPE) 3.1;
        d[i] = (DATA_TYPE) 2.0;
    }

    cudaMalloc ( &d_a,n_threads*sizeof(DATA_TYPE));
    cudaMalloc ( &d_b,n_threads*sizeof(DATA_TYPE));
	cudaMalloc ( &d_c,n_threads*sizeof(DATA_TYPE));
    cudaMalloc ( &d_d,n_threads*sizeof(DATA_TYPE));

    cudaMalloc ( &d_times_bef,n_threads*sizeof(int64_t));
    cudaMalloc ( &d_times_aft,n_threads*sizeof(int64_t));

    cudaMemcpy(d_a, a, n_threads*sizeof(DATA_TYPE), cudaMemcpyHostToDevice);
    cudaMemcpy(d_b, b, n_threads*sizeof(DATA_TYPE), cudaMemcpyHostToDevice);
    cudaMemcpy(d_c, c, n_threads*sizeof(DATA_TYPE), cudaMemcpyHostToDevice);
    cudaMemcpy(d_d, d, n_threads*sizeof(DATA_TYPE), cudaMemcpyHostToDevice);

    cudaMemcpy(d_times_bef, times_bef, n_threads*sizeof(int64_t), cudaMemcpyHostToDevice);
    cudaMemcpy(d_times_aft, times_aft, n_threads*sizeof(int64_t), cudaMemcpyHostToDevice);

    loop_mult<<<dimGrid, dimBlock >>>(d_a, d_b, d_c, d_d, d_times_bef, d_times_aft, n_loops);
    
    cudaMemcpy(a, d_a, n_threads*sizeof(DATA_TYPE), cudaMemcpyDeviceToHost);
	cudaMemcpy(a, d_a, n_threads*sizeof(DATA_TYPE), cudaMemcpyDeviceToHost);

    cudaMemcpy(times_bef, d_times_bef, n_threads*sizeof(int64_t), cudaMemcpyDeviceToHost);
    cudaMemcpy(times_aft, d_times_aft, n_threads*sizeof(int64_t), cudaMemcpyDeviceToHost);

    for( int i=0; i < n_threads; i++) {
        fprintf(stderr, "%lu %lu",times_bef[i],times_aft[i]); 
        if(i != n_threads-1) {
            fprintf(stderr, " \n"); // allow us to avoid an empty cell in the python
        }
        // format is really important! 
    }
    
   cudaFree(d_a);
    cudaFree(d_b);
	cudaFree(d_c);
    cudaFree(d_d);

    cudaFree(d_times_bef);
    cudaFree(d_times_aft);
    free(a);
    free(b);
	free(c);
    free(d);
    free(times_aft);
    free(times_bef);
    return EXIT_SUCCESS;

}

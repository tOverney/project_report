#include <stdio.h>
#include <cuda.h>

__global__ void loop_mult(float* a, float* b, int64_t* times_bef, int64_t* times_aft, int n) {
    int u = blockDim.x * blockIdx.x + threadIdx.x;
    int64_t time_aft;
    float op_a = a[u];
    float op_b = b[u];

    times_bef[u] = clock();   
asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));

asm volatile("mul.f32 %0, %0, %1;" : "+f"(op_a) : "f"(op_b));


    time_aft = clock();
    times_aft[u] = (time_aft < times_bef[u]) ? time_aft + (0xffffffff - times_bef[u]) : time_aft;    

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

    float *a, *b;
    float *d_a, *d_b;
    int64_t *times_bef, *times_aft;
    int64_t *d_times_bef, *d_times_aft;

    a = (float *) malloc(n_threads*sizeof(float));
    b = (float *) malloc(n_threads*sizeof(float));
    times_bef = (int64_t *) malloc(n_threads*sizeof(int64_t));
    times_aft = (int64_t *) malloc(n_threads*sizeof(int64_t));

    for (int i = 0; i < n_threads; i++) {
        a[i] = (float) 3.1;
        b[i] = (float) 2.0;
    }

    cudaMalloc ( &d_a,n_threads*sizeof(float));
    cudaMalloc ( &d_b,n_threads*sizeof(float));
    cudaMalloc ( &d_times_bef,n_threads*sizeof(int64_t));
    cudaMalloc ( &d_times_aft,n_threads*sizeof(int64_t));

    cudaMemcpy(d_a, a, n_threads*sizeof(float), cudaMemcpyHostToDevice);
    cudaMemcpy(d_b, b, n_threads*sizeof(float), cudaMemcpyHostToDevice);
    cudaMemcpy(d_times_bef, times_bef, n_threads*sizeof(int64_t), cudaMemcpyHostToDevice);
    cudaMemcpy(d_times_aft, times_aft, n_threads*sizeof(int64_t), cudaMemcpyHostToDevice);

    loop_mult<<<dimGrid, dimBlock >>>(d_a, d_b, d_times_bef, d_times_aft, n_loops);
    
    cudaMemcpy(a, d_a, n_threads*sizeof(float), cudaMemcpyDeviceToHost);
    cudaMemcpy(times_bef, d_times_bef, n_threads*sizeof(int64_t), cudaMemcpyDeviceToHost);
    cudaMemcpy(times_aft, d_times_aft, n_threads*sizeof(int64_t), cudaMemcpyDeviceToHost);

    for( int i=0; i < n_threads; i++) {
        printf("%lu %lu",times_bef[i],times_aft[i]); 
        if(i != n_threads-1) {
            printf(" \n"); // allow us to avoid an empty cell in the python
        }
        // format is really important! 
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

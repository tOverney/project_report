% Design of a Novel Many-Core Crypto Processor

Clément Humbert, Tristan Overney

November 21st, 2014

# Summary

* Goal of the project
* Cryptography on GPU
* First approach
* Microbenchmarking
* Fermi
* Microbenchmarking results
* What's next 


# Goal of the project

* Increase GPU performance for cryptographic applications.
  * Understanding current limitations of cryptography on GPUs
  * Understanding the microarchitecture of currently used GPUs
  * Find a way to change this architecture to improve performances of cryptographic applications

# Cryptography on GPU // c'est p-ê trop proche de la slide précédente mais je ne vois pas comment séparer mieux!

* High level of parallelism, ideal for cryptographic algorithms.
* Principal focus on single-precision floating-point operations.
* Lack of large multipliers for integers.

<br/>
<h2>Why Nvidia & Fermi architecture</h2>

* Nividia's GPU are build around CUDA core.
* Nividia’s Fermi is the most recent architecture with decent integer operation.

# First approach

* First approach was to build hardware components
  * Montgomery multiplier
  * Larger multiplier
* And mimic the Fermi's architecture
* We tinkered on a simulator (gpgpu sim) to be able to test custom opcodes

There was just too much things we didn’t know about Fermi.

# Microbenchmarking

* We need to have a better understanding of the Fermi architecture
* Fermi is closed and there is little to no precise informations about its microarchitecture
* We had a Fermi card ready for some live measurement

# Benchmarking cuda cores

* Are (single-precision) floating-point and integer units really present in each core ?
* How could the inferior integer performances be explained they are ?
* How is the scheduling performed ? 

# Fermi's Streaming Multiprocessor

<div style="text-align: center; margin-top: 10px; font-size:14pt">
<img src="../pictures/Fermi.png" width="35%" height="35%">
<br/>
http://en.wikipedia.org/wiki/Fermi_(microarchitecture)#mediaviewer/File:Fermi.svg
</div>

# CUDA Core

<div style="text-align: center; margin-top: 80px; font-size:14pt">
<img src="../pictures/CUDACore.png" width="40%" height="40%">
<br/>
http://www.nvidia.com/content/pdf/fermi_white_papers/nvidiafermicomputearchitecturewhitepaper.pdf
</div>

# Benchmark programs

```rust
for(int i = 0; i < n; i++) {
    asm volatile("mul.lo.u32 %0, %0, %1;" : "+r"(op_a) : "r"(op_b));
    asm volatile("mul.lo.u32 %0, %0, %1;" : "+r"(op_a) : "r"(op_b));
    /* ... */ 
    asm volatile("mul.lo.u32 %0, %0, %1;" : "+r"(op_a) : "r"(op_b));
}
```

# Integer vs. Floating-points

* Running a million of operations
* Once for integer multiplication
* Once for floating point multiplication
* Expecting slightly lower performances for integer

# Integer vs. Single-precision floating-points (2)
<div style="text-align: center; margin-top: 60px">
<img src="../graphics/float_vs_int_running_times.png">
</div>

# Scheduling, first hypothesis

* 16 stages pipeline
* Only half of the cores have integer ALUs
* No dependency check, confirmed by Nvidia's whitepaper on Fermi
* Real timing should be around 16 millions cycles, probably some base cost is measured

# For loop cost
<div style="text-align: center; margin-top: 40px">
<img src="../graphics/for-sizes-superpositions.png" width="50%" height="50%" >
</div>

# Scheduling, first hypothesis (2)
<div style="text-align: center; margin-top: 60px">
<img src="../pictures/table_513t_float_100dep.png" width="70%" height="70%" >
</div>

# Semi-dependencies benchmark program

```rust
for(int i = 0; i < n; i++) {
    asm volatile("mul.lo.u32 %0, %0, %1;" : "+r"(op_a) : "r"(op_b));
    asm volatile("mul.lo.u32 %0, %0, %1;" : "+r"(op_c) : "r"(op_d));
    asm volatile("mul.lo.u32 %0, %0, %1;" : "+r"(op_a) : "r"(op_b));
    asm volatile("mul.lo.u32 %0, %0, %1;" : "+r"(op_c) : "r"(op_d));
    /* ... */ 
    asm volatile("mul.lo.u32 %0, %0, %1;" : "+r"(op_a) : "r"(op_b));
    asm volatile("mul.lo.u32 %0, %0, %1;" : "+r"(op_c) : "r"(op_d));
}
```

# Dependence vs. Semi-dependence
<div style="text-align: center; margin-top: 60px">
<img src="../graphics/float_dep_float_indep.png">
</div>

# Second scheduling hypothesis
<div style="text-align: center; margin-top: 60px">
<img src="../pictures/table_064t_float_5050dep.png" width="70%" height="70%">
</div>

# What's next

* Determine what can be removed from a Fermi card for our purpose
* Hardware implementation of specific algorithms in less than 16 cycles
* Simulation of changes using a modified version of gpgpu-sim

# Questions

<div style="text-align: center; margin-top: 60px">
<img src="../pictures/a_fuken_bear.png" width="70%" height="70%">
</div>
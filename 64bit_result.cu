asm volatile("mul.lo.u32 %0, %1, %2;" : "+r"(c) : "r"(a) : "r"(b));
asm volatile("mul.hi.u32 %0, %1, %2;" : "+r"(d) : "r"(a) : "r"(b));

// %0%1 * %2%3

mul.lo.u32 %4, %1, %3;
mul.hi.u32 %5, %1, %3;

mad.lo.cc.u32 %5, %0, %3, %5;
madc.hi.u32 %6, %0, %3, 0;

mad.lo.cc.u32 %5, %1, %2, %5;
madc.hi.cc.u32 %6, %1, %2, %6;

madc.lo.cc.u32 %6, %0, %2, %6;
madc.hi.u32 %7, %0, %2, 0;

// result is: %7%6%5%4

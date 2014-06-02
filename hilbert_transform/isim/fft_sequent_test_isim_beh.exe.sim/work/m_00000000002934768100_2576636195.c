/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "C:/Users/Avi Singh/Desktop/FPGA/hilbert_transform/bffly.v";
static int ng1[] = {1, 0};
static int ng2[] = {0, 0};



static void Cont_53_0(char *t0)
{
    char t5[16];
    char t8[16];
    char t9[16];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t6;
    char *t7;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;

LAB0:    t1 = (t0 + 4768U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(53, ng0);
    t2 = (t0 + 1368U);
    t3 = *((char **)t2);
    t2 = (t0 + 1688U);
    t4 = *((char **)t2);
    xsi_vlog_signed_multiply(t5, 48, t3, 32, t4, 16);
    t2 = (t0 + 1528U);
    t6 = *((char **)t2);
    t2 = (t0 + 1848U);
    t7 = *((char **)t2);
    xsi_vlog_signed_multiply(t8, 48, t6, 32, t7, 16);
    xsi_vlog_signed_minus(t9, 48, t5, 48, t8, 48);
    t2 = (t0 + 6224);
    t10 = (t2 + 56U);
    t11 = *((char **)t10);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    xsi_vlog_bit_copy(t13, 0, t9, 0, 48);
    xsi_driver_vfirst_trans(t2, 0, 47);
    t14 = (t0 + 6080);
    *((int *)t14) = 1;

LAB1:    return;
}

static void Cont_54_1(char *t0)
{
    char t5[16];
    char t8[16];
    char t9[16];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t6;
    char *t7;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;

LAB0:    t1 = (t0 + 5016U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(54, ng0);
    t2 = (t0 + 1368U);
    t3 = *((char **)t2);
    t2 = (t0 + 1848U);
    t4 = *((char **)t2);
    xsi_vlog_signed_multiply(t5, 48, t3, 32, t4, 16);
    t2 = (t0 + 1528U);
    t6 = *((char **)t2);
    t2 = (t0 + 1688U);
    t7 = *((char **)t2);
    xsi_vlog_signed_multiply(t8, 48, t6, 32, t7, 16);
    xsi_vlog_signed_add(t9, 48, t5, 48, t8, 48);
    t2 = (t0 + 6288);
    t10 = (t2 + 56U);
    t11 = *((char **)t10);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    xsi_vlog_bit_copy(t13, 0, t9, 0, 48);
    xsi_driver_vfirst_trans(t2, 0, 47);
    t14 = (t0 + 6096);
    *((int *)t14) = 1;

LAB1:    return;
}

static void Cont_56_2(char *t0)
{
    char t3[8];
    char t4[8];
    char t23[8];
    char *t1;
    char *t2;
    char *t5;
    char *t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    char *t11;
    char *t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    char *t21;
    char *t22;
    char *t24;
    char *t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    unsigned int t29;
    unsigned int t30;
    unsigned int t31;
    char *t32;
    char *t33;
    char *t34;
    char *t35;
    char *t36;
    char *t37;

LAB0:    t1 = (t0 + 5264U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(56, ng0);
    t2 = (t0 + 2328U);
    t5 = *((char **)t2);
    memset(t4, 0, 8);
    t2 = (t4 + 4);
    t6 = (t5 + 4);
    t7 = *((unsigned int *)t5);
    t8 = (t7 >> 14);
    *((unsigned int *)t4) = t8;
    t9 = *((unsigned int *)t6);
    t10 = (t9 >> 14);
    *((unsigned int *)t2) = t10;
    t11 = (t5 + 8);
    t12 = (t5 + 12);
    t13 = *((unsigned int *)t11);
    t14 = (t13 << 18);
    t15 = *((unsigned int *)t4);
    *((unsigned int *)t4) = (t15 | t14);
    t16 = *((unsigned int *)t12);
    t17 = (t16 << 18);
    t18 = *((unsigned int *)t2);
    *((unsigned int *)t2) = (t18 | t17);
    t19 = *((unsigned int *)t4);
    *((unsigned int *)t4) = (t19 & 2147483647U);
    t20 = *((unsigned int *)t2);
    *((unsigned int *)t2) = (t20 & 2147483647U);
    t21 = (t0 + 2328U);
    t22 = *((char **)t21);
    memset(t23, 0, 8);
    t21 = (t23 + 4);
    t24 = (t22 + 8);
    t25 = (t22 + 12);
    t26 = *((unsigned int *)t24);
    t27 = (t26 >> 15);
    t28 = (t27 & 1);
    *((unsigned int *)t23) = t28;
    t29 = *((unsigned int *)t25);
    t30 = (t29 >> 15);
    t31 = (t30 & 1);
    *((unsigned int *)t21) = t31;
    xsi_vlogtype_concat(t3, 32, 32, 2U, t23, 1, t4, 31);
    t32 = (t0 + 6352);
    t33 = (t32 + 56U);
    t34 = *((char **)t33);
    t35 = (t34 + 56U);
    t36 = *((char **)t35);
    memcpy(t36, t3, 8);
    xsi_driver_vfirst_trans(t32, 0, 31);
    t37 = (t0 + 6112);
    *((int *)t37) = 1;

LAB1:    return;
}

static void Cont_57_3(char *t0)
{
    char t3[8];
    char t4[8];
    char t23[8];
    char *t1;
    char *t2;
    char *t5;
    char *t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    char *t11;
    char *t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    char *t21;
    char *t22;
    char *t24;
    char *t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    unsigned int t29;
    unsigned int t30;
    unsigned int t31;
    char *t32;
    char *t33;
    char *t34;
    char *t35;
    char *t36;
    char *t37;

LAB0:    t1 = (t0 + 5512U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(57, ng0);
    t2 = (t0 + 2488U);
    t5 = *((char **)t2);
    memset(t4, 0, 8);
    t2 = (t4 + 4);
    t6 = (t5 + 4);
    t7 = *((unsigned int *)t5);
    t8 = (t7 >> 14);
    *((unsigned int *)t4) = t8;
    t9 = *((unsigned int *)t6);
    t10 = (t9 >> 14);
    *((unsigned int *)t2) = t10;
    t11 = (t5 + 8);
    t12 = (t5 + 12);
    t13 = *((unsigned int *)t11);
    t14 = (t13 << 18);
    t15 = *((unsigned int *)t4);
    *((unsigned int *)t4) = (t15 | t14);
    t16 = *((unsigned int *)t12);
    t17 = (t16 << 18);
    t18 = *((unsigned int *)t2);
    *((unsigned int *)t2) = (t18 | t17);
    t19 = *((unsigned int *)t4);
    *((unsigned int *)t4) = (t19 & 2147483647U);
    t20 = *((unsigned int *)t2);
    *((unsigned int *)t2) = (t20 & 2147483647U);
    t21 = (t0 + 2488U);
    t22 = *((char **)t21);
    memset(t23, 0, 8);
    t21 = (t23 + 4);
    t24 = (t22 + 8);
    t25 = (t22 + 12);
    t26 = *((unsigned int *)t24);
    t27 = (t26 >> 15);
    t28 = (t27 & 1);
    *((unsigned int *)t23) = t28;
    t29 = *((unsigned int *)t25);
    t30 = (t29 >> 15);
    t31 = (t30 & 1);
    *((unsigned int *)t21) = t31;
    xsi_vlogtype_concat(t3, 32, 32, 2U, t23, 1, t4, 31);
    t32 = (t0 + 6416);
    t33 = (t32 + 56U);
    t34 = *((char **)t33);
    t35 = (t34 + 56U);
    t36 = *((char **)t35);
    memcpy(t36, t3, 8);
    xsi_driver_vfirst_trans(t32, 0, 31);
    t37 = (t0 + 6128);
    *((int *)t37) = 1;

LAB1:    return;
}

static void Always_59_4(char *t0)
{
    char t14[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    char *t11;
    char *t12;
    char *t13;

LAB0:    t1 = (t0 + 5760U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(59, ng0);
    t2 = (t0 + 6144);
    *((int *)t2) = 1;
    t3 = (t0 + 5792);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(60, ng0);

LAB5:    xsi_set_current_line(61, ng0);
    t4 = (t0 + 2168U);
    t5 = *((char **)t4);
    t4 = (t5 + 4);
    t6 = *((unsigned int *)t4);
    t7 = (~(t6));
    t8 = *((unsigned int *)t5);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB6;

LAB7:    xsi_set_current_line(71, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 3848);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);

LAB8:    goto LAB2;

LAB6:    xsi_set_current_line(62, ng0);

LAB9:    xsi_set_current_line(63, ng0);
    t11 = (t0 + 1048U);
    t12 = *((char **)t11);
    t11 = (t0 + 2648U);
    t13 = *((char **)t11);
    memset(t14, 0, 8);
    xsi_vlog_signed_add(t14, 32, t12, 32, t13, 32);
    t11 = (t0 + 3208);
    xsi_vlogvar_wait_assign_value(t11, t14, 0, 0, 32, 0LL);
    xsi_set_current_line(64, ng0);
    t2 = (t0 + 1208U);
    t3 = *((char **)t2);
    t2 = (t0 + 2808U);
    t4 = *((char **)t2);
    memset(t14, 0, 8);
    xsi_vlog_signed_add(t14, 32, t3, 32, t4, 32);
    t2 = (t0 + 3368);
    xsi_vlogvar_wait_assign_value(t2, t14, 0, 0, 32, 0LL);
    xsi_set_current_line(65, ng0);
    t2 = (t0 + 1048U);
    t3 = *((char **)t2);
    t2 = (t0 + 2648U);
    t4 = *((char **)t2);
    memset(t14, 0, 8);
    xsi_vlog_signed_minus(t14, 32, t3, 32, t4, 32);
    t2 = (t0 + 3528);
    xsi_vlogvar_wait_assign_value(t2, t14, 0, 0, 32, 0LL);
    xsi_set_current_line(66, ng0);
    t2 = (t0 + 1208U);
    t3 = *((char **)t2);
    t2 = (t0 + 2808U);
    t4 = *((char **)t2);
    memset(t14, 0, 8);
    xsi_vlog_signed_minus(t14, 32, t3, 32, t4, 32);
    t2 = (t0 + 3688);
    xsi_vlogvar_wait_assign_value(t2, t14, 0, 0, 32, 0LL);
    xsi_set_current_line(67, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 3848);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    goto LAB8;

}


extern void work_m_00000000002934768100_2576636195_init()
{
	static char *pe[] = {(void *)Cont_53_0,(void *)Cont_54_1,(void *)Cont_56_2,(void *)Cont_57_3,(void *)Always_59_4};
	xsi_register_didat("work_m_00000000002934768100_2576636195", "isim/fft_sequent_test_isim_beh.exe.sim/work/m_00000000002934768100_2576636195.didat");
	xsi_register_executes(pe);
}

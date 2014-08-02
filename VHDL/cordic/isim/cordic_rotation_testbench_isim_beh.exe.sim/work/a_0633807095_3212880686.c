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

/* This file is designed for use with ISim build 0xc3576ebc */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "C:/Users/Owner/Documents/SENG 440/New folder/cordic/cordic_rotation.vhd";
extern char *IEEE_P_1242562249;

unsigned char ieee_p_1242562249_sub_2479218856_1035706684(char *, char *, char *, int );
char *ieee_p_1242562249_sub_3064532541_1035706684(char *, char *, char *, char *, int );
char *ieee_p_1242562249_sub_3273497107_1035706684(char *, char *, char *, char *, char *, char *);
char *ieee_p_1242562249_sub_3273568981_1035706684(char *, char *, char *, char *, char *, char *);


static void work_a_0633807095_3212880686_p_0(char *t0)
{
    char t16[16];
    char t17[16];
    char *t1;
    char *t2;
    char *t3;
    int t4;
    int t5;
    char *t6;
    int t7;
    int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    char *t12;
    char *t13;
    char *t14;
    unsigned char t15;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;

LAB0:    xsi_set_current_line(58, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t1 = (t0 + 2088U);
    t3 = *((char **)t1);
    t1 = (t3 + 0);
    memcpy(t1, t2, 32U);
    xsi_set_current_line(59, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 2328U);
    t3 = *((char **)t1);
    t1 = (t3 + 0);
    memcpy(t1, t2, 32U);
    xsi_set_current_line(60, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t1 = (t0 + 2568U);
    t3 = *((char **)t1);
    t1 = (t3 + 0);
    memcpy(t1, t2, 32U);
    xsi_set_current_line(62, ng0);
    t1 = (t0 + 8396);
    *((int *)t1) = 0;
    t2 = (t0 + 8400);
    *((int *)t2) = 28;
    t4 = 0;
    t5 = 28;

LAB2:    if (t4 <= t5)
        goto LAB3;

LAB5:    xsi_set_current_line(76, ng0);
    t1 = (t0 + 2328U);
    t2 = *((char **)t1);
    t1 = (t0 + 4072);
    t3 = (t1 + 56U);
    t6 = *((char **)t3);
    t12 = (t6 + 56U);
    t13 = *((char **)t12);
    memcpy(t13, t2, 32U);
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(77, ng0);
    t1 = (t0 + 2568U);
    t2 = *((char **)t1);
    t1 = (t0 + 4136);
    t3 = (t1 + 56U);
    t6 = *((char **)t3);
    t12 = (t6 + 56U);
    t13 = *((char **)t12);
    memcpy(t13, t2, 32U);
    xsi_driver_first_trans_fast_port(t1);
    t1 = (t0 + 3992);
    *((int *)t1) = 1;

LAB1:    return;
LAB3:    xsi_set_current_line(63, ng0);
    t3 = (t0 + 1968U);
    t6 = *((char **)t3);
    t3 = (t0 + 8396);
    t7 = *((int *)t3);
    t8 = (t7 - 0);
    t9 = (t8 * 1);
    xsi_vhdl_check_range_of_index(0, 28, 1, *((int *)t3));
    t10 = (32U * t9);
    t11 = (0 + t10);
    t12 = (t6 + t11);
    t13 = (t0 + 2688U);
    t14 = *((char **)t13);
    t13 = (t14 + 0);
    memcpy(t13, t12, 32U);
    xsi_set_current_line(64, ng0);
    t1 = (t0 + 2568U);
    t2 = *((char **)t1);
    t1 = (t0 + 7156U);
    t15 = ieee_p_1242562249_sub_2479218856_1035706684(IEEE_P_1242562249, t2, t1, 0);
    if (t15 != 0)
        goto LAB6;

LAB8:    xsi_set_current_line(69, ng0);
    t1 = (t0 + 2088U);
    t2 = *((char **)t1);
    t1 = (t0 + 7156U);
    t3 = (t0 + 2328U);
    t6 = *((char **)t3);
    t3 = (t0 + 7156U);
    t12 = (t0 + 8396);
    t13 = ieee_p_1242562249_sub_3064532541_1035706684(IEEE_P_1242562249, t17, t6, t3, *((int *)t12));
    t14 = ieee_p_1242562249_sub_3273568981_1035706684(IEEE_P_1242562249, t16, t2, t1, t13, t17);
    t18 = (t0 + 2208U);
    t19 = *((char **)t18);
    t18 = (t19 + 0);
    t20 = (t16 + 12U);
    t9 = *((unsigned int *)t20);
    t10 = (1U * t9);
    memcpy(t18, t14, t10);
    xsi_set_current_line(70, ng0);
    t1 = (t0 + 2328U);
    t2 = *((char **)t1);
    t1 = (t0 + 7156U);
    t3 = (t0 + 2088U);
    t6 = *((char **)t3);
    t3 = (t0 + 7156U);
    t12 = (t0 + 8396);
    t13 = ieee_p_1242562249_sub_3064532541_1035706684(IEEE_P_1242562249, t17, t6, t3, *((int *)t12));
    t14 = ieee_p_1242562249_sub_3273497107_1035706684(IEEE_P_1242562249, t16, t2, t1, t13, t17);
    t18 = (t0 + 2448U);
    t19 = *((char **)t18);
    t18 = (t19 + 0);
    t20 = (t16 + 12U);
    t9 = *((unsigned int *)t20);
    t10 = (1U * t9);
    memcpy(t18, t14, t10);
    xsi_set_current_line(71, ng0);
    t1 = (t0 + 2568U);
    t2 = *((char **)t1);
    t1 = (t0 + 7156U);
    t3 = (t0 + 2688U);
    t6 = *((char **)t3);
    t3 = (t0 + 7156U);
    t12 = ieee_p_1242562249_sub_3273568981_1035706684(IEEE_P_1242562249, t16, t2, t1, t6, t3);
    t13 = (t0 + 2568U);
    t14 = *((char **)t13);
    t13 = (t14 + 0);
    t18 = (t16 + 12U);
    t9 = *((unsigned int *)t18);
    t10 = (1U * t9);
    memcpy(t13, t12, t10);

LAB7:    xsi_set_current_line(73, ng0);
    t1 = (t0 + 2208U);
    t2 = *((char **)t1);
    t1 = (t0 + 2088U);
    t3 = *((char **)t1);
    t1 = (t3 + 0);
    memcpy(t1, t2, 32U);
    xsi_set_current_line(74, ng0);
    t1 = (t0 + 2448U);
    t2 = *((char **)t1);
    t1 = (t0 + 2328U);
    t3 = *((char **)t1);
    t1 = (t3 + 0);
    memcpy(t1, t2, 32U);

LAB4:    t1 = (t0 + 8396);
    t4 = *((int *)t1);
    t2 = (t0 + 8400);
    t5 = *((int *)t2);
    if (t4 == t5)
        goto LAB5;

LAB9:    t7 = (t4 + 1);
    t4 = t7;
    t3 = (t0 + 8396);
    *((int *)t3) = t4;
    goto LAB2;

LAB6:    xsi_set_current_line(65, ng0);
    t3 = (t0 + 2088U);
    t6 = *((char **)t3);
    t3 = (t0 + 7156U);
    t12 = (t0 + 2328U);
    t13 = *((char **)t12);
    t12 = (t0 + 7156U);
    t14 = (t0 + 8396);
    t18 = ieee_p_1242562249_sub_3064532541_1035706684(IEEE_P_1242562249, t17, t13, t12, *((int *)t14));
    t19 = ieee_p_1242562249_sub_3273497107_1035706684(IEEE_P_1242562249, t16, t6, t3, t18, t17);
    t20 = (t0 + 2208U);
    t21 = *((char **)t20);
    t20 = (t21 + 0);
    t22 = (t16 + 12U);
    t9 = *((unsigned int *)t22);
    t10 = (1U * t9);
    memcpy(t20, t19, t10);
    xsi_set_current_line(66, ng0);
    t1 = (t0 + 2328U);
    t2 = *((char **)t1);
    t1 = (t0 + 7156U);
    t3 = (t0 + 2088U);
    t6 = *((char **)t3);
    t3 = (t0 + 7156U);
    t12 = (t0 + 8396);
    t13 = ieee_p_1242562249_sub_3064532541_1035706684(IEEE_P_1242562249, t17, t6, t3, *((int *)t12));
    t14 = ieee_p_1242562249_sub_3273568981_1035706684(IEEE_P_1242562249, t16, t2, t1, t13, t17);
    t18 = (t0 + 2448U);
    t19 = *((char **)t18);
    t18 = (t19 + 0);
    t20 = (t16 + 12U);
    t9 = *((unsigned int *)t20);
    t10 = (1U * t9);
    memcpy(t18, t14, t10);
    xsi_set_current_line(67, ng0);
    t1 = (t0 + 2568U);
    t2 = *((char **)t1);
    t1 = (t0 + 7156U);
    t3 = (t0 + 2688U);
    t6 = *((char **)t3);
    t3 = (t0 + 7156U);
    t12 = ieee_p_1242562249_sub_3273497107_1035706684(IEEE_P_1242562249, t16, t2, t1, t6, t3);
    t13 = (t0 + 2568U);
    t14 = *((char **)t13);
    t13 = (t14 + 0);
    t18 = (t16 + 12U);
    t9 = *((unsigned int *)t18);
    t10 = (1U * t9);
    memcpy(t13, t12, t10);
    goto LAB7;

}


extern void work_a_0633807095_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0633807095_3212880686_p_0};
	xsi_register_didat("work_a_0633807095_3212880686", "isim/cordic_rotation_testbench_isim_beh.exe.sim/work/a_0633807095_3212880686.didat");
	xsi_register_executes(pe);
}

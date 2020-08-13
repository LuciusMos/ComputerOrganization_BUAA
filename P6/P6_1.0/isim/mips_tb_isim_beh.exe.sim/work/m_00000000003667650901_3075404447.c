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
static const char *ng0 = "C:/Users/lenovo/Desktop/study/ComputerOrganization/ISE/P6/P6_1.0/XALU.v";
static int ng1[] = {0, 0};
static unsigned int ng2[] = {4U, 0U};
static unsigned int ng3[] = {5U, 0U};
static unsigned int ng4[] = {429458451U, 0U};
static int ng5[] = {1, 0};
static unsigned int ng6[] = {0U, 0U};
static int ng7[] = {5, 0};
static unsigned int ng8[] = {1U, 0U};
static unsigned int ng9[] = {2U, 0U};
static int ng10[] = {10, 0};
static unsigned int ng11[] = {3U, 0U};
static unsigned int ng12[] = {6U, 0U};
static unsigned int ng13[] = {7U, 0U};



static void Initial_35_0(char *t0)
{
    char *t1;
    char *t2;

LAB0:    xsi_set_current_line(35, ng0);

LAB2:    xsi_set_current_line(36, ng0);
    t1 = ((char*)((ng1)));
    t2 = (t0 + 2728);
    xsi_vlogvar_assign_value(t2, t1, 0, 0, 32);
    xsi_set_current_line(37, ng0);
    t1 = ((char*)((ng1)));
    t2 = (t0 + 2888);
    xsi_vlogvar_assign_value(t2, t1, 0, 0, 32);
    xsi_set_current_line(38, ng0);
    t1 = ((char*)((ng1)));
    t2 = (t0 + 3048);
    xsi_vlogvar_assign_value(t2, t1, 0, 0, 32);
    xsi_set_current_line(39, ng0);
    t1 = ((char*)((ng1)));
    t2 = (t0 + 3208);
    xsi_vlogvar_assign_value(t2, t1, 0, 0, 32);
    xsi_set_current_line(40, ng0);
    t1 = ((char*)((ng1)));
    t2 = (t0 + 3368);
    xsi_vlogvar_assign_value(t2, t1, 0, 0, 32);

LAB1:    return;
}

static void Cont_42_1(char *t0)
{
    char t3[8];
    char t4[8];
    char t6[8];
    char t40[8];
    char t41[8];
    char t44[8];
    char *t1;
    char *t2;
    char *t5;
    char *t7;
    char *t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
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
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    char *t28;
    char *t29;
    unsigned int t30;
    unsigned int t31;
    unsigned int t32;
    char *t33;
    char *t34;
    char *t35;
    unsigned int t36;
    unsigned int t37;
    unsigned int t38;
    unsigned int t39;
    char *t42;
    char *t43;
    char *t45;
    char *t46;
    unsigned int t47;
    unsigned int t48;
    unsigned int t49;
    unsigned int t50;
    unsigned int t51;
    unsigned int t52;
    unsigned int t53;
    unsigned int t54;
    unsigned int t55;
    unsigned int t56;
    unsigned int t57;
    unsigned int t58;
    char *t59;
    char *t60;
    unsigned int t61;
    unsigned int t62;
    unsigned int t63;
    unsigned int t64;
    unsigned int t65;
    char *t66;
    char *t67;
    unsigned int t68;
    unsigned int t69;
    unsigned int t70;
    char *t71;
    char *t72;
    char *t73;
    unsigned int t74;
    unsigned int t75;
    unsigned int t76;
    unsigned int t77;
    char *t78;
    char *t79;
    char *t80;
    char *t81;
    char *t82;
    char *t83;
    char *t84;

LAB0:    t1 = (t0 + 4536U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(42, ng0);
    t2 = (t0 + 1848U);
    t5 = *((char **)t2);
    t2 = ((char*)((ng2)));
    memset(t6, 0, 8);
    t7 = (t5 + 4);
    t8 = (t2 + 4);
    t9 = *((unsigned int *)t5);
    t10 = *((unsigned int *)t2);
    t11 = (t9 ^ t10);
    t12 = *((unsigned int *)t7);
    t13 = *((unsigned int *)t8);
    t14 = (t12 ^ t13);
    t15 = (t11 | t14);
    t16 = *((unsigned int *)t7);
    t17 = *((unsigned int *)t8);
    t18 = (t16 | t17);
    t19 = (~(t18));
    t20 = (t15 & t19);
    if (t20 != 0)
        goto LAB7;

LAB4:    if (t18 != 0)
        goto LAB6;

LAB5:    *((unsigned int *)t6) = 1;

LAB7:    memset(t4, 0, 8);
    t22 = (t6 + 4);
    t23 = *((unsigned int *)t22);
    t24 = (~(t23));
    t25 = *((unsigned int *)t6);
    t26 = (t25 & t24);
    t27 = (t26 & 1U);
    if (t27 != 0)
        goto LAB8;

LAB9:    if (*((unsigned int *)t22) != 0)
        goto LAB10;

LAB11:    t29 = (t4 + 4);
    t30 = *((unsigned int *)t4);
    t31 = *((unsigned int *)t29);
    t32 = (t30 || t31);
    if (t32 > 0)
        goto LAB12;

LAB13:    t36 = *((unsigned int *)t4);
    t37 = (~(t36));
    t38 = *((unsigned int *)t29);
    t39 = (t37 || t38);
    if (t39 > 0)
        goto LAB14;

LAB15:    if (*((unsigned int *)t29) > 0)
        goto LAB16;

LAB17:    if (*((unsigned int *)t4) > 0)
        goto LAB18;

LAB19:    memcpy(t3, t40, 8);

LAB20:    t79 = (t0 + 5728);
    t80 = (t79 + 56U);
    t81 = *((char **)t80);
    t82 = (t81 + 56U);
    t83 = *((char **)t82);
    memcpy(t83, t3, 8);
    xsi_driver_vfirst_trans(t79, 0, 31);
    t84 = (t0 + 5600);
    *((int *)t84) = 1;

LAB1:    return;
LAB6:    t21 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB7;

LAB8:    *((unsigned int *)t4) = 1;
    goto LAB11;

LAB10:    t28 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t28) = 1;
    goto LAB11;

LAB12:    t33 = (t0 + 2728);
    t34 = (t33 + 56U);
    t35 = *((char **)t34);
    goto LAB13;

LAB14:    t42 = (t0 + 1848U);
    t43 = *((char **)t42);
    t42 = ((char*)((ng3)));
    memset(t44, 0, 8);
    t45 = (t43 + 4);
    t46 = (t42 + 4);
    t47 = *((unsigned int *)t43);
    t48 = *((unsigned int *)t42);
    t49 = (t47 ^ t48);
    t50 = *((unsigned int *)t45);
    t51 = *((unsigned int *)t46);
    t52 = (t50 ^ t51);
    t53 = (t49 | t52);
    t54 = *((unsigned int *)t45);
    t55 = *((unsigned int *)t46);
    t56 = (t54 | t55);
    t57 = (~(t56));
    t58 = (t53 & t57);
    if (t58 != 0)
        goto LAB24;

LAB21:    if (t56 != 0)
        goto LAB23;

LAB22:    *((unsigned int *)t44) = 1;

LAB24:    memset(t41, 0, 8);
    t60 = (t44 + 4);
    t61 = *((unsigned int *)t60);
    t62 = (~(t61));
    t63 = *((unsigned int *)t44);
    t64 = (t63 & t62);
    t65 = (t64 & 1U);
    if (t65 != 0)
        goto LAB25;

LAB26:    if (*((unsigned int *)t60) != 0)
        goto LAB27;

LAB28:    t67 = (t41 + 4);
    t68 = *((unsigned int *)t41);
    t69 = *((unsigned int *)t67);
    t70 = (t68 || t69);
    if (t70 > 0)
        goto LAB29;

LAB30:    t74 = *((unsigned int *)t41);
    t75 = (~(t74));
    t76 = *((unsigned int *)t67);
    t77 = (t75 || t76);
    if (t77 > 0)
        goto LAB31;

LAB32:    if (*((unsigned int *)t67) > 0)
        goto LAB33;

LAB34:    if (*((unsigned int *)t41) > 0)
        goto LAB35;

LAB36:    memcpy(t40, t78, 8);

LAB37:    goto LAB15;

LAB16:    xsi_vlog_unsigned_bit_combine(t3, 32, t35, 32, t40, 32);
    goto LAB20;

LAB18:    memcpy(t3, t35, 8);
    goto LAB20;

LAB23:    t59 = (t44 + 4);
    *((unsigned int *)t44) = 1;
    *((unsigned int *)t59) = 1;
    goto LAB24;

LAB25:    *((unsigned int *)t41) = 1;
    goto LAB28;

LAB27:    t66 = (t41 + 4);
    *((unsigned int *)t41) = 1;
    *((unsigned int *)t66) = 1;
    goto LAB28;

LAB29:    t71 = (t0 + 2888);
    t72 = (t71 + 56U);
    t73 = *((char **)t72);
    goto LAB30;

LAB31:    t78 = ((char*)((ng4)));
    goto LAB32;

LAB33:    xsi_vlog_unsigned_bit_combine(t40, 32, t73, 32, t78, 32);
    goto LAB37;

LAB35:    memcpy(t40, t73, 8);
    goto LAB37;

}

static void Cont_45_2(char *t0)
{
    char t6[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    unsigned int t12;
    unsigned int t13;
    char *t14;
    unsigned int t15;
    unsigned int t16;
    char *t17;
    unsigned int t18;
    unsigned int t19;
    char *t20;

LAB0:    t1 = (t0 + 4784U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(45, ng0);
    t2 = (t0 + 3368);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng1)));
    memset(t6, 0, 8);
    xsi_vlog_signed_not_equal(t6, 32, t4, 32, t5, 32);
    t7 = (t0 + 5792);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    memset(t11, 0, 8);
    t12 = 1U;
    t13 = t12;
    t14 = (t6 + 4);
    t15 = *((unsigned int *)t6);
    t12 = (t12 & t15);
    t16 = *((unsigned int *)t14);
    t13 = (t13 & t16);
    t17 = (t11 + 4);
    t18 = *((unsigned int *)t11);
    *((unsigned int *)t11) = (t18 | t12);
    t19 = *((unsigned int *)t17);
    *((unsigned int *)t17) = (t19 | t13);
    xsi_driver_vfirst_trans(t7, 0, 0);
    t20 = (t0 + 5616);
    *((int *)t20) = 1;

LAB1:    return;
}

static void Always_46_3(char *t0)
{
    char t6[8];
    char t31[16];
    char t32[16];
    char t34[16];
    char t37[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t7;
    char *t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
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
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    char *t28;
    char *t29;
    int t30;
    char *t33;
    char *t35;

LAB0:    t1 = (t0 + 5032U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(46, ng0);
    t2 = (t0 + 5632);
    *((int *)t2) = 1;
    t3 = (t0 + 5064);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(46, ng0);

LAB5:    xsi_set_current_line(47, ng0);
    t4 = (t0 + 1688U);
    t5 = *((char **)t4);
    t4 = ((char*)((ng5)));
    memset(t6, 0, 8);
    t7 = (t5 + 4);
    t8 = (t4 + 4);
    t9 = *((unsigned int *)t5);
    t10 = *((unsigned int *)t4);
    t11 = (t9 ^ t10);
    t12 = *((unsigned int *)t7);
    t13 = *((unsigned int *)t8);
    t14 = (t12 ^ t13);
    t15 = (t11 | t14);
    t16 = *((unsigned int *)t7);
    t17 = *((unsigned int *)t8);
    t18 = (t16 | t17);
    t19 = (~(t18));
    t20 = (t15 & t19);
    if (t20 != 0)
        goto LAB9;

LAB6:    if (t18 != 0)
        goto LAB8;

LAB7:    *((unsigned int *)t6) = 1;

LAB9:    t22 = (t6 + 4);
    t23 = *((unsigned int *)t22);
    t24 = (~(t23));
    t25 = *((unsigned int *)t6);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB10;

LAB11:    xsi_set_current_line(54, ng0);
    t2 = (t0 + 2008U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng5)));
    memset(t6, 0, 8);
    t4 = (t3 + 4);
    t5 = (t2 + 4);
    t9 = *((unsigned int *)t3);
    t10 = *((unsigned int *)t2);
    t11 = (t9 ^ t10);
    t12 = *((unsigned int *)t4);
    t13 = *((unsigned int *)t5);
    t14 = (t12 ^ t13);
    t15 = (t11 | t14);
    t16 = *((unsigned int *)t4);
    t17 = *((unsigned int *)t5);
    t18 = (t16 | t17);
    t19 = (~(t18));
    t20 = (t15 & t19);
    if (t20 != 0)
        goto LAB17;

LAB14:    if (t18 != 0)
        goto LAB16;

LAB15:    *((unsigned int *)t6) = 1;

LAB17:    t8 = (t6 + 4);
    t23 = *((unsigned int *)t8);
    t24 = (~(t23));
    t25 = *((unsigned int *)t6);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB18;

LAB19:
LAB20:
LAB12:    xsi_set_current_line(82, ng0);
    t2 = (t0 + 2328U);
    t3 = *((char **)t2);
    t2 = (t3 + 4);
    t9 = *((unsigned int *)t2);
    t10 = (~(t9));
    t11 = *((unsigned int *)t3);
    t12 = (t11 & t10);
    t13 = (t12 != 0);
    if (t13 > 0)
        goto LAB42;

LAB43:
LAB44:    goto LAB2;

LAB8:    t21 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB9;

LAB10:    xsi_set_current_line(47, ng0);

LAB13:    xsi_set_current_line(48, ng0);
    t28 = ((char*)((ng1)));
    t29 = (t0 + 2728);
    xsi_vlogvar_wait_assign_value(t29, t28, 0, 0, 32, 0LL);
    xsi_set_current_line(49, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 32, 0LL);
    xsi_set_current_line(50, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 3048);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 32, 0LL);
    xsi_set_current_line(51, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 3208);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 32, 0LL);
    xsi_set_current_line(52, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 3368);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 32, 0LL);
    goto LAB12;

LAB16:    t7 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t7) = 1;
    goto LAB17;

LAB18:    xsi_set_current_line(54, ng0);

LAB21:    xsi_set_current_line(55, ng0);
    t21 = (t0 + 1848U);
    t22 = *((char **)t21);

LAB22:    t21 = ((char*)((ng6)));
    t30 = xsi_vlog_unsigned_case_compare(t22, 4, t21, 4);
    if (t30 == 1)
        goto LAB23;

LAB24:    t2 = ((char*)((ng8)));
    t30 = xsi_vlog_unsigned_case_compare(t22, 4, t2, 4);
    if (t30 == 1)
        goto LAB25;

LAB26:    t2 = ((char*)((ng9)));
    t30 = xsi_vlog_unsigned_case_compare(t22, 4, t2, 4);
    if (t30 == 1)
        goto LAB27;

LAB28:    t2 = ((char*)((ng11)));
    t30 = xsi_vlog_unsigned_case_compare(t22, 4, t2, 4);
    if (t30 == 1)
        goto LAB29;

LAB30:    t2 = ((char*)((ng12)));
    t30 = xsi_vlog_unsigned_case_compare(t22, 4, t2, 4);
    if (t30 == 1)
        goto LAB31;

LAB32:    t2 = ((char*)((ng13)));
    t30 = xsi_vlog_unsigned_case_compare(t22, 4, t2, 4);
    if (t30 == 1)
        goto LAB33;

LAB34:
LAB35:    goto LAB20;

LAB23:    xsi_set_current_line(56, ng0);

LAB36:    xsi_set_current_line(57, ng0);
    t28 = (t0 + 1048U);
    t29 = *((char **)t28);
    xsi_vlogtype_sign_extend(t31, 64, t29, 32);
    t28 = (t0 + 1208U);
    t33 = *((char **)t28);
    xsi_vlogtype_sign_extend(t32, 64, t33, 32);
    xsi_vlog_signed_multiply(t34, 64, t31, 64, t32, 64);
    t28 = (t0 + 3208);
    xsi_vlogvar_wait_assign_value(t28, t34, 0, 0, 32, 0LL);
    t35 = (t0 + 3048);
    xsi_vlogvar_wait_assign_value(t35, t34, 32, 0, 32, 0LL);
    xsi_set_current_line(58, ng0);
    t2 = ((char*)((ng7)));
    t3 = (t0 + 3368);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 32, 0LL);
    goto LAB35;

LAB25:    xsi_set_current_line(60, ng0);

LAB37:    xsi_set_current_line(61, ng0);
    t3 = (t0 + 1048U);
    t4 = *((char **)t3);
    t3 = (t0 + 1208U);
    t5 = *((char **)t3);
    xsi_vlog_unsigned_multiply(t31, 64, t4, 32, t5, 32);
    t3 = (t0 + 3208);
    xsi_vlogvar_wait_assign_value(t3, t31, 0, 0, 32, 0LL);
    t7 = (t0 + 3048);
    xsi_vlogvar_wait_assign_value(t7, t31, 32, 0, 32, 0LL);
    xsi_set_current_line(62, ng0);
    t2 = ((char*)((ng7)));
    t3 = (t0 + 3368);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 32, 0LL);
    goto LAB35;

LAB27:    xsi_set_current_line(64, ng0);

LAB38:    xsi_set_current_line(65, ng0);
    t3 = (t0 + 1048U);
    t4 = *((char **)t3);
    t3 = (t0 + 1208U);
    t5 = *((char **)t3);
    memset(t37, 0, 8);
    xsi_vlog_signed_mod(t37, 32, t4, 32, t5, 32);
    t3 = (t0 + 3048);
    xsi_vlogvar_wait_assign_value(t3, t37, 0, 0, 32, 0LL);
    xsi_set_current_line(66, ng0);
    t2 = (t0 + 1048U);
    t3 = *((char **)t2);
    t2 = (t0 + 1208U);
    t4 = *((char **)t2);
    memset(t37, 0, 8);
    xsi_vlog_signed_divide(t37, 32, t3, 32, t4, 32);
    t2 = (t0 + 3208);
    xsi_vlogvar_wait_assign_value(t2, t37, 0, 0, 32, 0LL);
    xsi_set_current_line(67, ng0);
    t2 = ((char*)((ng10)));
    t3 = (t0 + 3368);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 32, 0LL);
    goto LAB35;

LAB29:    xsi_set_current_line(69, ng0);

LAB39:    xsi_set_current_line(70, ng0);
    t3 = (t0 + 1048U);
    t4 = *((char **)t3);
    t3 = (t0 + 1208U);
    t5 = *((char **)t3);
    memset(t6, 0, 8);
    xsi_vlog_unsigned_mod(t6, 32, t4, 32, t5, 32);
    t3 = (t0 + 3048);
    xsi_vlogvar_wait_assign_value(t3, t6, 0, 0, 32, 0LL);
    xsi_set_current_line(71, ng0);
    t2 = (t0 + 1048U);
    t3 = *((char **)t2);
    t2 = (t0 + 1208U);
    t4 = *((char **)t2);
    memset(t6, 0, 8);
    xsi_vlog_unsigned_divide(t6, 32, t3, 32, t4, 32);
    t2 = (t0 + 3208);
    xsi_vlogvar_wait_assign_value(t2, t6, 0, 0, 32, 0LL);
    xsi_set_current_line(72, ng0);
    t2 = ((char*)((ng10)));
    t3 = (t0 + 3368);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 32, 0LL);
    goto LAB35;

LAB31:    xsi_set_current_line(74, ng0);

LAB40:    xsi_set_current_line(75, ng0);
    t3 = (t0 + 1048U);
    t4 = *((char **)t3);
    t3 = (t0 + 2728);
    xsi_vlogvar_wait_assign_value(t3, t4, 0, 0, 32, 0LL);
    goto LAB35;

LAB33:    xsi_set_current_line(77, ng0);

LAB41:    xsi_set_current_line(78, ng0);
    t3 = (t0 + 1048U);
    t4 = *((char **)t3);
    t3 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t3, t4, 0, 0, 32, 0LL);
    goto LAB35;

LAB42:    xsi_set_current_line(82, ng0);

LAB45:    xsi_set_current_line(83, ng0);
    t4 = (t0 + 3368);
    t5 = (t4 + 56U);
    t7 = *((char **)t5);
    t8 = ((char*)((ng5)));
    memset(t6, 0, 8);
    xsi_vlog_signed_minus(t6, 32, t7, 32, t8, 32);
    t21 = (t0 + 3368);
    xsi_vlogvar_wait_assign_value(t21, t6, 0, 0, 32, 0LL);
    goto LAB44;

}

static void Always_86_4(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    t1 = (t0 + 5280U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(86, ng0);
    t2 = (t0 + 5648);
    *((int *)t2) = 1;
    t3 = (t0 + 5312);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(86, ng0);

LAB5:    xsi_set_current_line(87, ng0);
    t4 = (t0 + 3048);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t0 + 2728);
    xsi_vlogvar_wait_assign_value(t7, t6, 0, 0, 32, 0LL);
    xsi_set_current_line(88, ng0);
    t2 = (t0 + 3208);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 32, 0LL);
    goto LAB2;

}


extern void work_m_00000000003667650901_3075404447_init()
{
	static char *pe[] = {(void *)Initial_35_0,(void *)Cont_42_1,(void *)Cont_45_2,(void *)Always_46_3,(void *)Always_86_4};
	xsi_register_didat("work_m_00000000003667650901_3075404447", "isim/mips_tb_isim_beh.exe.sim/work/m_00000000003667650901_3075404447.didat");
	xsi_register_executes(pe);
}

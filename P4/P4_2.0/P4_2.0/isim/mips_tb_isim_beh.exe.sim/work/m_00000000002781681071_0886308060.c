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
static const char *ng0 = "C:/Users/lenovo/Desktop/Computer Organization/ISE/P4/P4_2.0/ALU.v";
static int ng1[] = {0, 0};
static unsigned int ng2[] = {1U, 0U};
static unsigned int ng3[] = {0U, 0U};
static unsigned int ng4[] = {2U, 0U};
static unsigned int ng5[] = {3U, 0U};
static unsigned int ng6[] = {4U, 0U};
static unsigned int ng7[] = {5U, 0U};
static unsigned int ng8[] = {429458451U, 0U};



static void Cont_33_0(char *t0)
{
    char t3[8];
    char t4[8];
    char t6[8];
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
    unsigned int t35;
    unsigned int t36;
    unsigned int t37;
    unsigned int t38;
    char *t39;
    char *t40;
    char *t41;
    char *t42;
    char *t43;
    char *t44;

LAB0:    t1 = (t0 + 4128U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(33, ng0);
    t2 = (t0 + 1528U);
    t5 = *((char **)t2);
    t2 = ((char*)((ng1)));
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

LAB13:    t35 = *((unsigned int *)t4);
    t36 = (~(t35));
    t37 = *((unsigned int *)t29);
    t38 = (t36 || t37);
    if (t38 > 0)
        goto LAB14;

LAB15:    if (*((unsigned int *)t29) > 0)
        goto LAB16;

LAB17:    if (*((unsigned int *)t4) > 0)
        goto LAB18;

LAB19:    memcpy(t3, t39, 8);

LAB20:    t33 = (t0 + 6112);
    t40 = (t33 + 56U);
    t41 = *((char **)t40);
    t42 = (t41 + 56U);
    t43 = *((char **)t42);
    memcpy(t43, t3, 8);
    xsi_driver_vfirst_trans(t33, 0, 31);
    t44 = (t0 + 5936);
    *((int *)t44) = 1;

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

LAB12:    t33 = (t0 + 1048U);
    t34 = *((char **)t33);
    goto LAB13;

LAB14:    t33 = (t0 + 1208U);
    t39 = *((char **)t33);
    goto LAB15;

LAB16:    xsi_vlog_unsigned_bit_combine(t3, 32, t34, 32, t39, 32);
    goto LAB20;

LAB18:    memcpy(t3, t34, 8);
    goto LAB20;

}

static void Cont_35_1(char *t0)
{
    char t3[8];
    char t4[8];
    char t6[8];
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
    unsigned int t35;
    unsigned int t36;
    unsigned int t37;
    unsigned int t38;
    char *t39;
    char *t40;
    char *t41;
    char *t42;
    char *t43;
    char *t44;

LAB0:    t1 = (t0 + 4376U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(35, ng0);
    t2 = (t0 + 1688U);
    t5 = *((char **)t2);
    t2 = ((char*)((ng1)));
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

LAB13:    t35 = *((unsigned int *)t4);
    t36 = (~(t35));
    t37 = *((unsigned int *)t29);
    t38 = (t36 || t37);
    if (t38 > 0)
        goto LAB14;

LAB15:    if (*((unsigned int *)t29) > 0)
        goto LAB16;

LAB17:    if (*((unsigned int *)t4) > 0)
        goto LAB18;

LAB19:    memcpy(t3, t39, 8);

LAB20:    t33 = (t0 + 6176);
    t40 = (t33 + 56U);
    t41 = *((char **)t40);
    t42 = (t41 + 56U);
    t43 = *((char **)t42);
    memcpy(t43, t3, 8);
    xsi_driver_vfirst_trans(t33, 0, 31);
    t44 = (t0 + 5952);
    *((int *)t44) = 1;

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

LAB12:    t33 = (t0 + 1208U);
    t34 = *((char **)t33);
    goto LAB13;

LAB14:    t33 = (t0 + 1368U);
    t39 = *((char **)t33);
    goto LAB15;

LAB16:    xsi_vlog_unsigned_bit_combine(t3, 32, t34, 32, t39, 32);
    goto LAB20;

LAB18:    memcpy(t3, t34, 8);
    goto LAB20;

}

static void Cont_37_2(char *t0)
{
    char t5[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t6;
    unsigned int t7;
    unsigned int t8;
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
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    unsigned int t25;
    unsigned int t26;
    char *t27;
    unsigned int t28;
    unsigned int t29;
    char *t30;
    unsigned int t31;
    unsigned int t32;
    char *t33;

LAB0:    t1 = (t0 + 4624U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(37, ng0);
    t2 = (t0 + 2488U);
    t3 = *((char **)t2);
    t2 = (t0 + 2648U);
    t4 = *((char **)t2);
    memset(t5, 0, 8);
    t2 = (t3 + 4);
    t6 = (t4 + 4);
    t7 = *((unsigned int *)t3);
    t8 = *((unsigned int *)t4);
    t9 = (t7 ^ t8);
    t10 = *((unsigned int *)t2);
    t11 = *((unsigned int *)t6);
    t12 = (t10 ^ t11);
    t13 = (t9 | t12);
    t14 = *((unsigned int *)t2);
    t15 = *((unsigned int *)t6);
    t16 = (t14 | t15);
    t17 = (~(t16));
    t18 = (t13 & t17);
    if (t18 != 0)
        goto LAB7;

LAB4:    if (t16 != 0)
        goto LAB6;

LAB5:    *((unsigned int *)t5) = 1;

LAB7:    t20 = (t0 + 6240);
    t21 = (t20 + 56U);
    t22 = *((char **)t21);
    t23 = (t22 + 56U);
    t24 = *((char **)t23);
    memset(t24, 0, 8);
    t25 = 1U;
    t26 = t25;
    t27 = (t5 + 4);
    t28 = *((unsigned int *)t5);
    t25 = (t25 & t28);
    t29 = *((unsigned int *)t27);
    t26 = (t26 & t29);
    t30 = (t24 + 4);
    t31 = *((unsigned int *)t24);
    *((unsigned int *)t24) = (t31 | t25);
    t32 = *((unsigned int *)t30);
    *((unsigned int *)t30) = (t32 | t26);
    xsi_driver_vfirst_trans(t20, 0, 0);
    t33 = (t0 + 5968);
    *((int *)t33) = 1;

LAB1:    return;
LAB6:    t19 = (t5 + 4);
    *((unsigned int *)t5) = 1;
    *((unsigned int *)t19) = 1;
    goto LAB7;

}

static void Cont_38_3(char *t0)
{
    char t5[8];
    char *t1;
    char *t2;
    char *t4;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    unsigned int t11;
    unsigned int t12;
    char *t13;
    unsigned int t14;
    unsigned int t15;
    char *t16;
    unsigned int t17;
    unsigned int t18;
    char *t19;

LAB0:    t1 = (t0 + 4872U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(38, ng0);
    t2 = (t0 + 2488U);
    t4 = *((char **)t2);
    t2 = ((char*)((ng1)));
    memset(t5, 0, 8);
    xsi_vlog_signed_greatereq(t5, 32, t4, 32, t2, 32);
    t6 = (t0 + 6304);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memset(t10, 0, 8);
    t11 = 1U;
    t12 = t11;
    t13 = (t5 + 4);
    t14 = *((unsigned int *)t5);
    t11 = (t11 & t14);
    t15 = *((unsigned int *)t13);
    t12 = (t12 & t15);
    t16 = (t10 + 4);
    t17 = *((unsigned int *)t10);
    *((unsigned int *)t10) = (t17 | t11);
    t18 = *((unsigned int *)t16);
    *((unsigned int *)t16) = (t18 | t12);
    xsi_driver_vfirst_trans(t6, 0, 0);
    t19 = (t0 + 5984);
    *((int *)t19) = 1;

LAB1:    return;
}

static void Cont_39_4(char *t0)
{
    char t3[8];
    char t4[8];
    char t9[8];
    char *t1;
    char *t2;
    char *t6;
    char *t8;
    char *t10;
    char *t11;
    char *t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    char *t18;
    char *t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    char *t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    char *t28;
    char *t29;
    char *t30;
    char *t31;
    char *t32;
    char *t33;
    char *t34;

LAB0:    t1 = (t0 + 5120U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(39, ng0);
    t2 = (t0 + 2488U);
    t6 = *((char **)t2);
    t2 = (t0 + 2648U);
    t8 = *((char **)t2);
    memset(t9, 0, 8);
    t2 = (t6 + 4);
    if (*((unsigned int *)t2) != 0)
        goto LAB5;

LAB4:    t10 = (t8 + 4);
    if (*((unsigned int *)t10) != 0)
        goto LAB5;

LAB8:    if (*((unsigned int *)t6) < *((unsigned int *)t8))
        goto LAB6;

LAB7:    memset(t4, 0, 8);
    t12 = (t9 + 4);
    t13 = *((unsigned int *)t12);
    t14 = (~(t13));
    t15 = *((unsigned int *)t9);
    t16 = (t15 & t14);
    t17 = (t16 & 1U);
    if (t17 != 0)
        goto LAB9;

LAB10:    if (*((unsigned int *)t12) != 0)
        goto LAB11;

LAB12:    t19 = (t4 + 4);
    t20 = *((unsigned int *)t4);
    t21 = *((unsigned int *)t19);
    t22 = (t20 || t21);
    if (t22 > 0)
        goto LAB13;

LAB14:    t24 = *((unsigned int *)t4);
    t25 = (~(t24));
    t26 = *((unsigned int *)t19);
    t27 = (t25 || t26);
    if (t27 > 0)
        goto LAB15;

LAB16:    if (*((unsigned int *)t19) > 0)
        goto LAB17;

LAB18:    if (*((unsigned int *)t4) > 0)
        goto LAB19;

LAB20:    memcpy(t3, t28, 8);

LAB21:    t29 = (t0 + 6368);
    t30 = (t29 + 56U);
    t31 = *((char **)t30);
    t32 = (t31 + 56U);
    t33 = *((char **)t32);
    memcpy(t33, t3, 8);
    xsi_driver_vfirst_trans(t29, 0, 31);
    t34 = (t0 + 6000);
    *((int *)t34) = 1;

LAB1:    return;
LAB5:    t11 = (t9 + 4);
    *((unsigned int *)t9) = 1;
    *((unsigned int *)t11) = 1;
    goto LAB7;

LAB6:    *((unsigned int *)t9) = 1;
    goto LAB7;

LAB9:    *((unsigned int *)t4) = 1;
    goto LAB12;

LAB11:    t18 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t18) = 1;
    goto LAB12;

LAB13:    t23 = ((char*)((ng2)));
    goto LAB14;

LAB15:    t28 = ((char*)((ng3)));
    goto LAB16;

LAB17:    xsi_vlog_unsigned_bit_combine(t3, 32, t23, 32, t28, 32);
    goto LAB21;

LAB19:    memcpy(t3, t23, 8);
    goto LAB21;

}

static void Cont_40_5(char *t0)
{
    char t3[8];
    char t4[8];
    char t9[8];
    char *t1;
    char *t2;
    char *t6;
    char *t8;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    char *t15;
    char *t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    char *t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    char *t25;
    char *t26;
    char *t27;
    char *t28;
    char *t29;
    char *t30;
    char *t31;

LAB0:    t1 = (t0 + 5368U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(40, ng0);
    t2 = (t0 + 2488U);
    t6 = *((char **)t2);
    t2 = (t0 + 2648U);
    t8 = *((char **)t2);
    memset(t9, 0, 8);
    xsi_vlog_signed_less(t9, 32, t6, 32, t8, 32);
    memset(t4, 0, 8);
    t2 = (t9 + 4);
    t10 = *((unsigned int *)t2);
    t11 = (~(t10));
    t12 = *((unsigned int *)t9);
    t13 = (t12 & t11);
    t14 = (t13 & 1U);
    if (t14 != 0)
        goto LAB4;

LAB5:    if (*((unsigned int *)t2) != 0)
        goto LAB6;

LAB7:    t16 = (t4 + 4);
    t17 = *((unsigned int *)t4);
    t18 = *((unsigned int *)t16);
    t19 = (t17 || t18);
    if (t19 > 0)
        goto LAB8;

LAB9:    t21 = *((unsigned int *)t4);
    t22 = (~(t21));
    t23 = *((unsigned int *)t16);
    t24 = (t22 || t23);
    if (t24 > 0)
        goto LAB10;

LAB11:    if (*((unsigned int *)t16) > 0)
        goto LAB12;

LAB13:    if (*((unsigned int *)t4) > 0)
        goto LAB14;

LAB15:    memcpy(t3, t25, 8);

LAB16:    t26 = (t0 + 6432);
    t27 = (t26 + 56U);
    t28 = *((char **)t27);
    t29 = (t28 + 56U);
    t30 = *((char **)t29);
    memcpy(t30, t3, 8);
    xsi_driver_vfirst_trans(t26, 0, 31);
    t31 = (t0 + 6016);
    *((int *)t31) = 1;

LAB1:    return;
LAB4:    *((unsigned int *)t4) = 1;
    goto LAB7;

LAB6:    t15 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t15) = 1;
    goto LAB7;

LAB8:    t20 = ((char*)((ng2)));
    goto LAB9;

LAB10:    t25 = ((char*)((ng3)));
    goto LAB11;

LAB12:    xsi_vlog_unsigned_bit_combine(t3, 32, t20, 32, t25, 32);
    goto LAB16;

LAB14:    memcpy(t3, t20, 8);
    goto LAB16;

}

static void Cont_41_6(char *t0)
{
    char t3[8];
    char t4[8];
    char t6[8];
    char t36[8];
    char t41[8];
    char t42[8];
    char t44[8];
    char t74[8];
    char t79[8];
    char t80[8];
    char t82[8];
    char t112[8];
    char t143[8];
    char t144[8];
    char t147[8];
    char t176[8];
    char t185[8];
    char t190[8];
    char t191[8];
    char t194[8];
    char t227[8];
    char t228[8];
    char t230[8];
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
    unsigned int t37;
    unsigned int t38;
    unsigned int t39;
    unsigned int t40;
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
    unsigned int t75;
    unsigned int t76;
    unsigned int t77;
    unsigned int t78;
    char *t81;
    char *t83;
    char *t84;
    unsigned int t85;
    unsigned int t86;
    unsigned int t87;
    unsigned int t88;
    unsigned int t89;
    unsigned int t90;
    unsigned int t91;
    unsigned int t92;
    unsigned int t93;
    unsigned int t94;
    unsigned int t95;
    unsigned int t96;
    char *t97;
    char *t98;
    unsigned int t99;
    unsigned int t100;
    unsigned int t101;
    unsigned int t102;
    unsigned int t103;
    char *t104;
    char *t105;
    unsigned int t106;
    unsigned int t107;
    unsigned int t108;
    char *t109;
    char *t110;
    char *t111;
    unsigned int t113;
    unsigned int t114;
    unsigned int t115;
    char *t116;
    char *t117;
    unsigned int t118;
    unsigned int t119;
    unsigned int t120;
    unsigned int t121;
    unsigned int t122;
    unsigned int t123;
    unsigned int t124;
    char *t125;
    char *t126;
    unsigned int t127;
    unsigned int t128;
    unsigned int t129;
    int t130;
    unsigned int t131;
    unsigned int t132;
    unsigned int t133;
    int t134;
    unsigned int t135;
    unsigned int t136;
    unsigned int t137;
    unsigned int t138;
    unsigned int t139;
    unsigned int t140;
    unsigned int t141;
    unsigned int t142;
    char *t145;
    char *t146;
    char *t148;
    char *t149;
    unsigned int t150;
    unsigned int t151;
    unsigned int t152;
    unsigned int t153;
    unsigned int t154;
    unsigned int t155;
    unsigned int t156;
    unsigned int t157;
    unsigned int t158;
    unsigned int t159;
    unsigned int t160;
    unsigned int t161;
    char *t162;
    char *t163;
    unsigned int t164;
    unsigned int t165;
    unsigned int t166;
    unsigned int t167;
    unsigned int t168;
    char *t169;
    char *t170;
    unsigned int t171;
    unsigned int t172;
    unsigned int t173;
    char *t174;
    char *t175;
    char *t177;
    char *t178;
    unsigned int t179;
    unsigned int t180;
    unsigned int t181;
    unsigned int t182;
    unsigned int t183;
    unsigned int t184;
    unsigned int t186;
    unsigned int t187;
    unsigned int t188;
    unsigned int t189;
    char *t192;
    char *t193;
    char *t195;
    char *t196;
    unsigned int t197;
    unsigned int t198;
    unsigned int t199;
    unsigned int t200;
    unsigned int t201;
    unsigned int t202;
    unsigned int t203;
    unsigned int t204;
    unsigned int t205;
    unsigned int t206;
    unsigned int t207;
    unsigned int t208;
    char *t209;
    char *t210;
    unsigned int t211;
    unsigned int t212;
    unsigned int t213;
    unsigned int t214;
    unsigned int t215;
    char *t216;
    char *t217;
    unsigned int t218;
    unsigned int t219;
    unsigned int t220;
    char *t221;
    char *t222;
    unsigned int t223;
    unsigned int t224;
    unsigned int t225;
    unsigned int t226;
    char *t229;
    char *t231;
    char *t232;
    unsigned int t233;
    unsigned int t234;
    unsigned int t235;
    unsigned int t236;
    unsigned int t237;
    unsigned int t238;
    unsigned int t239;
    unsigned int t240;
    unsigned int t241;
    unsigned int t242;
    unsigned int t243;
    unsigned int t244;
    char *t245;
    char *t246;
    unsigned int t247;
    unsigned int t248;
    unsigned int t249;
    unsigned int t250;
    unsigned int t251;
    char *t252;
    char *t253;
    unsigned int t254;
    unsigned int t255;
    unsigned int t256;
    char *t257;
    char *t258;
    unsigned int t259;
    unsigned int t260;
    unsigned int t261;
    unsigned int t262;
    char *t263;
    char *t264;
    char *t265;
    char *t266;
    char *t267;
    char *t268;

LAB0:    t1 = (t0 + 5616U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(41, ng0);
    t2 = (t0 + 1848U);
    t5 = *((char **)t2);
    t2 = ((char*)((ng3)));
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

LAB13:    t37 = *((unsigned int *)t4);
    t38 = (~(t37));
    t39 = *((unsigned int *)t29);
    t40 = (t38 || t39);
    if (t40 > 0)
        goto LAB14;

LAB15:    if (*((unsigned int *)t29) > 0)
        goto LAB16;

LAB17:    if (*((unsigned int *)t4) > 0)
        goto LAB18;

LAB19:    memcpy(t3, t41, 8);

LAB20:    t263 = (t0 + 6496);
    t264 = (t263 + 56U);
    t265 = *((char **)t264);
    t266 = (t265 + 56U);
    t267 = *((char **)t266);
    memcpy(t267, t3, 8);
    xsi_driver_vfirst_trans(t263, 0, 31);
    t268 = (t0 + 6032);
    *((int *)t268) = 1;

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

LAB12:    t33 = (t0 + 2488U);
    t34 = *((char **)t33);
    t33 = (t0 + 2648U);
    t35 = *((char **)t33);
    memset(t36, 0, 8);
    xsi_vlog_unsigned_add(t36, 32, t34, 32, t35, 32);
    goto LAB13;

LAB14:    t33 = (t0 + 1848U);
    t43 = *((char **)t33);
    t33 = ((char*)((ng2)));
    memset(t44, 0, 8);
    t45 = (t43 + 4);
    t46 = (t33 + 4);
    t47 = *((unsigned int *)t43);
    t48 = *((unsigned int *)t33);
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

LAB24:    memset(t42, 0, 8);
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

LAB28:    t67 = (t42 + 4);
    t68 = *((unsigned int *)t42);
    t69 = *((unsigned int *)t67);
    t70 = (t68 || t69);
    if (t70 > 0)
        goto LAB29;

LAB30:    t75 = *((unsigned int *)t42);
    t76 = (~(t75));
    t77 = *((unsigned int *)t67);
    t78 = (t76 || t77);
    if (t78 > 0)
        goto LAB31;

LAB32:    if (*((unsigned int *)t67) > 0)
        goto LAB33;

LAB34:    if (*((unsigned int *)t42) > 0)
        goto LAB35;

LAB36:    memcpy(t41, t79, 8);

LAB37:    goto LAB15;

LAB16:    xsi_vlog_unsigned_bit_combine(t3, 32, t36, 32, t41, 32);
    goto LAB20;

LAB18:    memcpy(t3, t36, 8);
    goto LAB20;

LAB23:    t59 = (t44 + 4);
    *((unsigned int *)t44) = 1;
    *((unsigned int *)t59) = 1;
    goto LAB24;

LAB25:    *((unsigned int *)t42) = 1;
    goto LAB28;

LAB27:    t66 = (t42 + 4);
    *((unsigned int *)t42) = 1;
    *((unsigned int *)t66) = 1;
    goto LAB28;

LAB29:    t71 = (t0 + 2488U);
    t72 = *((char **)t71);
    t71 = (t0 + 2648U);
    t73 = *((char **)t71);
    memset(t74, 0, 8);
    xsi_vlog_unsigned_minus(t74, 32, t72, 32, t73, 32);
    goto LAB30;

LAB31:    t71 = (t0 + 1848U);
    t81 = *((char **)t71);
    t71 = ((char*)((ng4)));
    memset(t82, 0, 8);
    t83 = (t81 + 4);
    t84 = (t71 + 4);
    t85 = *((unsigned int *)t81);
    t86 = *((unsigned int *)t71);
    t87 = (t85 ^ t86);
    t88 = *((unsigned int *)t83);
    t89 = *((unsigned int *)t84);
    t90 = (t88 ^ t89);
    t91 = (t87 | t90);
    t92 = *((unsigned int *)t83);
    t93 = *((unsigned int *)t84);
    t94 = (t92 | t93);
    t95 = (~(t94));
    t96 = (t91 & t95);
    if (t96 != 0)
        goto LAB41;

LAB38:    if (t94 != 0)
        goto LAB40;

LAB39:    *((unsigned int *)t82) = 1;

LAB41:    memset(t80, 0, 8);
    t98 = (t82 + 4);
    t99 = *((unsigned int *)t98);
    t100 = (~(t99));
    t101 = *((unsigned int *)t82);
    t102 = (t101 & t100);
    t103 = (t102 & 1U);
    if (t103 != 0)
        goto LAB42;

LAB43:    if (*((unsigned int *)t98) != 0)
        goto LAB44;

LAB45:    t105 = (t80 + 4);
    t106 = *((unsigned int *)t80);
    t107 = *((unsigned int *)t105);
    t108 = (t106 || t107);
    if (t108 > 0)
        goto LAB46;

LAB47:    t139 = *((unsigned int *)t80);
    t140 = (~(t139));
    t141 = *((unsigned int *)t105);
    t142 = (t140 || t141);
    if (t142 > 0)
        goto LAB48;

LAB49:    if (*((unsigned int *)t105) > 0)
        goto LAB50;

LAB51:    if (*((unsigned int *)t80) > 0)
        goto LAB52;

LAB53:    memcpy(t79, t143, 8);

LAB54:    goto LAB32;

LAB33:    xsi_vlog_unsigned_bit_combine(t41, 32, t74, 32, t79, 32);
    goto LAB37;

LAB35:    memcpy(t41, t74, 8);
    goto LAB37;

LAB40:    t97 = (t82 + 4);
    *((unsigned int *)t82) = 1;
    *((unsigned int *)t97) = 1;
    goto LAB41;

LAB42:    *((unsigned int *)t80) = 1;
    goto LAB45;

LAB44:    t104 = (t80 + 4);
    *((unsigned int *)t80) = 1;
    *((unsigned int *)t104) = 1;
    goto LAB45;

LAB46:    t109 = (t0 + 2488U);
    t110 = *((char **)t109);
    t109 = (t0 + 2648U);
    t111 = *((char **)t109);
    t113 = *((unsigned int *)t110);
    t114 = *((unsigned int *)t111);
    t115 = (t113 | t114);
    *((unsigned int *)t112) = t115;
    t109 = (t110 + 4);
    t116 = (t111 + 4);
    t117 = (t112 + 4);
    t118 = *((unsigned int *)t109);
    t119 = *((unsigned int *)t116);
    t120 = (t118 | t119);
    *((unsigned int *)t117) = t120;
    t121 = *((unsigned int *)t117);
    t122 = (t121 != 0);
    if (t122 == 1)
        goto LAB55;

LAB56:
LAB57:    goto LAB47;

LAB48:    t145 = (t0 + 1848U);
    t146 = *((char **)t145);
    t145 = ((char*)((ng5)));
    memset(t147, 0, 8);
    t148 = (t146 + 4);
    t149 = (t145 + 4);
    t150 = *((unsigned int *)t146);
    t151 = *((unsigned int *)t145);
    t152 = (t150 ^ t151);
    t153 = *((unsigned int *)t148);
    t154 = *((unsigned int *)t149);
    t155 = (t153 ^ t154);
    t156 = (t152 | t155);
    t157 = *((unsigned int *)t148);
    t158 = *((unsigned int *)t149);
    t159 = (t157 | t158);
    t160 = (~(t159));
    t161 = (t156 & t160);
    if (t161 != 0)
        goto LAB61;

LAB58:    if (t159 != 0)
        goto LAB60;

LAB59:    *((unsigned int *)t147) = 1;

LAB61:    memset(t144, 0, 8);
    t163 = (t147 + 4);
    t164 = *((unsigned int *)t163);
    t165 = (~(t164));
    t166 = *((unsigned int *)t147);
    t167 = (t166 & t165);
    t168 = (t167 & 1U);
    if (t168 != 0)
        goto LAB62;

LAB63:    if (*((unsigned int *)t163) != 0)
        goto LAB64;

LAB65:    t170 = (t144 + 4);
    t171 = *((unsigned int *)t144);
    t172 = *((unsigned int *)t170);
    t173 = (t171 || t172);
    if (t173 > 0)
        goto LAB66;

LAB67:    t186 = *((unsigned int *)t144);
    t187 = (~(t186));
    t188 = *((unsigned int *)t170);
    t189 = (t187 || t188);
    if (t189 > 0)
        goto LAB68;

LAB69:    if (*((unsigned int *)t170) > 0)
        goto LAB70;

LAB71:    if (*((unsigned int *)t144) > 0)
        goto LAB72;

LAB73:    memcpy(t143, t190, 8);

LAB74:    goto LAB49;

LAB50:    xsi_vlog_unsigned_bit_combine(t79, 32, t112, 32, t143, 32);
    goto LAB54;

LAB52:    memcpy(t79, t112, 8);
    goto LAB54;

LAB55:    t123 = *((unsigned int *)t112);
    t124 = *((unsigned int *)t117);
    *((unsigned int *)t112) = (t123 | t124);
    t125 = (t110 + 4);
    t126 = (t111 + 4);
    t127 = *((unsigned int *)t125);
    t128 = (~(t127));
    t129 = *((unsigned int *)t110);
    t130 = (t129 & t128);
    t131 = *((unsigned int *)t126);
    t132 = (~(t131));
    t133 = *((unsigned int *)t111);
    t134 = (t133 & t132);
    t135 = (~(t130));
    t136 = (~(t134));
    t137 = *((unsigned int *)t117);
    *((unsigned int *)t117) = (t137 & t135);
    t138 = *((unsigned int *)t117);
    *((unsigned int *)t117) = (t138 & t136);
    goto LAB57;

LAB60:    t162 = (t147 + 4);
    *((unsigned int *)t147) = 1;
    *((unsigned int *)t162) = 1;
    goto LAB61;

LAB62:    *((unsigned int *)t144) = 1;
    goto LAB65;

LAB64:    t169 = (t144 + 4);
    *((unsigned int *)t144) = 1;
    *((unsigned int *)t169) = 1;
    goto LAB65;

LAB66:    t174 = (t0 + 2488U);
    t175 = *((char **)t174);
    t174 = (t0 + 2648U);
    t177 = *((char **)t174);
    memset(t176, 0, 8);
    t174 = (t176 + 4);
    t178 = (t177 + 4);
    t179 = *((unsigned int *)t177);
    t180 = (t179 >> 6);
    *((unsigned int *)t176) = t180;
    t181 = *((unsigned int *)t178);
    t182 = (t181 >> 6);
    *((unsigned int *)t174) = t182;
    t183 = *((unsigned int *)t176);
    *((unsigned int *)t176) = (t183 & 31U);
    t184 = *((unsigned int *)t174);
    *((unsigned int *)t174) = (t184 & 31U);
    memset(t185, 0, 8);
    xsi_vlog_unsigned_lshift(t185, 32, t175, 32, t176, 5);
    goto LAB67;

LAB68:    t192 = (t0 + 1848U);
    t193 = *((char **)t192);
    t192 = ((char*)((ng6)));
    memset(t194, 0, 8);
    t195 = (t193 + 4);
    t196 = (t192 + 4);
    t197 = *((unsigned int *)t193);
    t198 = *((unsigned int *)t192);
    t199 = (t197 ^ t198);
    t200 = *((unsigned int *)t195);
    t201 = *((unsigned int *)t196);
    t202 = (t200 ^ t201);
    t203 = (t199 | t202);
    t204 = *((unsigned int *)t195);
    t205 = *((unsigned int *)t196);
    t206 = (t204 | t205);
    t207 = (~(t206));
    t208 = (t203 & t207);
    if (t208 != 0)
        goto LAB78;

LAB75:    if (t206 != 0)
        goto LAB77;

LAB76:    *((unsigned int *)t194) = 1;

LAB78:    memset(t191, 0, 8);
    t210 = (t194 + 4);
    t211 = *((unsigned int *)t210);
    t212 = (~(t211));
    t213 = *((unsigned int *)t194);
    t214 = (t213 & t212);
    t215 = (t214 & 1U);
    if (t215 != 0)
        goto LAB79;

LAB80:    if (*((unsigned int *)t210) != 0)
        goto LAB81;

LAB82:    t217 = (t191 + 4);
    t218 = *((unsigned int *)t191);
    t219 = *((unsigned int *)t217);
    t220 = (t218 || t219);
    if (t220 > 0)
        goto LAB83;

LAB84:    t223 = *((unsigned int *)t191);
    t224 = (~(t223));
    t225 = *((unsigned int *)t217);
    t226 = (t224 || t225);
    if (t226 > 0)
        goto LAB85;

LAB86:    if (*((unsigned int *)t217) > 0)
        goto LAB87;

LAB88:    if (*((unsigned int *)t191) > 0)
        goto LAB89;

LAB90:    memcpy(t190, t227, 8);

LAB91:    goto LAB69;

LAB70:    xsi_vlog_unsigned_bit_combine(t143, 32, t185, 32, t190, 32);
    goto LAB74;

LAB72:    memcpy(t143, t185, 8);
    goto LAB74;

LAB77:    t209 = (t194 + 4);
    *((unsigned int *)t194) = 1;
    *((unsigned int *)t209) = 1;
    goto LAB78;

LAB79:    *((unsigned int *)t191) = 1;
    goto LAB82;

LAB81:    t216 = (t191 + 4);
    *((unsigned int *)t191) = 1;
    *((unsigned int *)t216) = 1;
    goto LAB82;

LAB83:    t221 = (t0 + 2808U);
    t222 = *((char **)t221);
    goto LAB84;

LAB85:    t221 = (t0 + 1848U);
    t229 = *((char **)t221);
    t221 = ((char*)((ng7)));
    memset(t230, 0, 8);
    t231 = (t229 + 4);
    t232 = (t221 + 4);
    t233 = *((unsigned int *)t229);
    t234 = *((unsigned int *)t221);
    t235 = (t233 ^ t234);
    t236 = *((unsigned int *)t231);
    t237 = *((unsigned int *)t232);
    t238 = (t236 ^ t237);
    t239 = (t235 | t238);
    t240 = *((unsigned int *)t231);
    t241 = *((unsigned int *)t232);
    t242 = (t240 | t241);
    t243 = (~(t242));
    t244 = (t239 & t243);
    if (t244 != 0)
        goto LAB95;

LAB92:    if (t242 != 0)
        goto LAB94;

LAB93:    *((unsigned int *)t230) = 1;

LAB95:    memset(t228, 0, 8);
    t246 = (t230 + 4);
    t247 = *((unsigned int *)t246);
    t248 = (~(t247));
    t249 = *((unsigned int *)t230);
    t250 = (t249 & t248);
    t251 = (t250 & 1U);
    if (t251 != 0)
        goto LAB96;

LAB97:    if (*((unsigned int *)t246) != 0)
        goto LAB98;

LAB99:    t253 = (t228 + 4);
    t254 = *((unsigned int *)t228);
    t255 = *((unsigned int *)t253);
    t256 = (t254 || t255);
    if (t256 > 0)
        goto LAB100;

LAB101:    t259 = *((unsigned int *)t228);
    t260 = (~(t259));
    t261 = *((unsigned int *)t253);
    t262 = (t260 || t261);
    if (t262 > 0)
        goto LAB102;

LAB103:    if (*((unsigned int *)t253) > 0)
        goto LAB104;

LAB105:    if (*((unsigned int *)t228) > 0)
        goto LAB106;

LAB107:    memcpy(t227, t257, 8);

LAB108:    goto LAB86;

LAB87:    xsi_vlog_unsigned_bit_combine(t190, 32, t222, 32, t227, 32);
    goto LAB91;

LAB89:    memcpy(t190, t222, 8);
    goto LAB91;

LAB94:    t245 = (t230 + 4);
    *((unsigned int *)t230) = 1;
    *((unsigned int *)t245) = 1;
    goto LAB95;

LAB96:    *((unsigned int *)t228) = 1;
    goto LAB99;

LAB98:    t252 = (t228 + 4);
    *((unsigned int *)t228) = 1;
    *((unsigned int *)t252) = 1;
    goto LAB99;

LAB100:    t257 = (t0 + 2968U);
    t258 = *((char **)t257);
    goto LAB101;

LAB102:    t257 = ((char*)((ng8)));
    goto LAB103;

LAB104:    xsi_vlog_unsigned_bit_combine(t227, 32, t258, 32, t257, 32);
    goto LAB108;

LAB106:    memcpy(t227, t258, 8);
    goto LAB108;

}


extern void work_m_00000000002781681071_0886308060_init()
{
	static char *pe[] = {(void *)Cont_33_0,(void *)Cont_35_1,(void *)Cont_37_2,(void *)Cont_38_3,(void *)Cont_39_4,(void *)Cont_40_5,(void *)Cont_41_6};
	xsi_register_didat("work_m_00000000002781681071_0886308060", "isim/mips_tb_isim_beh.exe.sim/work/m_00000000002781681071_0886308060.didat");
	xsi_register_executes(pe);
}

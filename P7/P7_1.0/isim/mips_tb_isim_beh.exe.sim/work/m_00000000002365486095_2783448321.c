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
static const char *ng0 = "C:/Users/lenovo/Desktop/study/ComputerOrganization/ISE/P7/P7_1.0/M_pipereg.v";
static unsigned int ng1[] = {0U, 0U};
static unsigned int ng2[] = {12292U, 0U};
static unsigned int ng3[] = {12296U, 0U};
static int ng4[] = {0, 0};



static void Initial_47_0(char *t0)
{
    char *t1;
    char *t2;

LAB0:    xsi_set_current_line(47, ng0);

LAB2:    xsi_set_current_line(48, ng0);
    t1 = ((char*)((ng1)));
    t2 = (t0 + 3688);
    xsi_vlogvar_assign_value(t2, t1, 0, 0, 32);
    xsi_set_current_line(49, ng0);
    t1 = ((char*)((ng2)));
    t2 = (t0 + 3848);
    xsi_vlogvar_assign_value(t2, t1, 0, 0, 32);
    xsi_set_current_line(50, ng0);
    t1 = ((char*)((ng3)));
    t2 = (t0 + 4008);
    xsi_vlogvar_assign_value(t2, t1, 0, 0, 32);
    xsi_set_current_line(51, ng0);
    t1 = ((char*)((ng1)));
    t2 = (t0 + 4168);
    xsi_vlogvar_assign_value(t2, t1, 0, 0, 32);
    xsi_set_current_line(52, ng0);
    t1 = ((char*)((ng1)));
    t2 = (t0 + 4328);
    xsi_vlogvar_assign_value(t2, t1, 0, 0, 32);
    xsi_set_current_line(53, ng0);
    t1 = ((char*)((ng1)));
    t2 = (t0 + 4488);
    xsi_vlogvar_assign_value(t2, t1, 0, 0, 32);
    xsi_set_current_line(54, ng0);
    t1 = ((char*)((ng4)));
    t2 = (t0 + 4648);
    xsi_vlogvar_assign_value(t2, t1, 0, 0, 1);
    xsi_set_current_line(55, ng0);
    t1 = ((char*)((ng4)));
    t2 = (t0 + 4968);
    xsi_vlogvar_assign_value(t2, t1, 0, 0, 5);
    xsi_set_current_line(56, ng0);
    t1 = ((char*)((ng4)));
    t2 = (t0 + 4808);
    xsi_vlogvar_assign_value(t2, t1, 0, 0, 1);

LAB1:    return;
}

static void Always_58_1(char *t0)
{
    char t7[8];
    char t42[8];
    char t43[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
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
    char *t20;
    char *t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    int t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    int t29;
    unsigned int t30;
    unsigned int t31;
    unsigned int t32;
    unsigned int t33;
    char *t34;
    unsigned int t35;
    unsigned int t36;
    unsigned int t37;
    unsigned int t38;
    unsigned int t39;
    char *t40;
    char *t41;

LAB0:    t1 = (t0 + 6136U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(58, ng0);
    t2 = (t0 + 6456);
    *((int *)t2) = 1;
    t3 = (t0 + 6168);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(58, ng0);

LAB5:    xsi_set_current_line(59, ng0);
    t4 = (t0 + 2488U);
    t5 = *((char **)t4);
    t4 = (t0 + 2648U);
    t6 = *((char **)t4);
    t8 = *((unsigned int *)t5);
    t9 = *((unsigned int *)t6);
    t10 = (t8 | t9);
    *((unsigned int *)t7) = t10;
    t4 = (t5 + 4);
    t11 = (t6 + 4);
    t12 = (t7 + 4);
    t13 = *((unsigned int *)t4);
    t14 = *((unsigned int *)t11);
    t15 = (t13 | t14);
    *((unsigned int *)t12) = t15;
    t16 = *((unsigned int *)t12);
    t17 = (t16 != 0);
    if (t17 == 1)
        goto LAB6;

LAB7:
LAB8:    t34 = (t7 + 4);
    t35 = *((unsigned int *)t34);
    t36 = (~(t35));
    t37 = *((unsigned int *)t7);
    t38 = (t37 & t36);
    t39 = (t38 != 0);
    if (t39 > 0)
        goto LAB9;

LAB10:    xsi_set_current_line(70, ng0);

LAB13:    xsi_set_current_line(71, ng0);
    t2 = (t0 + 1048U);
    t3 = *((char **)t2);
    t2 = (t0 + 3688);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 32, 0LL);
    xsi_set_current_line(72, ng0);
    t2 = (t0 + 1688U);
    t3 = *((char **)t2);
    t2 = (t0 + 3848);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 32, 0LL);
    xsi_set_current_line(73, ng0);
    t2 = (t0 + 1848U);
    t3 = *((char **)t2);
    t2 = (t0 + 4008);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 32, 0LL);
    xsi_set_current_line(74, ng0);
    t2 = (t0 + 1528U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng4)));
    memset(t43, 0, 8);
    t4 = (t3 + 4);
    t5 = (t2 + 4);
    t8 = *((unsigned int *)t3);
    t9 = *((unsigned int *)t2);
    t10 = (t8 ^ t9);
    t13 = *((unsigned int *)t4);
    t14 = *((unsigned int *)t5);
    t15 = (t13 ^ t14);
    t16 = (t10 | t15);
    t17 = *((unsigned int *)t4);
    t18 = *((unsigned int *)t5);
    t19 = (t17 | t18);
    t22 = (~(t19));
    t23 = (t16 & t22);
    if (t23 != 0)
        goto LAB17;

LAB14:    if (t19 != 0)
        goto LAB16;

LAB15:    *((unsigned int *)t43) = 1;

LAB17:    memset(t42, 0, 8);
    t11 = (t43 + 4);
    t24 = *((unsigned int *)t11);
    t26 = (~(t24));
    t27 = *((unsigned int *)t43);
    t28 = (t27 & t26);
    t30 = (t28 & 1U);
    if (t30 != 0)
        goto LAB18;

LAB19:    if (*((unsigned int *)t11) != 0)
        goto LAB20;

LAB21:    t20 = (t42 + 4);
    t31 = *((unsigned int *)t42);
    t32 = *((unsigned int *)t20);
    t33 = (t31 || t32);
    if (t33 > 0)
        goto LAB22;

LAB23:    t35 = *((unsigned int *)t42);
    t36 = (~(t35));
    t37 = *((unsigned int *)t20);
    t38 = (t36 || t37);
    if (t38 > 0)
        goto LAB24;

LAB25:    if (*((unsigned int *)t20) > 0)
        goto LAB26;

LAB27:    if (*((unsigned int *)t42) > 0)
        goto LAB28;

LAB29:    memcpy(t7, t40, 8);

LAB30:    t21 = (t0 + 4168);
    xsi_vlogvar_wait_assign_value(t21, t7, 0, 0, 32, 0LL);
    xsi_set_current_line(75, ng0);
    t2 = (t0 + 2008U);
    t3 = *((char **)t2);
    t2 = (t0 + 4328);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 32, 0LL);
    xsi_set_current_line(76, ng0);
    t2 = (t0 + 2168U);
    t3 = *((char **)t2);
    t2 = (t0 + 4488);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 32, 0LL);
    xsi_set_current_line(77, ng0);
    t2 = (t0 + 2808U);
    t3 = *((char **)t2);
    t2 = (t0 + 4648);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 1, 0LL);
    xsi_set_current_line(78, ng0);
    t2 = (t0 + 3128U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng4)));
    memset(t43, 0, 8);
    t4 = (t3 + 4);
    t5 = (t2 + 4);
    t8 = *((unsigned int *)t3);
    t9 = *((unsigned int *)t2);
    t10 = (t8 ^ t9);
    t13 = *((unsigned int *)t4);
    t14 = *((unsigned int *)t5);
    t15 = (t13 ^ t14);
    t16 = (t10 | t15);
    t17 = *((unsigned int *)t4);
    t18 = *((unsigned int *)t5);
    t19 = (t17 | t18);
    t22 = (~(t19));
    t23 = (t16 & t22);
    if (t23 != 0)
        goto LAB32;

LAB31:    if (t19 != 0)
        goto LAB33;

LAB34:    memset(t42, 0, 8);
    t11 = (t43 + 4);
    t24 = *((unsigned int *)t11);
    t26 = (~(t24));
    t27 = *((unsigned int *)t43);
    t28 = (t27 & t26);
    t30 = (t28 & 1U);
    if (t30 != 0)
        goto LAB35;

LAB36:    if (*((unsigned int *)t11) != 0)
        goto LAB37;

LAB38:    t20 = (t42 + 4);
    t31 = *((unsigned int *)t42);
    t32 = *((unsigned int *)t20);
    t33 = (t31 || t32);
    if (t33 > 0)
        goto LAB39;

LAB40:    t35 = *((unsigned int *)t42);
    t36 = (~(t35));
    t37 = *((unsigned int *)t20);
    t38 = (t36 || t37);
    if (t38 > 0)
        goto LAB41;

LAB42:    if (*((unsigned int *)t20) > 0)
        goto LAB43;

LAB44:    if (*((unsigned int *)t42) > 0)
        goto LAB45;

LAB46:    memcpy(t7, t40, 8);

LAB47:    t21 = (t0 + 4968);
    xsi_vlogvar_wait_assign_value(t21, t7, 0, 0, 5, 0LL);
    xsi_set_current_line(79, ng0);
    t2 = (t0 + 2968U);
    t3 = *((char **)t2);
    t2 = (t0 + 4808);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 1, 0LL);

LAB11:    goto LAB2;

LAB6:    t18 = *((unsigned int *)t7);
    t19 = *((unsigned int *)t12);
    *((unsigned int *)t7) = (t18 | t19);
    t20 = (t5 + 4);
    t21 = (t6 + 4);
    t22 = *((unsigned int *)t20);
    t23 = (~(t22));
    t24 = *((unsigned int *)t5);
    t25 = (t24 & t23);
    t26 = *((unsigned int *)t21);
    t27 = (~(t26));
    t28 = *((unsigned int *)t6);
    t29 = (t28 & t27);
    t30 = (~(t25));
    t31 = (~(t29));
    t32 = *((unsigned int *)t12);
    *((unsigned int *)t12) = (t32 & t30);
    t33 = *((unsigned int *)t12);
    *((unsigned int *)t12) = (t33 & t31);
    goto LAB8;

LAB9:    xsi_set_current_line(59, ng0);

LAB12:    xsi_set_current_line(60, ng0);
    t40 = ((char*)((ng1)));
    t41 = (t0 + 3688);
    xsi_vlogvar_wait_assign_value(t41, t40, 0, 0, 32, 0LL);
    xsi_set_current_line(61, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 3848);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 32, 0LL);
    xsi_set_current_line(62, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 4008);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 32, 0LL);
    xsi_set_current_line(63, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 4168);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 32, 0LL);
    xsi_set_current_line(64, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 4328);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 32, 0LL);
    xsi_set_current_line(65, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 4488);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 32, 0LL);
    xsi_set_current_line(66, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 4648);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(67, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 4968);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 5, 0LL);
    xsi_set_current_line(68, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 4808);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    goto LAB11;

LAB16:    t6 = (t43 + 4);
    *((unsigned int *)t43) = 1;
    *((unsigned int *)t6) = 1;
    goto LAB17;

LAB18:    *((unsigned int *)t42) = 1;
    goto LAB21;

LAB20:    t12 = (t42 + 4);
    *((unsigned int *)t42) = 1;
    *((unsigned int *)t12) = 1;
    goto LAB21;

LAB22:    t21 = (t0 + 1208U);
    t34 = *((char **)t21);
    goto LAB23;

LAB24:    t21 = (t0 + 1368U);
    t40 = *((char **)t21);
    goto LAB25;

LAB26:    xsi_vlog_unsigned_bit_combine(t7, 32, t34, 32, t40, 32);
    goto LAB30;

LAB28:    memcpy(t7, t34, 8);
    goto LAB30;

LAB32:    *((unsigned int *)t43) = 1;
    goto LAB34;

LAB33:    t6 = (t43 + 4);
    *((unsigned int *)t43) = 1;
    *((unsigned int *)t6) = 1;
    goto LAB34;

LAB35:    *((unsigned int *)t42) = 1;
    goto LAB38;

LAB37:    t12 = (t42 + 4);
    *((unsigned int *)t42) = 1;
    *((unsigned int *)t12) = 1;
    goto LAB38;

LAB39:    t21 = (t0 + 3128U);
    t34 = *((char **)t21);
    goto LAB40;

LAB41:    t21 = (t0 + 3288U);
    t40 = *((char **)t21);
    goto LAB42;

LAB43:    xsi_vlog_unsigned_bit_combine(t7, 5, t34, 5, t40, 5);
    goto LAB47;

LAB45:    memcpy(t7, t34, 8);
    goto LAB47;

}


extern void work_m_00000000002365486095_2783448321_init()
{
	static char *pe[] = {(void *)Initial_47_0,(void *)Always_58_1};
	xsi_register_didat("work_m_00000000002365486095_2783448321", "isim/mips_tb_isim_beh.exe.sim/work/m_00000000002365486095_2783448321.didat");
	xsi_register_executes(pe);
}

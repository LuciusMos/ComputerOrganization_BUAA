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
static const char *ng0 = "C:/Users/lenovo/Desktop/study/ComputerOrganization/ISE/P7/P7_1.0/D_pipereg.v";
static unsigned int ng1[] = {0U, 0U};
static unsigned int ng2[] = {12292U, 0U};
static unsigned int ng3[] = {12296U, 0U};
static int ng4[] = {0, 0};
static int ng5[] = {4, 0};
static int ng6[] = {8, 0};



static void Initial_38_0(char *t0)
{
    char *t1;
    char *t2;

LAB0:    xsi_set_current_line(38, ng0);

LAB2:    xsi_set_current_line(39, ng0);
    t1 = ((char*)((ng1)));
    t2 = (t0 + 2888);
    xsi_vlogvar_assign_value(t2, t1, 0, 0, 32);
    xsi_set_current_line(40, ng0);
    t1 = ((char*)((ng2)));
    t2 = (t0 + 3048);
    xsi_vlogvar_assign_value(t2, t1, 0, 0, 32);
    xsi_set_current_line(41, ng0);
    t1 = ((char*)((ng3)));
    t2 = (t0 + 3208);
    xsi_vlogvar_assign_value(t2, t1, 0, 0, 32);
    xsi_set_current_line(42, ng0);
    t1 = ((char*)((ng1)));
    t2 = (t0 + 3528);
    xsi_vlogvar_assign_value(t2, t1, 0, 0, 5);
    xsi_set_current_line(43, ng0);
    t1 = ((char*)((ng4)));
    t2 = (t0 + 3368);
    xsi_vlogvar_assign_value(t2, t1, 0, 0, 1);

LAB1:    return;
}

static void Always_45_1(char *t0)
{
    char t7[8];
    char t36[8];
    char t44[8];
    char t76[8];
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
    char *t35;
    char *t37;
    unsigned int t38;
    unsigned int t39;
    unsigned int t40;
    unsigned int t41;
    unsigned int t42;
    char *t43;
    unsigned int t45;
    unsigned int t46;
    unsigned int t47;
    char *t48;
    char *t49;
    char *t50;
    unsigned int t51;
    unsigned int t52;
    unsigned int t53;
    unsigned int t54;
    unsigned int t55;
    unsigned int t56;
    unsigned int t57;
    char *t58;
    char *t59;
    unsigned int t60;
    unsigned int t61;
    unsigned int t62;
    unsigned int t63;
    unsigned int t64;
    unsigned int t65;
    unsigned int t66;
    unsigned int t67;
    int t68;
    int t69;
    unsigned int t70;
    unsigned int t71;
    unsigned int t72;
    unsigned int t73;
    unsigned int t74;
    unsigned int t75;
    unsigned int t77;
    unsigned int t78;
    unsigned int t79;
    char *t80;
    char *t81;
    char *t82;
    unsigned int t83;
    unsigned int t84;
    unsigned int t85;
    unsigned int t86;
    unsigned int t87;
    unsigned int t88;
    unsigned int t89;
    char *t90;
    char *t91;
    unsigned int t92;
    unsigned int t93;
    unsigned int t94;
    int t95;
    unsigned int t96;
    unsigned int t97;
    unsigned int t98;
    int t99;
    unsigned int t100;
    unsigned int t101;
    unsigned int t102;
    unsigned int t103;
    char *t104;
    unsigned int t105;
    unsigned int t106;
    unsigned int t107;
    unsigned int t108;
    unsigned int t109;
    char *t110;
    char *t111;

LAB0:    t1 = (t0 + 4696U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(45, ng0);
    t2 = (t0 + 5016);
    *((int *)t2) = 1;
    t3 = (t0 + 4728);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(45, ng0);

LAB5:    xsi_set_current_line(46, ng0);
    t4 = (t0 + 1528U);
    t5 = *((char **)t4);
    t4 = (t0 + 1688U);
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
LAB8:    t34 = (t0 + 2488U);
    t35 = *((char **)t34);
    t34 = (t0 + 1848U);
    t37 = *((char **)t34);
    memset(t36, 0, 8);
    t34 = (t37 + 4);
    t38 = *((unsigned int *)t34);
    t39 = (~(t38));
    t40 = *((unsigned int *)t37);
    t41 = (t40 & t39);
    t42 = (t41 & 1U);
    if (t42 != 0)
        goto LAB12;

LAB10:    if (*((unsigned int *)t34) == 0)
        goto LAB9;

LAB11:    t43 = (t36 + 4);
    *((unsigned int *)t36) = 1;
    *((unsigned int *)t43) = 1;

LAB12:    t45 = *((unsigned int *)t35);
    t46 = *((unsigned int *)t36);
    t47 = (t45 & t46);
    *((unsigned int *)t44) = t47;
    t48 = (t35 + 4);
    t49 = (t36 + 4);
    t50 = (t44 + 4);
    t51 = *((unsigned int *)t48);
    t52 = *((unsigned int *)t49);
    t53 = (t51 | t52);
    *((unsigned int *)t50) = t53;
    t54 = *((unsigned int *)t50);
    t55 = (t54 != 0);
    if (t55 == 1)
        goto LAB13;

LAB14:
LAB15:    t77 = *((unsigned int *)t7);
    t78 = *((unsigned int *)t44);
    t79 = (t77 | t78);
    *((unsigned int *)t76) = t79;
    t80 = (t7 + 4);
    t81 = (t44 + 4);
    t82 = (t76 + 4);
    t83 = *((unsigned int *)t80);
    t84 = *((unsigned int *)t81);
    t85 = (t83 | t84);
    *((unsigned int *)t82) = t85;
    t86 = *((unsigned int *)t82);
    t87 = (t86 != 0);
    if (t87 == 1)
        goto LAB16;

LAB17:
LAB18:    t104 = (t76 + 4);
    t105 = *((unsigned int *)t104);
    t106 = (~(t105));
    t107 = *((unsigned int *)t76);
    t108 = (t107 & t106);
    t109 = (t108 != 0);
    if (t109 > 0)
        goto LAB19;

LAB20:    xsi_set_current_line(53, ng0);
    t2 = (t0 + 1848U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng4)));
    memset(t7, 0, 8);
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
        goto LAB26;

LAB23:    if (t19 != 0)
        goto LAB25;

LAB24:    *((unsigned int *)t7) = 1;

LAB26:    t11 = (t7 + 4);
    t24 = *((unsigned int *)t11);
    t26 = (~(t24));
    t27 = *((unsigned int *)t7);
    t28 = (t27 & t26);
    t30 = (t28 != 0);
    if (t30 > 0)
        goto LAB27;

LAB28:
LAB29:
LAB21:    goto LAB2;

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

LAB9:    *((unsigned int *)t36) = 1;
    goto LAB12;

LAB13:    t56 = *((unsigned int *)t44);
    t57 = *((unsigned int *)t50);
    *((unsigned int *)t44) = (t56 | t57);
    t58 = (t35 + 4);
    t59 = (t36 + 4);
    t60 = *((unsigned int *)t35);
    t61 = (~(t60));
    t62 = *((unsigned int *)t58);
    t63 = (~(t62));
    t64 = *((unsigned int *)t36);
    t65 = (~(t64));
    t66 = *((unsigned int *)t59);
    t67 = (~(t66));
    t68 = (t61 & t63);
    t69 = (t65 & t67);
    t70 = (~(t68));
    t71 = (~(t69));
    t72 = *((unsigned int *)t50);
    *((unsigned int *)t50) = (t72 & t70);
    t73 = *((unsigned int *)t50);
    *((unsigned int *)t50) = (t73 & t71);
    t74 = *((unsigned int *)t44);
    *((unsigned int *)t44) = (t74 & t70);
    t75 = *((unsigned int *)t44);
    *((unsigned int *)t44) = (t75 & t71);
    goto LAB15;

LAB16:    t88 = *((unsigned int *)t76);
    t89 = *((unsigned int *)t82);
    *((unsigned int *)t76) = (t88 | t89);
    t90 = (t7 + 4);
    t91 = (t44 + 4);
    t92 = *((unsigned int *)t90);
    t93 = (~(t92));
    t94 = *((unsigned int *)t7);
    t95 = (t94 & t93);
    t96 = *((unsigned int *)t91);
    t97 = (~(t96));
    t98 = *((unsigned int *)t44);
    t99 = (t98 & t97);
    t100 = (~(t95));
    t101 = (~(t99));
    t102 = *((unsigned int *)t82);
    *((unsigned int *)t82) = (t102 & t100);
    t103 = *((unsigned int *)t82);
    *((unsigned int *)t82) = (t103 & t101);
    goto LAB18;

LAB19:    xsi_set_current_line(46, ng0);

LAB22:    xsi_set_current_line(47, ng0);
    t110 = ((char*)((ng1)));
    t111 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t111, t110, 0, 0, 32, 0LL);
    xsi_set_current_line(48, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 3048);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 32, 0LL);
    xsi_set_current_line(49, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 3208);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 32, 0LL);
    xsi_set_current_line(50, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 3528);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 5, 0LL);
    xsi_set_current_line(51, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 3368);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    goto LAB21;

LAB25:    t6 = (t7 + 4);
    *((unsigned int *)t7) = 1;
    *((unsigned int *)t6) = 1;
    goto LAB26;

LAB27:    xsi_set_current_line(53, ng0);

LAB30:    xsi_set_current_line(54, ng0);
    t12 = (t0 + 1048U);
    t20 = *((char **)t12);
    t12 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t12, t20, 0, 0, 32, 0LL);
    xsi_set_current_line(55, ng0);
    t2 = (t0 + 1208U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng5)));
    memset(t7, 0, 8);
    xsi_vlog_unsigned_add(t7, 32, t3, 32, t2, 32);
    t4 = (t0 + 3048);
    xsi_vlogvar_wait_assign_value(t4, t7, 0, 0, 32, 0LL);
    xsi_set_current_line(56, ng0);
    t2 = (t0 + 1208U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng6)));
    memset(t7, 0, 8);
    xsi_vlog_unsigned_add(t7, 32, t3, 32, t2, 32);
    t4 = (t0 + 3208);
    xsi_vlogvar_wait_assign_value(t4, t7, 0, 0, 32, 0LL);
    xsi_set_current_line(57, ng0);
    t2 = (t0 + 2168U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng4)));
    memset(t44, 0, 8);
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

LAB34:    memset(t36, 0, 8);
    t11 = (t44 + 4);
    t24 = *((unsigned int *)t11);
    t26 = (~(t24));
    t27 = *((unsigned int *)t44);
    t28 = (t27 & t26);
    t30 = (t28 & 1U);
    if (t30 != 0)
        goto LAB35;

LAB36:    if (*((unsigned int *)t11) != 0)
        goto LAB37;

LAB38:    t20 = (t36 + 4);
    t31 = *((unsigned int *)t36);
    t32 = *((unsigned int *)t20);
    t33 = (t31 || t32);
    if (t33 > 0)
        goto LAB39;

LAB40:    t38 = *((unsigned int *)t36);
    t39 = (~(t38));
    t40 = *((unsigned int *)t20);
    t41 = (t39 || t40);
    if (t41 > 0)
        goto LAB41;

LAB42:    if (*((unsigned int *)t20) > 0)
        goto LAB43;

LAB44:    if (*((unsigned int *)t36) > 0)
        goto LAB45;

LAB46:    memcpy(t7, t35, 8);

LAB47:    t21 = (t0 + 3528);
    xsi_vlogvar_wait_assign_value(t21, t7, 0, 0, 5, 0LL);
    xsi_set_current_line(58, ng0);
    t2 = (t0 + 2008U);
    t3 = *((char **)t2);
    t2 = (t0 + 3368);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 1, 0LL);
    goto LAB29;

LAB32:    *((unsigned int *)t44) = 1;
    goto LAB34;

LAB33:    t6 = (t44 + 4);
    *((unsigned int *)t44) = 1;
    *((unsigned int *)t6) = 1;
    goto LAB34;

LAB35:    *((unsigned int *)t36) = 1;
    goto LAB38;

LAB37:    t12 = (t36 + 4);
    *((unsigned int *)t36) = 1;
    *((unsigned int *)t12) = 1;
    goto LAB38;

LAB39:    t21 = (t0 + 2168U);
    t34 = *((char **)t21);
    goto LAB40;

LAB41:    t21 = (t0 + 2328U);
    t35 = *((char **)t21);
    goto LAB42;

LAB43:    xsi_vlog_unsigned_bit_combine(t7, 5, t34, 5, t35, 5);
    goto LAB47;

LAB45:    memcpy(t7, t34, 8);
    goto LAB47;

}


extern void work_m_00000000001060240129_0155958106_init()
{
	static char *pe[] = {(void *)Initial_38_0,(void *)Always_45_1};
	xsi_register_didat("work_m_00000000001060240129_0155958106", "isim/mips_tb_isim_beh.exe.sim/work/m_00000000001060240129_0155958106.didat");
	xsi_register_executes(pe);
}

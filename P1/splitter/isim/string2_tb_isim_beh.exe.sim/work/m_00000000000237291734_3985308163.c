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
static const char *ng0 = "C:/Users/lenovo/Desktop/Computer Organization/ISE/P1/splitter/string.v";
static unsigned int ng1[] = {1U, 0U};
static int ng2[] = {48, 0};
static int ng3[] = {57, 0};
static int ng4[] = {1, 0};
static unsigned int ng5[] = {2U, 0U};
static unsigned int ng6[] = {8U, 0U};
static int ng7[] = {42, 0};
static int ng8[] = {43, 0};



static void Cont_34_0(char *t0)
{
    char t6[8];
    char t22[8];
    char t37[8];
    char t40[8];
    char t54[8];
    char t58[8];
    char t66[8];
    char t98[8];
    char t106[8];
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
    char *t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    char *t29;
    char *t30;
    unsigned int t31;
    unsigned int t32;
    unsigned int t33;
    char *t34;
    char *t35;
    char *t36;
    char *t38;
    char *t39;
    char *t41;
    unsigned int t42;
    unsigned int t43;
    unsigned int t44;
    unsigned int t45;
    unsigned int t46;
    char *t47;
    char *t48;
    unsigned int t49;
    unsigned int t50;
    unsigned int t51;
    char *t52;
    char *t53;
    char *t55;
    char *t56;
    char *t57;
    char *t59;
    unsigned int t60;
    unsigned int t61;
    unsigned int t62;
    unsigned int t63;
    unsigned int t64;
    char *t65;
    unsigned int t67;
    unsigned int t68;
    unsigned int t69;
    char *t70;
    char *t71;
    char *t72;
    unsigned int t73;
    unsigned int t74;
    unsigned int t75;
    unsigned int t76;
    unsigned int t77;
    unsigned int t78;
    unsigned int t79;
    char *t80;
    char *t81;
    unsigned int t82;
    unsigned int t83;
    unsigned int t84;
    unsigned int t85;
    unsigned int t86;
    unsigned int t87;
    unsigned int t88;
    unsigned int t89;
    int t90;
    int t91;
    unsigned int t92;
    unsigned int t93;
    unsigned int t94;
    unsigned int t95;
    unsigned int t96;
    unsigned int t97;
    char *t99;
    unsigned int t100;
    unsigned int t101;
    unsigned int t102;
    unsigned int t103;
    unsigned int t104;
    char *t105;
    unsigned int t107;
    unsigned int t108;
    unsigned int t109;
    char *t110;
    char *t111;
    char *t112;
    unsigned int t113;
    unsigned int t114;
    unsigned int t115;
    unsigned int t116;
    unsigned int t117;
    unsigned int t118;
    unsigned int t119;
    char *t120;
    char *t121;
    unsigned int t122;
    unsigned int t123;
    unsigned int t124;
    unsigned int t125;
    unsigned int t126;
    unsigned int t127;
    unsigned int t128;
    unsigned int t129;
    int t130;
    int t131;
    unsigned int t132;
    unsigned int t133;
    unsigned int t134;
    unsigned int t135;
    unsigned int t136;
    unsigned int t137;
    char *t138;
    char *t139;
    char *t140;
    char *t141;
    char *t142;
    unsigned int t143;
    unsigned int t144;
    char *t145;
    unsigned int t146;
    unsigned int t147;
    char *t148;
    unsigned int t149;
    unsigned int t150;
    char *t151;

LAB0:    t1 = (t0 + 3256U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(34, ng0);
    t2 = (t0 + 2336);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng1)));
    memset(t6, 0, 8);
    t7 = (t4 + 4);
    t8 = (t5 + 4);
    t9 = *((unsigned int *)t4);
    t10 = *((unsigned int *)t5);
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

LAB7:    memset(t22, 0, 8);
    t23 = (t6 + 4);
    t24 = *((unsigned int *)t23);
    t25 = (~(t24));
    t26 = *((unsigned int *)t6);
    t27 = (t26 & t25);
    t28 = (t27 & 1U);
    if (t28 != 0)
        goto LAB8;

LAB9:    if (*((unsigned int *)t23) != 0)
        goto LAB10;

LAB11:    t30 = (t22 + 4);
    t31 = *((unsigned int *)t22);
    t32 = *((unsigned int *)t30);
    t33 = (t31 || t32);
    if (t33 > 0)
        goto LAB12;

LAB13:    memcpy(t106, t22, 8);

LAB14:    t138 = (t0 + 3920);
    t139 = (t138 + 56U);
    t140 = *((char **)t139);
    t141 = (t140 + 56U);
    t142 = *((char **)t141);
    memset(t142, 0, 8);
    t143 = 1U;
    t144 = t143;
    t145 = (t106 + 4);
    t146 = *((unsigned int *)t106);
    t143 = (t143 & t146);
    t147 = *((unsigned int *)t145);
    t144 = (t144 & t147);
    t148 = (t142 + 4);
    t149 = *((unsigned int *)t142);
    *((unsigned int *)t142) = (t149 | t143);
    t150 = *((unsigned int *)t148);
    *((unsigned int *)t148) = (t150 | t144);
    xsi_driver_vfirst_trans(t138, 0, 0);
    t151 = (t0 + 3824);
    *((int *)t151) = 1;

LAB1:    return;
LAB6:    t21 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB7;

LAB8:    *((unsigned int *)t22) = 1;
    goto LAB11;

LAB10:    t29 = (t22 + 4);
    *((unsigned int *)t22) = 1;
    *((unsigned int *)t29) = 1;
    goto LAB11;

LAB12:    t34 = ((char*)((ng2)));
    t35 = (t0 + 1776U);
    t36 = *((char **)t35);
    memset(t37, 0, 8);
    t35 = (t34 + 4);
    if (*((unsigned int *)t35) != 0)
        goto LAB16;

LAB15:    t38 = (t36 + 4);
    if (*((unsigned int *)t38) != 0)
        goto LAB16;

LAB19:    if (*((unsigned int *)t34) > *((unsigned int *)t36))
        goto LAB18;

LAB17:    *((unsigned int *)t37) = 1;

LAB18:    memset(t40, 0, 8);
    t41 = (t37 + 4);
    t42 = *((unsigned int *)t41);
    t43 = (~(t42));
    t44 = *((unsigned int *)t37);
    t45 = (t44 & t43);
    t46 = (t45 & 1U);
    if (t46 != 0)
        goto LAB20;

LAB21:    if (*((unsigned int *)t41) != 0)
        goto LAB22;

LAB23:    t48 = (t40 + 4);
    t49 = *((unsigned int *)t40);
    t50 = *((unsigned int *)t48);
    t51 = (t49 || t50);
    if (t51 > 0)
        goto LAB24;

LAB25:    memcpy(t66, t40, 8);

LAB26:    memset(t98, 0, 8);
    t99 = (t66 + 4);
    t100 = *((unsigned int *)t99);
    t101 = (~(t100));
    t102 = *((unsigned int *)t66);
    t103 = (t102 & t101);
    t104 = (t103 & 1U);
    if (t104 != 0)
        goto LAB39;

LAB40:    if (*((unsigned int *)t99) != 0)
        goto LAB41;

LAB42:    t107 = *((unsigned int *)t22);
    t108 = *((unsigned int *)t98);
    t109 = (t107 & t108);
    *((unsigned int *)t106) = t109;
    t110 = (t22 + 4);
    t111 = (t98 + 4);
    t112 = (t106 + 4);
    t113 = *((unsigned int *)t110);
    t114 = *((unsigned int *)t111);
    t115 = (t113 | t114);
    *((unsigned int *)t112) = t115;
    t116 = *((unsigned int *)t112);
    t117 = (t116 != 0);
    if (t117 == 1)
        goto LAB43;

LAB44:
LAB45:    goto LAB14;

LAB16:    t39 = (t37 + 4);
    *((unsigned int *)t37) = 1;
    *((unsigned int *)t39) = 1;
    goto LAB18;

LAB20:    *((unsigned int *)t40) = 1;
    goto LAB23;

LAB22:    t47 = (t40 + 4);
    *((unsigned int *)t40) = 1;
    *((unsigned int *)t47) = 1;
    goto LAB23;

LAB24:    t52 = (t0 + 1776U);
    t53 = *((char **)t52);
    t52 = ((char*)((ng3)));
    memset(t54, 0, 8);
    t55 = (t53 + 4);
    if (*((unsigned int *)t55) != 0)
        goto LAB28;

LAB27:    t56 = (t52 + 4);
    if (*((unsigned int *)t56) != 0)
        goto LAB28;

LAB31:    if (*((unsigned int *)t53) > *((unsigned int *)t52))
        goto LAB30;

LAB29:    *((unsigned int *)t54) = 1;

LAB30:    memset(t58, 0, 8);
    t59 = (t54 + 4);
    t60 = *((unsigned int *)t59);
    t61 = (~(t60));
    t62 = *((unsigned int *)t54);
    t63 = (t62 & t61);
    t64 = (t63 & 1U);
    if (t64 != 0)
        goto LAB32;

LAB33:    if (*((unsigned int *)t59) != 0)
        goto LAB34;

LAB35:    t67 = *((unsigned int *)t40);
    t68 = *((unsigned int *)t58);
    t69 = (t67 & t68);
    *((unsigned int *)t66) = t69;
    t70 = (t40 + 4);
    t71 = (t58 + 4);
    t72 = (t66 + 4);
    t73 = *((unsigned int *)t70);
    t74 = *((unsigned int *)t71);
    t75 = (t73 | t74);
    *((unsigned int *)t72) = t75;
    t76 = *((unsigned int *)t72);
    t77 = (t76 != 0);
    if (t77 == 1)
        goto LAB36;

LAB37:
LAB38:    goto LAB26;

LAB28:    t57 = (t54 + 4);
    *((unsigned int *)t54) = 1;
    *((unsigned int *)t57) = 1;
    goto LAB30;

LAB32:    *((unsigned int *)t58) = 1;
    goto LAB35;

LAB34:    t65 = (t58 + 4);
    *((unsigned int *)t58) = 1;
    *((unsigned int *)t65) = 1;
    goto LAB35;

LAB36:    t78 = *((unsigned int *)t66);
    t79 = *((unsigned int *)t72);
    *((unsigned int *)t66) = (t78 | t79);
    t80 = (t40 + 4);
    t81 = (t58 + 4);
    t82 = *((unsigned int *)t40);
    t83 = (~(t82));
    t84 = *((unsigned int *)t80);
    t85 = (~(t84));
    t86 = *((unsigned int *)t58);
    t87 = (~(t86));
    t88 = *((unsigned int *)t81);
    t89 = (~(t88));
    t90 = (t83 & t85);
    t91 = (t87 & t89);
    t92 = (~(t90));
    t93 = (~(t91));
    t94 = *((unsigned int *)t72);
    *((unsigned int *)t72) = (t94 & t92);
    t95 = *((unsigned int *)t72);
    *((unsigned int *)t72) = (t95 & t93);
    t96 = *((unsigned int *)t66);
    *((unsigned int *)t66) = (t96 & t92);
    t97 = *((unsigned int *)t66);
    *((unsigned int *)t66) = (t97 & t93);
    goto LAB38;

LAB39:    *((unsigned int *)t98) = 1;
    goto LAB42;

LAB41:    t105 = (t98 + 4);
    *((unsigned int *)t98) = 1;
    *((unsigned int *)t105) = 1;
    goto LAB42;

LAB43:    t118 = *((unsigned int *)t106);
    t119 = *((unsigned int *)t112);
    *((unsigned int *)t106) = (t118 | t119);
    t120 = (t22 + 4);
    t121 = (t98 + 4);
    t122 = *((unsigned int *)t22);
    t123 = (~(t122));
    t124 = *((unsigned int *)t120);
    t125 = (~(t124));
    t126 = *((unsigned int *)t98);
    t127 = (~(t126));
    t128 = *((unsigned int *)t121);
    t129 = (~(t128));
    t130 = (t123 & t125);
    t131 = (t127 & t129);
    t132 = (~(t130));
    t133 = (~(t131));
    t134 = *((unsigned int *)t112);
    *((unsigned int *)t112) = (t134 & t132);
    t135 = *((unsigned int *)t112);
    *((unsigned int *)t112) = (t135 & t133);
    t136 = *((unsigned int *)t106);
    *((unsigned int *)t106) = (t136 & t132);
    t137 = *((unsigned int *)t106);
    *((unsigned int *)t106) = (t137 & t133);
    goto LAB45;

}

static void Always_38_1(char *t0)
{
    char t6[8];
    char t31[8];
    char t32[8];
    char t33[8];
    char t38[8];
    char t42[8];
    char t45[8];
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
    char *t34;
    char *t35;
    char *t36;
    char *t37;
    char *t39;
    char *t40;
    char *t41;
    char *t43;
    char *t44;
    char *t46;
    char *t47;
    char *t48;
    unsigned int t49;
    unsigned int t50;
    unsigned int t51;
    unsigned int t52;
    unsigned int t53;
    unsigned int t54;
    char *t55;
    char *t56;
    unsigned int t57;
    unsigned int t58;
    unsigned int t59;
    unsigned int t60;
    unsigned int t61;
    unsigned int t62;
    unsigned int t63;
    unsigned int t64;
    int t65;
    int t66;
    unsigned int t67;
    unsigned int t68;
    unsigned int t69;
    unsigned int t70;
    unsigned int t71;
    unsigned int t72;
    char *t73;
    unsigned int t74;
    unsigned int t75;
    unsigned int t76;
    unsigned int t77;
    unsigned int t78;
    char *t79;
    char *t80;
    unsigned int t81;
    unsigned int t82;
    unsigned int t83;
    char *t84;
    unsigned int t85;
    unsigned int t86;
    unsigned int t87;
    unsigned int t88;
    char *t89;
    char *t90;
    unsigned int t91;
    unsigned int t92;
    unsigned int t93;
    unsigned int t94;
    unsigned int t95;
    unsigned int t96;
    unsigned int t97;
    unsigned int t98;
    unsigned int t99;
    unsigned int t100;
    unsigned int t101;
    unsigned int t102;
    unsigned int t103;
    unsigned int t104;
    unsigned int t105;
    unsigned int t106;
    unsigned int t107;
    unsigned int t108;
    unsigned int t109;
    unsigned int t110;
    unsigned int t111;

LAB0:    t1 = (t0 + 3504U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(38, ng0);
    t2 = (t0 + 3840);
    *((int *)t2) = 1;
    t3 = (t0 + 3536);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(38, ng0);

LAB5:    xsi_set_current_line(39, ng0);
    t4 = (t0 + 1616U);
    t5 = *((char **)t4);
    t4 = ((char*)((ng4)));
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

LAB11:    xsi_set_current_line(40, ng0);

LAB13:    xsi_set_current_line(41, ng0);
    t2 = (t0 + 2336);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);

LAB14:    t5 = ((char*)((ng1)));
    t30 = xsi_vlog_unsigned_case_compare(t4, 4, t5, 4);
    if (t30 == 1)
        goto LAB15;

LAB16:    t2 = ((char*)((ng5)));
    t30 = xsi_vlog_unsigned_case_compare(t4, 4, t2, 4);
    if (t30 == 1)
        goto LAB17;

LAB18:    t2 = ((char*)((ng6)));
    t30 = xsi_vlog_unsigned_case_compare(t4, 4, t2, 4);
    if (t30 == 1)
        goto LAB19;

LAB20:
LAB22:
LAB21:    xsi_set_current_line(46, ng0);
    t2 = ((char*)((ng6)));
    t3 = (t0 + 2336);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 4, 0LL);

LAB23:
LAB12:    goto LAB2;

LAB8:    t21 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB9;

LAB10:    xsi_set_current_line(39, ng0);
    t28 = ((char*)((ng1)));
    t29 = (t0 + 2336);
    xsi_vlogvar_assign_value(t29, t28, 0, 0, 4);
    goto LAB12;

LAB15:    xsi_set_current_line(42, ng0);
    t7 = ((char*)((ng2)));
    t8 = (t0 + 1776U);
    t21 = *((char **)t8);
    memset(t32, 0, 8);
    t8 = (t7 + 4);
    if (*((unsigned int *)t8) != 0)
        goto LAB25;

LAB24:    t22 = (t21 + 4);
    if (*((unsigned int *)t22) != 0)
        goto LAB25;

LAB28:    if (*((unsigned int *)t7) > *((unsigned int *)t21))
        goto LAB27;

LAB26:    *((unsigned int *)t32) = 1;

LAB27:    memset(t33, 0, 8);
    t29 = (t32 + 4);
    t9 = *((unsigned int *)t29);
    t10 = (~(t9));
    t11 = *((unsigned int *)t32);
    t12 = (t11 & t10);
    t13 = (t12 & 1U);
    if (t13 != 0)
        goto LAB29;

LAB30:    if (*((unsigned int *)t29) != 0)
        goto LAB31;

LAB32:    t35 = (t33 + 4);
    t14 = *((unsigned int *)t33);
    t15 = *((unsigned int *)t35);
    t16 = (t14 || t15);
    if (t16 > 0)
        goto LAB33;

LAB34:    memcpy(t45, t33, 8);

LAB35:    memset(t31, 0, 8);
    t73 = (t45 + 4);
    t74 = *((unsigned int *)t73);
    t75 = (~(t74));
    t76 = *((unsigned int *)t45);
    t77 = (t76 & t75);
    t78 = (t77 & 1U);
    if (t78 != 0)
        goto LAB48;

LAB49:    if (*((unsigned int *)t73) != 0)
        goto LAB50;

LAB51:    t80 = (t31 + 4);
    t81 = *((unsigned int *)t31);
    t82 = *((unsigned int *)t80);
    t83 = (t81 || t82);
    if (t83 > 0)
        goto LAB52;

LAB53:    t85 = *((unsigned int *)t31);
    t86 = (~(t85));
    t87 = *((unsigned int *)t80);
    t88 = (t86 || t87);
    if (t88 > 0)
        goto LAB54;

LAB55:    if (*((unsigned int *)t80) > 0)
        goto LAB56;

LAB57:    if (*((unsigned int *)t31) > 0)
        goto LAB58;

LAB59:    memcpy(t6, t89, 8);

LAB60:    t90 = (t0 + 2336);
    xsi_vlogvar_wait_assign_value(t90, t6, 0, 0, 4, 0LL);
    goto LAB23;

LAB17:    xsi_set_current_line(43, ng0);
    t3 = (t0 + 1776U);
    t5 = *((char **)t3);
    t3 = ((char*)((ng7)));
    memset(t32, 0, 8);
    t7 = (t5 + 4);
    t8 = (t3 + 4);
    t9 = *((unsigned int *)t5);
    t10 = *((unsigned int *)t3);
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
        goto LAB64;

LAB61:    if (t18 != 0)
        goto LAB63;

LAB62:    *((unsigned int *)t32) = 1;

LAB64:    memset(t33, 0, 8);
    t22 = (t32 + 4);
    t23 = *((unsigned int *)t22);
    t24 = (~(t23));
    t25 = *((unsigned int *)t32);
    t26 = (t25 & t24);
    t27 = (t26 & 1U);
    if (t27 != 0)
        goto LAB65;

LAB66:    if (*((unsigned int *)t22) != 0)
        goto LAB67;

LAB68:    t29 = (t33 + 4);
    t49 = *((unsigned int *)t33);
    t50 = (!(t49));
    t51 = *((unsigned int *)t29);
    t52 = (t50 || t51);
    if (t52 > 0)
        goto LAB69;

LAB70:    memcpy(t45, t33, 8);

LAB71:    memset(t31, 0, 8);
    t55 = (t45 + 4);
    t100 = *((unsigned int *)t55);
    t101 = (~(t100));
    t102 = *((unsigned int *)t45);
    t103 = (t102 & t101);
    t104 = (t103 & 1U);
    if (t104 != 0)
        goto LAB83;

LAB84:    if (*((unsigned int *)t55) != 0)
        goto LAB85;

LAB86:    t73 = (t31 + 4);
    t105 = *((unsigned int *)t31);
    t106 = *((unsigned int *)t73);
    t107 = (t105 || t106);
    if (t107 > 0)
        goto LAB87;

LAB88:    t108 = *((unsigned int *)t31);
    t109 = (~(t108));
    t110 = *((unsigned int *)t73);
    t111 = (t109 || t110);
    if (t111 > 0)
        goto LAB89;

LAB90:    if (*((unsigned int *)t73) > 0)
        goto LAB91;

LAB92:    if (*((unsigned int *)t31) > 0)
        goto LAB93;

LAB94:    memcpy(t6, t80, 8);

LAB95:    t84 = (t0 + 2336);
    xsi_vlogvar_wait_assign_value(t84, t6, 0, 0, 4, 0LL);
    goto LAB23;

LAB19:    xsi_set_current_line(45, ng0);
    t3 = ((char*)((ng6)));
    t5 = (t0 + 2336);
    xsi_vlogvar_wait_assign_value(t5, t3, 0, 0, 4, 0LL);
    goto LAB23;

LAB25:    t28 = (t32 + 4);
    *((unsigned int *)t32) = 1;
    *((unsigned int *)t28) = 1;
    goto LAB27;

LAB29:    *((unsigned int *)t33) = 1;
    goto LAB32;

LAB31:    t34 = (t33 + 4);
    *((unsigned int *)t33) = 1;
    *((unsigned int *)t34) = 1;
    goto LAB32;

LAB33:    t36 = (t0 + 1776U);
    t37 = *((char **)t36);
    t36 = ((char*)((ng3)));
    memset(t38, 0, 8);
    t39 = (t37 + 4);
    if (*((unsigned int *)t39) != 0)
        goto LAB37;

LAB36:    t40 = (t36 + 4);
    if (*((unsigned int *)t40) != 0)
        goto LAB37;

LAB40:    if (*((unsigned int *)t37) > *((unsigned int *)t36))
        goto LAB39;

LAB38:    *((unsigned int *)t38) = 1;

LAB39:    memset(t42, 0, 8);
    t43 = (t38 + 4);
    t17 = *((unsigned int *)t43);
    t18 = (~(t17));
    t19 = *((unsigned int *)t38);
    t20 = (t19 & t18);
    t23 = (t20 & 1U);
    if (t23 != 0)
        goto LAB41;

LAB42:    if (*((unsigned int *)t43) != 0)
        goto LAB43;

LAB44:    t24 = *((unsigned int *)t33);
    t25 = *((unsigned int *)t42);
    t26 = (t24 & t25);
    *((unsigned int *)t45) = t26;
    t46 = (t33 + 4);
    t47 = (t42 + 4);
    t48 = (t45 + 4);
    t27 = *((unsigned int *)t46);
    t49 = *((unsigned int *)t47);
    t50 = (t27 | t49);
    *((unsigned int *)t48) = t50;
    t51 = *((unsigned int *)t48);
    t52 = (t51 != 0);
    if (t52 == 1)
        goto LAB45;

LAB46:
LAB47:    goto LAB35;

LAB37:    t41 = (t38 + 4);
    *((unsigned int *)t38) = 1;
    *((unsigned int *)t41) = 1;
    goto LAB39;

LAB41:    *((unsigned int *)t42) = 1;
    goto LAB44;

LAB43:    t44 = (t42 + 4);
    *((unsigned int *)t42) = 1;
    *((unsigned int *)t44) = 1;
    goto LAB44;

LAB45:    t53 = *((unsigned int *)t45);
    t54 = *((unsigned int *)t48);
    *((unsigned int *)t45) = (t53 | t54);
    t55 = (t33 + 4);
    t56 = (t42 + 4);
    t57 = *((unsigned int *)t33);
    t58 = (~(t57));
    t59 = *((unsigned int *)t55);
    t60 = (~(t59));
    t61 = *((unsigned int *)t42);
    t62 = (~(t61));
    t63 = *((unsigned int *)t56);
    t64 = (~(t63));
    t65 = (t58 & t60);
    t66 = (t62 & t64);
    t67 = (~(t65));
    t68 = (~(t66));
    t69 = *((unsigned int *)t48);
    *((unsigned int *)t48) = (t69 & t67);
    t70 = *((unsigned int *)t48);
    *((unsigned int *)t48) = (t70 & t68);
    t71 = *((unsigned int *)t45);
    *((unsigned int *)t45) = (t71 & t67);
    t72 = *((unsigned int *)t45);
    *((unsigned int *)t45) = (t72 & t68);
    goto LAB47;

LAB48:    *((unsigned int *)t31) = 1;
    goto LAB51;

LAB50:    t79 = (t31 + 4);
    *((unsigned int *)t31) = 1;
    *((unsigned int *)t79) = 1;
    goto LAB51;

LAB52:    t84 = ((char*)((ng5)));
    goto LAB53;

LAB54:    t89 = ((char*)((ng6)));
    goto LAB55;

LAB56:    xsi_vlog_unsigned_bit_combine(t6, 4, t84, 4, t89, 4);
    goto LAB60;

LAB58:    memcpy(t6, t84, 8);
    goto LAB60;

LAB63:    t21 = (t32 + 4);
    *((unsigned int *)t32) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB64;

LAB65:    *((unsigned int *)t33) = 1;
    goto LAB68;

LAB67:    t28 = (t33 + 4);
    *((unsigned int *)t33) = 1;
    *((unsigned int *)t28) = 1;
    goto LAB68;

LAB69:    t34 = (t0 + 1776U);
    t35 = *((char **)t34);
    t34 = ((char*)((ng8)));
    memset(t38, 0, 8);
    t36 = (t35 + 4);
    t37 = (t34 + 4);
    t53 = *((unsigned int *)t35);
    t54 = *((unsigned int *)t34);
    t57 = (t53 ^ t54);
    t58 = *((unsigned int *)t36);
    t59 = *((unsigned int *)t37);
    t60 = (t58 ^ t59);
    t61 = (t57 | t60);
    t62 = *((unsigned int *)t36);
    t63 = *((unsigned int *)t37);
    t64 = (t62 | t63);
    t67 = (~(t64));
    t68 = (t61 & t67);
    if (t68 != 0)
        goto LAB75;

LAB72:    if (t64 != 0)
        goto LAB74;

LAB73:    *((unsigned int *)t38) = 1;

LAB75:    memset(t42, 0, 8);
    t40 = (t38 + 4);
    t69 = *((unsigned int *)t40);
    t70 = (~(t69));
    t71 = *((unsigned int *)t38);
    t72 = (t71 & t70);
    t74 = (t72 & 1U);
    if (t74 != 0)
        goto LAB76;

LAB77:    if (*((unsigned int *)t40) != 0)
        goto LAB78;

LAB79:    t75 = *((unsigned int *)t33);
    t76 = *((unsigned int *)t42);
    t77 = (t75 | t76);
    *((unsigned int *)t45) = t77;
    t43 = (t33 + 4);
    t44 = (t42 + 4);
    t46 = (t45 + 4);
    t78 = *((unsigned int *)t43);
    t81 = *((unsigned int *)t44);
    t82 = (t78 | t81);
    *((unsigned int *)t46) = t82;
    t83 = *((unsigned int *)t46);
    t85 = (t83 != 0);
    if (t85 == 1)
        goto LAB80;

LAB81:
LAB82:    goto LAB71;

LAB74:    t39 = (t38 + 4);
    *((unsigned int *)t38) = 1;
    *((unsigned int *)t39) = 1;
    goto LAB75;

LAB76:    *((unsigned int *)t42) = 1;
    goto LAB79;

LAB78:    t41 = (t42 + 4);
    *((unsigned int *)t42) = 1;
    *((unsigned int *)t41) = 1;
    goto LAB79;

LAB80:    t86 = *((unsigned int *)t45);
    t87 = *((unsigned int *)t46);
    *((unsigned int *)t45) = (t86 | t87);
    t47 = (t33 + 4);
    t48 = (t42 + 4);
    t88 = *((unsigned int *)t47);
    t91 = (~(t88));
    t92 = *((unsigned int *)t33);
    t65 = (t92 & t91);
    t93 = *((unsigned int *)t48);
    t94 = (~(t93));
    t95 = *((unsigned int *)t42);
    t66 = (t95 & t94);
    t96 = (~(t65));
    t97 = (~(t66));
    t98 = *((unsigned int *)t46);
    *((unsigned int *)t46) = (t98 & t96);
    t99 = *((unsigned int *)t46);
    *((unsigned int *)t46) = (t99 & t97);
    goto LAB82;

LAB83:    *((unsigned int *)t31) = 1;
    goto LAB86;

LAB85:    t56 = (t31 + 4);
    *((unsigned int *)t31) = 1;
    *((unsigned int *)t56) = 1;
    goto LAB86;

LAB87:    t79 = ((char*)((ng1)));
    goto LAB88;

LAB89:    t80 = ((char*)((ng6)));
    goto LAB90;

LAB91:    xsi_vlog_unsigned_bit_combine(t6, 4, t79, 4, t80, 4);
    goto LAB95;

LAB93:    memcpy(t6, t79, 8);
    goto LAB95;

}


extern void work_m_00000000000237291734_3985308163_init()
{
	static char *pe[] = {(void *)Cont_34_0,(void *)Always_38_1};
	xsi_register_didat("work_m_00000000000237291734_3985308163", "isim/string2_tb_isim_beh.exe.sim/work/m_00000000000237291734_3985308163.didat");
	xsi_register_executes(pe);
}

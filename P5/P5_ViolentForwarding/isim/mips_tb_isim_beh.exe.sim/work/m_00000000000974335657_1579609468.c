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
static const char *ng0 = "C:/Users/lenovo/Desktop/study/Computer Organization/ISE/P5/P5_ViolentForwarding/CMP.v";
static unsigned int ng1[] = {0U, 0U};
static unsigned int ng2[] = {1U, 0U};
static int ng3[] = {0, 0};



static void Cont_27_0(char *t0)
{
    char t4[8];
    char t23[8];
    char t38[8];
    char t72[8];
    char t91[8];
    char t92[8];
    char t124[8];
    char *t1;
    char *t2;
    char *t3;
    char *t5;
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
    char *t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    unsigned int t29;
    unsigned int t30;
    unsigned int t31;
    unsigned int t32;
    unsigned int t33;
    unsigned int t34;
    unsigned int t35;
    unsigned int t36;
    char *t37;
    unsigned int t39;
    unsigned int t40;
    unsigned int t41;
    char *t42;
    char *t43;
    char *t44;
    unsigned int t45;
    unsigned int t46;
    unsigned int t47;
    unsigned int t48;
    unsigned int t49;
    unsigned int t50;
    unsigned int t51;
    char *t52;
    char *t53;
    unsigned int t54;
    unsigned int t55;
    unsigned int t56;
    unsigned int t57;
    unsigned int t58;
    unsigned int t59;
    unsigned int t60;
    unsigned int t61;
    int t62;
    int t63;
    unsigned int t64;
    unsigned int t65;
    unsigned int t66;
    unsigned int t67;
    unsigned int t68;
    unsigned int t69;
    char *t70;
    char *t71;
    char *t73;
    char *t74;
    unsigned int t75;
    unsigned int t76;
    unsigned int t77;
    unsigned int t78;
    unsigned int t79;
    unsigned int t80;
    unsigned int t81;
    unsigned int t82;
    unsigned int t83;
    unsigned int t84;
    unsigned int t85;
    unsigned int t86;
    char *t87;
    char *t89;
    char *t90;
    unsigned int t93;
    unsigned int t94;
    unsigned int t95;
    char *t96;
    char *t97;
    char *t98;
    unsigned int t99;
    unsigned int t100;
    unsigned int t101;
    unsigned int t102;
    unsigned int t103;
    unsigned int t104;
    unsigned int t105;
    char *t106;
    char *t107;
    unsigned int t108;
    unsigned int t109;
    unsigned int t110;
    unsigned int t111;
    unsigned int t112;
    unsigned int t113;
    unsigned int t114;
    unsigned int t115;
    int t116;
    int t117;
    unsigned int t118;
    unsigned int t119;
    unsigned int t120;
    unsigned int t121;
    unsigned int t122;
    unsigned int t123;
    unsigned int t125;
    unsigned int t126;
    unsigned int t127;
    char *t128;
    char *t129;
    char *t130;
    unsigned int t131;
    unsigned int t132;
    unsigned int t133;
    unsigned int t134;
    unsigned int t135;
    unsigned int t136;
    unsigned int t137;
    char *t138;
    char *t139;
    unsigned int t140;
    unsigned int t141;
    unsigned int t142;
    int t143;
    unsigned int t144;
    unsigned int t145;
    unsigned int t146;
    int t147;
    unsigned int t148;
    unsigned int t149;
    unsigned int t150;
    unsigned int t151;
    char *t152;
    char *t153;
    char *t154;
    char *t155;
    char *t156;
    unsigned int t157;
    unsigned int t158;
    char *t159;
    unsigned int t160;
    unsigned int t161;
    char *t162;
    unsigned int t163;
    unsigned int t164;
    char *t165;

LAB0:    t1 = (t0 + 2688U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(27, ng0);
    t2 = (t0 + 1368U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng1)));
    memset(t4, 0, 8);
    t5 = (t3 + 4);
    t6 = (t2 + 4);
    t7 = *((unsigned int *)t3);
    t8 = *((unsigned int *)t2);
    t9 = (t7 ^ t8);
    t10 = *((unsigned int *)t5);
    t11 = *((unsigned int *)t6);
    t12 = (t10 ^ t11);
    t13 = (t9 | t12);
    t14 = *((unsigned int *)t5);
    t15 = *((unsigned int *)t6);
    t16 = (t14 | t15);
    t17 = (~(t16));
    t18 = (t13 & t17);
    if (t18 != 0)
        goto LAB7;

LAB4:    if (t16 != 0)
        goto LAB6;

LAB5:    *((unsigned int *)t4) = 1;

LAB7:    t20 = (t0 + 1048U);
    t21 = *((char **)t20);
    t20 = (t0 + 1208U);
    t22 = *((char **)t20);
    memset(t23, 0, 8);
    t20 = (t21 + 4);
    t24 = (t22 + 4);
    t25 = *((unsigned int *)t21);
    t26 = *((unsigned int *)t22);
    t27 = (t25 ^ t26);
    t28 = *((unsigned int *)t20);
    t29 = *((unsigned int *)t24);
    t30 = (t28 ^ t29);
    t31 = (t27 | t30);
    t32 = *((unsigned int *)t20);
    t33 = *((unsigned int *)t24);
    t34 = (t32 | t33);
    t35 = (~(t34));
    t36 = (t31 & t35);
    if (t36 != 0)
        goto LAB11;

LAB8:    if (t34 != 0)
        goto LAB10;

LAB9:    *((unsigned int *)t23) = 1;

LAB11:    t39 = *((unsigned int *)t4);
    t40 = *((unsigned int *)t23);
    t41 = (t39 & t40);
    *((unsigned int *)t38) = t41;
    t42 = (t4 + 4);
    t43 = (t23 + 4);
    t44 = (t38 + 4);
    t45 = *((unsigned int *)t42);
    t46 = *((unsigned int *)t43);
    t47 = (t45 | t46);
    *((unsigned int *)t44) = t47;
    t48 = *((unsigned int *)t44);
    t49 = (t48 != 0);
    if (t49 == 1)
        goto LAB12;

LAB13:
LAB14:    t70 = (t0 + 1368U);
    t71 = *((char **)t70);
    t70 = ((char*)((ng2)));
    memset(t72, 0, 8);
    t73 = (t71 + 4);
    t74 = (t70 + 4);
    t75 = *((unsigned int *)t71);
    t76 = *((unsigned int *)t70);
    t77 = (t75 ^ t76);
    t78 = *((unsigned int *)t73);
    t79 = *((unsigned int *)t74);
    t80 = (t78 ^ t79);
    t81 = (t77 | t80);
    t82 = *((unsigned int *)t73);
    t83 = *((unsigned int *)t74);
    t84 = (t82 | t83);
    t85 = (~(t84));
    t86 = (t81 & t85);
    if (t86 != 0)
        goto LAB18;

LAB15:    if (t84 != 0)
        goto LAB17;

LAB16:    *((unsigned int *)t72) = 1;

LAB18:    t89 = (t0 + 1048U);
    t90 = *((char **)t89);
    t89 = ((char*)((ng3)));
    memset(t91, 0, 8);
    xsi_vlog_signed_greatereq(t91, 32, t90, 32, t89, 32);
    t93 = *((unsigned int *)t72);
    t94 = *((unsigned int *)t91);
    t95 = (t93 & t94);
    *((unsigned int *)t92) = t95;
    t96 = (t72 + 4);
    t97 = (t91 + 4);
    t98 = (t92 + 4);
    t99 = *((unsigned int *)t96);
    t100 = *((unsigned int *)t97);
    t101 = (t99 | t100);
    *((unsigned int *)t98) = t101;
    t102 = *((unsigned int *)t98);
    t103 = (t102 != 0);
    if (t103 == 1)
        goto LAB19;

LAB20:
LAB21:    t125 = *((unsigned int *)t38);
    t126 = *((unsigned int *)t92);
    t127 = (t125 | t126);
    *((unsigned int *)t124) = t127;
    t128 = (t38 + 4);
    t129 = (t92 + 4);
    t130 = (t124 + 4);
    t131 = *((unsigned int *)t128);
    t132 = *((unsigned int *)t129);
    t133 = (t131 | t132);
    *((unsigned int *)t130) = t133;
    t134 = *((unsigned int *)t130);
    t135 = (t134 != 0);
    if (t135 == 1)
        goto LAB22;

LAB23:
LAB24:    t152 = (t0 + 3088);
    t153 = (t152 + 56U);
    t154 = *((char **)t153);
    t155 = (t154 + 56U);
    t156 = *((char **)t155);
    memset(t156, 0, 8);
    t157 = 1U;
    t158 = t157;
    t159 = (t124 + 4);
    t160 = *((unsigned int *)t124);
    t157 = (t157 & t160);
    t161 = *((unsigned int *)t159);
    t158 = (t158 & t161);
    t162 = (t156 + 4);
    t163 = *((unsigned int *)t156);
    *((unsigned int *)t156) = (t163 | t157);
    t164 = *((unsigned int *)t162);
    *((unsigned int *)t162) = (t164 | t158);
    xsi_driver_vfirst_trans(t152, 0, 0);
    t165 = (t0 + 3008);
    *((int *)t165) = 1;

LAB1:    return;
LAB6:    t19 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t19) = 1;
    goto LAB7;

LAB10:    t37 = (t23 + 4);
    *((unsigned int *)t23) = 1;
    *((unsigned int *)t37) = 1;
    goto LAB11;

LAB12:    t50 = *((unsigned int *)t38);
    t51 = *((unsigned int *)t44);
    *((unsigned int *)t38) = (t50 | t51);
    t52 = (t4 + 4);
    t53 = (t23 + 4);
    t54 = *((unsigned int *)t4);
    t55 = (~(t54));
    t56 = *((unsigned int *)t52);
    t57 = (~(t56));
    t58 = *((unsigned int *)t23);
    t59 = (~(t58));
    t60 = *((unsigned int *)t53);
    t61 = (~(t60));
    t62 = (t55 & t57);
    t63 = (t59 & t61);
    t64 = (~(t62));
    t65 = (~(t63));
    t66 = *((unsigned int *)t44);
    *((unsigned int *)t44) = (t66 & t64);
    t67 = *((unsigned int *)t44);
    *((unsigned int *)t44) = (t67 & t65);
    t68 = *((unsigned int *)t38);
    *((unsigned int *)t38) = (t68 & t64);
    t69 = *((unsigned int *)t38);
    *((unsigned int *)t38) = (t69 & t65);
    goto LAB14;

LAB17:    t87 = (t72 + 4);
    *((unsigned int *)t72) = 1;
    *((unsigned int *)t87) = 1;
    goto LAB18;

LAB19:    t104 = *((unsigned int *)t92);
    t105 = *((unsigned int *)t98);
    *((unsigned int *)t92) = (t104 | t105);
    t106 = (t72 + 4);
    t107 = (t91 + 4);
    t108 = *((unsigned int *)t72);
    t109 = (~(t108));
    t110 = *((unsigned int *)t106);
    t111 = (~(t110));
    t112 = *((unsigned int *)t91);
    t113 = (~(t112));
    t114 = *((unsigned int *)t107);
    t115 = (~(t114));
    t116 = (t109 & t111);
    t117 = (t113 & t115);
    t118 = (~(t116));
    t119 = (~(t117));
    t120 = *((unsigned int *)t98);
    *((unsigned int *)t98) = (t120 & t118);
    t121 = *((unsigned int *)t98);
    *((unsigned int *)t98) = (t121 & t119);
    t122 = *((unsigned int *)t92);
    *((unsigned int *)t92) = (t122 & t118);
    t123 = *((unsigned int *)t92);
    *((unsigned int *)t92) = (t123 & t119);
    goto LAB21;

LAB22:    t136 = *((unsigned int *)t124);
    t137 = *((unsigned int *)t130);
    *((unsigned int *)t124) = (t136 | t137);
    t138 = (t38 + 4);
    t139 = (t92 + 4);
    t140 = *((unsigned int *)t138);
    t141 = (~(t140));
    t142 = *((unsigned int *)t38);
    t143 = (t142 & t141);
    t144 = *((unsigned int *)t139);
    t145 = (~(t144));
    t146 = *((unsigned int *)t92);
    t147 = (t146 & t145);
    t148 = (~(t143));
    t149 = (~(t147));
    t150 = *((unsigned int *)t130);
    *((unsigned int *)t130) = (t150 & t148);
    t151 = *((unsigned int *)t130);
    *((unsigned int *)t130) = (t151 & t149);
    goto LAB24;

}


extern void work_m_00000000000974335657_1579609468_init()
{
	static char *pe[] = {(void *)Cont_27_0};
	xsi_register_didat("work_m_00000000000974335657_1579609468", "isim/mips_tb_isim_beh.exe.sim/work/m_00000000000974335657_1579609468.didat");
	xsi_register_executes(pe);
}

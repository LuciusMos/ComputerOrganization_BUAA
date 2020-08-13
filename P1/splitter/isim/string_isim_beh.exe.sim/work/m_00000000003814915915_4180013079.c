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
static int ng2[] = {1, 0};
static int ng3[] = {0, 0};
static int ng4[] = {48, 0};
static int ng5[] = {57, 0};
static unsigned int ng6[] = {2U, 0U};
static unsigned int ng7[] = {8U, 0U};
static int ng8[] = {42, 0};
static int ng9[] = {43, 0};
static unsigned int ng10[] = {4U, 0U};



static void Cont_34_0(char *t0)
{
    char t3[8];
    char t4[8];
    char t8[8];
    char *t1;
    char *t2;
    char *t5;
    char *t6;
    char *t7;
    char *t9;
    char *t10;
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
    unsigned int t21;
    unsigned int t22;
    char *t23;
    char *t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    unsigned int t29;
    char *t30;
    char *t31;
    unsigned int t32;
    unsigned int t33;
    unsigned int t34;
    char *t35;
    unsigned int t36;
    unsigned int t37;
    unsigned int t38;
    unsigned int t39;
    char *t40;
    char *t41;
    char *t42;
    char *t43;
    char *t44;
    char *t45;
    unsigned int t46;
    unsigned int t47;
    char *t48;
    unsigned int t49;
    unsigned int t50;
    char *t51;
    unsigned int t52;
    unsigned int t53;
    char *t54;

LAB0:    t1 = (t0 + 3392U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(34, ng0);
    t2 = (t0 + 2472);
    t5 = (t2 + 56U);
    t6 = *((char **)t5);
    t7 = ((char*)((ng1)));
    memset(t8, 0, 8);
    t9 = (t6 + 4);
    t10 = (t7 + 4);
    t11 = *((unsigned int *)t6);
    t12 = *((unsigned int *)t7);
    t13 = (t11 ^ t12);
    t14 = *((unsigned int *)t9);
    t15 = *((unsigned int *)t10);
    t16 = (t14 ^ t15);
    t17 = (t13 | t16);
    t18 = *((unsigned int *)t9);
    t19 = *((unsigned int *)t10);
    t20 = (t18 | t19);
    t21 = (~(t20));
    t22 = (t17 & t21);
    if (t22 != 0)
        goto LAB7;

LAB4:    if (t20 != 0)
        goto LAB6;

LAB5:    *((unsigned int *)t8) = 1;

LAB7:    memset(t4, 0, 8);
    t24 = (t8 + 4);
    t25 = *((unsigned int *)t24);
    t26 = (~(t25));
    t27 = *((unsigned int *)t8);
    t28 = (t27 & t26);
    t29 = (t28 & 1U);
    if (t29 != 0)
        goto LAB8;

LAB9:    if (*((unsigned int *)t24) != 0)
        goto LAB10;

LAB11:    t31 = (t4 + 4);
    t32 = *((unsigned int *)t4);
    t33 = *((unsigned int *)t31);
    t34 = (t32 || t33);
    if (t34 > 0)
        goto LAB12;

LAB13:    t36 = *((unsigned int *)t4);
    t37 = (~(t36));
    t38 = *((unsigned int *)t31);
    t39 = (t37 || t38);
    if (t39 > 0)
        goto LAB14;

LAB15:    if (*((unsigned int *)t31) > 0)
        goto LAB16;

LAB17:    if (*((unsigned int *)t4) > 0)
        goto LAB18;

LAB19:    memcpy(t3, t40, 8);

LAB20:    t41 = (t0 + 4056);
    t42 = (t41 + 56U);
    t43 = *((char **)t42);
    t44 = (t43 + 56U);
    t45 = *((char **)t44);
    memset(t45, 0, 8);
    t46 = 1U;
    t47 = t46;
    t48 = (t3 + 4);
    t49 = *((unsigned int *)t3);
    t46 = (t46 & t49);
    t50 = *((unsigned int *)t48);
    t47 = (t47 & t50);
    t51 = (t45 + 4);
    t52 = *((unsigned int *)t45);
    *((unsigned int *)t45) = (t52 | t46);
    t53 = *((unsigned int *)t51);
    *((unsigned int *)t51) = (t53 | t47);
    xsi_driver_vfirst_trans(t41, 0, 0);
    t54 = (t0 + 3960);
    *((int *)t54) = 1;

LAB1:    return;
LAB6:    t23 = (t8 + 4);
    *((unsigned int *)t8) = 1;
    *((unsigned int *)t23) = 1;
    goto LAB7;

LAB8:    *((unsigned int *)t4) = 1;
    goto LAB11;

LAB10:    t30 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t30) = 1;
    goto LAB11;

LAB12:    t35 = ((char*)((ng2)));
    goto LAB13;

LAB14:    t40 = ((char*)((ng3)));
    goto LAB15;

LAB16:    xsi_vlog_unsigned_bit_combine(t3, 32, t35, 32, t40, 32);
    goto LAB20;

LAB18:    memcpy(t3, t35, 8);
    goto LAB20;

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

LAB0:    t1 = (t0 + 3640U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(38, ng0);
    t2 = (t0 + 3976);
    *((int *)t2) = 1;
    t3 = (t0 + 3672);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(38, ng0);

LAB5:    xsi_set_current_line(39, ng0);
    t4 = (t0 + 1752U);
    t5 = *((char **)t4);
    t4 = ((char*)((ng2)));
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
    t2 = (t0 + 2472);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);

LAB14:    t5 = ((char*)((ng1)));
    t30 = xsi_vlog_unsigned_case_compare(t4, 4, t5, 4);
    if (t30 == 1)
        goto LAB15;

LAB16:    t2 = ((char*)((ng6)));
    t30 = xsi_vlog_unsigned_case_compare(t4, 4, t2, 4);
    if (t30 == 1)
        goto LAB17;

LAB18:    t2 = ((char*)((ng10)));
    t30 = xsi_vlog_unsigned_case_compare(t4, 4, t2, 4);
    if (t30 == 1)
        goto LAB19;

LAB20:    t2 = ((char*)((ng7)));
    t30 = xsi_vlog_unsigned_case_compare(t4, 4, t2, 4);
    if (t30 == 1)
        goto LAB21;

LAB22:
LAB24:
LAB23:    xsi_set_current_line(46, ng0);
    t2 = ((char*)((ng7)));
    t3 = (t0 + 2472);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 4, 0LL);

LAB25:
LAB12:    goto LAB2;

LAB8:    t21 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB9;

LAB10:    xsi_set_current_line(39, ng0);
    t28 = ((char*)((ng1)));
    t29 = (t0 + 2472);
    xsi_vlogvar_assign_value(t29, t28, 0, 0, 4);
    goto LAB12;

LAB15:    xsi_set_current_line(42, ng0);
    t7 = ((char*)((ng4)));
    t8 = (t0 + 1912U);
    t21 = *((char **)t8);
    memset(t32, 0, 8);
    t8 = (t7 + 4);
    if (*((unsigned int *)t8) != 0)
        goto LAB27;

LAB26:    t22 = (t21 + 4);
    if (*((unsigned int *)t22) != 0)
        goto LAB27;

LAB30:    if (*((unsigned int *)t7) > *((unsigned int *)t21))
        goto LAB29;

LAB28:    *((unsigned int *)t32) = 1;

LAB29:    memset(t33, 0, 8);
    t29 = (t32 + 4);
    t9 = *((unsigned int *)t29);
    t10 = (~(t9));
    t11 = *((unsigned int *)t32);
    t12 = (t11 & t10);
    t13 = (t12 & 1U);
    if (t13 != 0)
        goto LAB31;

LAB32:    if (*((unsigned int *)t29) != 0)
        goto LAB33;

LAB34:    t35 = (t33 + 4);
    t14 = *((unsigned int *)t33);
    t15 = *((unsigned int *)t35);
    t16 = (t14 || t15);
    if (t16 > 0)
        goto LAB35;

LAB36:    memcpy(t45, t33, 8);

LAB37:    memset(t31, 0, 8);
    t73 = (t45 + 4);
    t74 = *((unsigned int *)t73);
    t75 = (~(t74));
    t76 = *((unsigned int *)t45);
    t77 = (t76 & t75);
    t78 = (t77 & 1U);
    if (t78 != 0)
        goto LAB50;

LAB51:    if (*((unsigned int *)t73) != 0)
        goto LAB52;

LAB53:    t80 = (t31 + 4);
    t81 = *((unsigned int *)t31);
    t82 = *((unsigned int *)t80);
    t83 = (t81 || t82);
    if (t83 > 0)
        goto LAB54;

LAB55:    t85 = *((unsigned int *)t31);
    t86 = (~(t85));
    t87 = *((unsigned int *)t80);
    t88 = (t86 || t87);
    if (t88 > 0)
        goto LAB56;

LAB57:    if (*((unsigned int *)t80) > 0)
        goto LAB58;

LAB59:    if (*((unsigned int *)t31) > 0)
        goto LAB60;

LAB61:    memcpy(t6, t89, 8);

LAB62:    t90 = (t0 + 2472);
    xsi_vlogvar_wait_assign_value(t90, t6, 0, 0, 4, 0LL);
    goto LAB25;

LAB17:    xsi_set_current_line(43, ng0);
    t3 = (t0 + 1912U);
    t5 = *((char **)t3);
    t3 = ((char*)((ng8)));
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
        goto LAB66;

LAB63:    if (t18 != 0)
        goto LAB65;

LAB64:    *((unsigned int *)t32) = 1;

LAB66:    memset(t33, 0, 8);
    t22 = (t32 + 4);
    t23 = *((unsigned int *)t22);
    t24 = (~(t23));
    t25 = *((unsigned int *)t32);
    t26 = (t25 & t24);
    t27 = (t26 & 1U);
    if (t27 != 0)
        goto LAB67;

LAB68:    if (*((unsigned int *)t22) != 0)
        goto LAB69;

LAB70:    t29 = (t33 + 4);
    t49 = *((unsigned int *)t33);
    t50 = (!(t49));
    t51 = *((unsigned int *)t29);
    t52 = (t50 || t51);
    if (t52 > 0)
        goto LAB71;

LAB72:    memcpy(t45, t33, 8);

LAB73:    memset(t31, 0, 8);
    t55 = (t45 + 4);
    t100 = *((unsigned int *)t55);
    t101 = (~(t100));
    t102 = *((unsigned int *)t45);
    t103 = (t102 & t101);
    t104 = (t103 & 1U);
    if (t104 != 0)
        goto LAB85;

LAB86:    if (*((unsigned int *)t55) != 0)
        goto LAB87;

LAB88:    t73 = (t31 + 4);
    t105 = *((unsigned int *)t31);
    t106 = *((unsigned int *)t73);
    t107 = (t105 || t106);
    if (t107 > 0)
        goto LAB89;

LAB90:    t108 = *((unsigned int *)t31);
    t109 = (~(t108));
    t110 = *((unsigned int *)t73);
    t111 = (t109 || t110);
    if (t111 > 0)
        goto LAB91;

LAB92:    if (*((unsigned int *)t73) > 0)
        goto LAB93;

LAB94:    if (*((unsigned int *)t31) > 0)
        goto LAB95;

LAB96:    memcpy(t6, t80, 8);

LAB97:    t84 = (t0 + 2472);
    xsi_vlogvar_wait_assign_value(t84, t6, 0, 0, 4, 0LL);
    goto LAB25;

LAB19:    xsi_set_current_line(44, ng0);
    t3 = ((char*)((ng4)));
    t5 = (t0 + 1912U);
    t7 = *((char **)t5);
    memset(t32, 0, 8);
    t5 = (t3 + 4);
    if (*((unsigned int *)t5) != 0)
        goto LAB99;

LAB98:    t8 = (t7 + 4);
    if (*((unsigned int *)t8) != 0)
        goto LAB99;

LAB102:    if (*((unsigned int *)t3) > *((unsigned int *)t7))
        goto LAB101;

LAB100:    *((unsigned int *)t32) = 1;

LAB101:    memset(t33, 0, 8);
    t22 = (t32 + 4);
    t9 = *((unsigned int *)t22);
    t10 = (~(t9));
    t11 = *((unsigned int *)t32);
    t12 = (t11 & t10);
    t13 = (t12 & 1U);
    if (t13 != 0)
        goto LAB103;

LAB104:    if (*((unsigned int *)t22) != 0)
        goto LAB105;

LAB106:    t29 = (t33 + 4);
    t14 = *((unsigned int *)t33);
    t15 = *((unsigned int *)t29);
    t16 = (t14 || t15);
    if (t16 > 0)
        goto LAB107;

LAB108:    memcpy(t45, t33, 8);

LAB109:    memset(t31, 0, 8);
    t55 = (t45 + 4);
    t74 = *((unsigned int *)t55);
    t75 = (~(t74));
    t76 = *((unsigned int *)t45);
    t77 = (t76 & t75);
    t78 = (t77 & 1U);
    if (t78 != 0)
        goto LAB122;

LAB123:    if (*((unsigned int *)t55) != 0)
        goto LAB124;

LAB125:    t73 = (t31 + 4);
    t81 = *((unsigned int *)t31);
    t82 = *((unsigned int *)t73);
    t83 = (t81 || t82);
    if (t83 > 0)
        goto LAB126;

LAB127:    t85 = *((unsigned int *)t31);
    t86 = (~(t85));
    t87 = *((unsigned int *)t73);
    t88 = (t86 || t87);
    if (t88 > 0)
        goto LAB128;

LAB129:    if (*((unsigned int *)t73) > 0)
        goto LAB130;

LAB131:    if (*((unsigned int *)t31) > 0)
        goto LAB132;

LAB133:    memcpy(t6, t80, 8);

LAB134:    t84 = (t0 + 2472);
    xsi_vlogvar_wait_assign_value(t84, t6, 0, 0, 4, 0LL);
    goto LAB25;

LAB21:    xsi_set_current_line(45, ng0);
    t3 = ((char*)((ng7)));
    t5 = (t0 + 2472);
    xsi_vlogvar_wait_assign_value(t5, t3, 0, 0, 4, 0LL);
    goto LAB25;

LAB27:    t28 = (t32 + 4);
    *((unsigned int *)t32) = 1;
    *((unsigned int *)t28) = 1;
    goto LAB29;

LAB31:    *((unsigned int *)t33) = 1;
    goto LAB34;

LAB33:    t34 = (t33 + 4);
    *((unsigned int *)t33) = 1;
    *((unsigned int *)t34) = 1;
    goto LAB34;

LAB35:    t36 = (t0 + 1912U);
    t37 = *((char **)t36);
    t36 = ((char*)((ng5)));
    memset(t38, 0, 8);
    t39 = (t37 + 4);
    if (*((unsigned int *)t39) != 0)
        goto LAB39;

LAB38:    t40 = (t36 + 4);
    if (*((unsigned int *)t40) != 0)
        goto LAB39;

LAB42:    if (*((unsigned int *)t37) > *((unsigned int *)t36))
        goto LAB41;

LAB40:    *((unsigned int *)t38) = 1;

LAB41:    memset(t42, 0, 8);
    t43 = (t38 + 4);
    t17 = *((unsigned int *)t43);
    t18 = (~(t17));
    t19 = *((unsigned int *)t38);
    t20 = (t19 & t18);
    t23 = (t20 & 1U);
    if (t23 != 0)
        goto LAB43;

LAB44:    if (*((unsigned int *)t43) != 0)
        goto LAB45;

LAB46:    t24 = *((unsigned int *)t33);
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
        goto LAB47;

LAB48:
LAB49:    goto LAB37;

LAB39:    t41 = (t38 + 4);
    *((unsigned int *)t38) = 1;
    *((unsigned int *)t41) = 1;
    goto LAB41;

LAB43:    *((unsigned int *)t42) = 1;
    goto LAB46;

LAB45:    t44 = (t42 + 4);
    *((unsigned int *)t42) = 1;
    *((unsigned int *)t44) = 1;
    goto LAB46;

LAB47:    t53 = *((unsigned int *)t45);
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
    goto LAB49;

LAB50:    *((unsigned int *)t31) = 1;
    goto LAB53;

LAB52:    t79 = (t31 + 4);
    *((unsigned int *)t31) = 1;
    *((unsigned int *)t79) = 1;
    goto LAB53;

LAB54:    t84 = ((char*)((ng6)));
    goto LAB55;

LAB56:    t89 = ((char*)((ng7)));
    goto LAB57;

LAB58:    xsi_vlog_unsigned_bit_combine(t6, 4, t84, 4, t89, 4);
    goto LAB62;

LAB60:    memcpy(t6, t84, 8);
    goto LAB62;

LAB65:    t21 = (t32 + 4);
    *((unsigned int *)t32) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB66;

LAB67:    *((unsigned int *)t33) = 1;
    goto LAB70;

LAB69:    t28 = (t33 + 4);
    *((unsigned int *)t33) = 1;
    *((unsigned int *)t28) = 1;
    goto LAB70;

LAB71:    t34 = (t0 + 1912U);
    t35 = *((char **)t34);
    t34 = ((char*)((ng9)));
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
        goto LAB77;

LAB74:    if (t64 != 0)
        goto LAB76;

LAB75:    *((unsigned int *)t38) = 1;

LAB77:    memset(t42, 0, 8);
    t40 = (t38 + 4);
    t69 = *((unsigned int *)t40);
    t70 = (~(t69));
    t71 = *((unsigned int *)t38);
    t72 = (t71 & t70);
    t74 = (t72 & 1U);
    if (t74 != 0)
        goto LAB78;

LAB79:    if (*((unsigned int *)t40) != 0)
        goto LAB80;

LAB81:    t75 = *((unsigned int *)t33);
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
        goto LAB82;

LAB83:
LAB84:    goto LAB73;

LAB76:    t39 = (t38 + 4);
    *((unsigned int *)t38) = 1;
    *((unsigned int *)t39) = 1;
    goto LAB77;

LAB78:    *((unsigned int *)t42) = 1;
    goto LAB81;

LAB80:    t41 = (t42 + 4);
    *((unsigned int *)t42) = 1;
    *((unsigned int *)t41) = 1;
    goto LAB81;

LAB82:    t86 = *((unsigned int *)t45);
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
    goto LAB84;

LAB85:    *((unsigned int *)t31) = 1;
    goto LAB88;

LAB87:    t56 = (t31 + 4);
    *((unsigned int *)t31) = 1;
    *((unsigned int *)t56) = 1;
    goto LAB88;

LAB89:    t79 = ((char*)((ng10)));
    goto LAB90;

LAB91:    t80 = ((char*)((ng7)));
    goto LAB92;

LAB93:    xsi_vlog_unsigned_bit_combine(t6, 4, t79, 4, t80, 4);
    goto LAB97;

LAB95:    memcpy(t6, t79, 8);
    goto LAB97;

LAB99:    t21 = (t32 + 4);
    *((unsigned int *)t32) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB101;

LAB103:    *((unsigned int *)t33) = 1;
    goto LAB106;

LAB105:    t28 = (t33 + 4);
    *((unsigned int *)t33) = 1;
    *((unsigned int *)t28) = 1;
    goto LAB106;

LAB107:    t34 = (t0 + 1912U);
    t35 = *((char **)t34);
    t34 = ((char*)((ng5)));
    memset(t38, 0, 8);
    t36 = (t35 + 4);
    if (*((unsigned int *)t36) != 0)
        goto LAB111;

LAB110:    t37 = (t34 + 4);
    if (*((unsigned int *)t37) != 0)
        goto LAB111;

LAB114:    if (*((unsigned int *)t35) > *((unsigned int *)t34))
        goto LAB113;

LAB112:    *((unsigned int *)t38) = 1;

LAB113:    memset(t42, 0, 8);
    t40 = (t38 + 4);
    t17 = *((unsigned int *)t40);
    t18 = (~(t17));
    t19 = *((unsigned int *)t38);
    t20 = (t19 & t18);
    t23 = (t20 & 1U);
    if (t23 != 0)
        goto LAB115;

LAB116:    if (*((unsigned int *)t40) != 0)
        goto LAB117;

LAB118:    t24 = *((unsigned int *)t33);
    t25 = *((unsigned int *)t42);
    t26 = (t24 & t25);
    *((unsigned int *)t45) = t26;
    t43 = (t33 + 4);
    t44 = (t42 + 4);
    t46 = (t45 + 4);
    t27 = *((unsigned int *)t43);
    t49 = *((unsigned int *)t44);
    t50 = (t27 | t49);
    *((unsigned int *)t46) = t50;
    t51 = *((unsigned int *)t46);
    t52 = (t51 != 0);
    if (t52 == 1)
        goto LAB119;

LAB120:
LAB121:    goto LAB109;

LAB111:    t39 = (t38 + 4);
    *((unsigned int *)t38) = 1;
    *((unsigned int *)t39) = 1;
    goto LAB113;

LAB115:    *((unsigned int *)t42) = 1;
    goto LAB118;

LAB117:    t41 = (t42 + 4);
    *((unsigned int *)t42) = 1;
    *((unsigned int *)t41) = 1;
    goto LAB118;

LAB119:    t53 = *((unsigned int *)t45);
    t54 = *((unsigned int *)t46);
    *((unsigned int *)t45) = (t53 | t54);
    t47 = (t33 + 4);
    t48 = (t42 + 4);
    t57 = *((unsigned int *)t33);
    t58 = (~(t57));
    t59 = *((unsigned int *)t47);
    t60 = (~(t59));
    t61 = *((unsigned int *)t42);
    t62 = (~(t61));
    t63 = *((unsigned int *)t48);
    t64 = (~(t63));
    t65 = (t58 & t60);
    t66 = (t62 & t64);
    t67 = (~(t65));
    t68 = (~(t66));
    t69 = *((unsigned int *)t46);
    *((unsigned int *)t46) = (t69 & t67);
    t70 = *((unsigned int *)t46);
    *((unsigned int *)t46) = (t70 & t68);
    t71 = *((unsigned int *)t45);
    *((unsigned int *)t45) = (t71 & t67);
    t72 = *((unsigned int *)t45);
    *((unsigned int *)t45) = (t72 & t68);
    goto LAB121;

LAB122:    *((unsigned int *)t31) = 1;
    goto LAB125;

LAB124:    t56 = (t31 + 4);
    *((unsigned int *)t31) = 1;
    *((unsigned int *)t56) = 1;
    goto LAB125;

LAB126:    t79 = ((char*)((ng6)));
    goto LAB127;

LAB128:    t80 = ((char*)((ng7)));
    goto LAB129;

LAB130:    xsi_vlog_unsigned_bit_combine(t6, 4, t79, 4, t80, 4);
    goto LAB134;

LAB132:    memcpy(t6, t79, 8);
    goto LAB134;

}


extern void work_m_00000000003814915915_4180013079_init()
{
	static char *pe[] = {(void *)Cont_34_0,(void *)Always_38_1};
	xsi_register_didat("work_m_00000000003814915915_4180013079", "isim/string_isim_beh.exe.sim/work/m_00000000003814915915_4180013079.didat");
	xsi_register_executes(pe);
}

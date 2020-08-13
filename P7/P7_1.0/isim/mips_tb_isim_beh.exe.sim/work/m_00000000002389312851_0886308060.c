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
static const char *ng0 = "C:/Users/lenovo/Desktop/study/ComputerOrganization/ISE/P7/P7_1.0/ALU.v";
static unsigned int ng1[] = {1U, 0U};
static unsigned int ng2[] = {0U, 0U};
static unsigned int ng3[] = {2U, 0U};
static unsigned int ng4[] = {3U, 0U};
static unsigned int ng5[] = {4U, 0U};
static unsigned int ng6[] = {5U, 0U};
static unsigned int ng7[] = {9U, 0U};
static unsigned int ng8[] = {10U, 0U};
static unsigned int ng9[] = {11U, 0U};
static unsigned int ng10[] = {12U, 0U};
static unsigned int ng11[] = {13U, 0U};
static unsigned int ng12[] = {429458451U, 0U};



static void Cont_28_0(char *t0)
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

LAB0:    t1 = (t0 + 3008U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(28, ng0);
    t2 = (t0 + 1048U);
    t6 = *((char **)t2);
    t2 = (t0 + 1208U);
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

LAB16:    t26 = (t0 + 3936);
    t27 = (t26 + 56U);
    t28 = *((char **)t27);
    t29 = (t28 + 56U);
    t30 = *((char **)t29);
    memcpy(t30, t3, 8);
    xsi_driver_vfirst_trans(t26, 0, 31);
    t31 = (t0 + 3824);
    *((int *)t31) = 1;

LAB1:    return;
LAB4:    *((unsigned int *)t4) = 1;
    goto LAB7;

LAB6:    t15 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t15) = 1;
    goto LAB7;

LAB8:    t20 = ((char*)((ng1)));
    goto LAB9;

LAB10:    t25 = ((char*)((ng2)));
    goto LAB11;

LAB12:    xsi_vlog_unsigned_bit_combine(t3, 32, t20, 32, t25, 32);
    goto LAB16;

LAB14:    memcpy(t3, t20, 8);
    goto LAB16;

}

static void Cont_29_1(char *t0)
{
    char t3[8];
    char t4[8];
    char t7[8];
    char *t1;
    char *t2;
    char *t5;
    char *t6;
    char *t8;
    char *t9;
    char *t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    char *t16;
    char *t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    char *t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    char *t26;
    char *t27;
    char *t28;
    char *t29;
    char *t30;
    char *t31;
    char *t32;

LAB0:    t1 = (t0 + 3256U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(29, ng0);
    t2 = (t0 + 1048U);
    t5 = *((char **)t2);
    t2 = (t0 + 1208U);
    t6 = *((char **)t2);
    memset(t7, 0, 8);
    t2 = (t5 + 4);
    if (*((unsigned int *)t2) != 0)
        goto LAB5;

LAB4:    t8 = (t6 + 4);
    if (*((unsigned int *)t8) != 0)
        goto LAB5;

LAB8:    if (*((unsigned int *)t5) < *((unsigned int *)t6))
        goto LAB6;

LAB7:    memset(t4, 0, 8);
    t10 = (t7 + 4);
    t11 = *((unsigned int *)t10);
    t12 = (~(t11));
    t13 = *((unsigned int *)t7);
    t14 = (t13 & t12);
    t15 = (t14 & 1U);
    if (t15 != 0)
        goto LAB9;

LAB10:    if (*((unsigned int *)t10) != 0)
        goto LAB11;

LAB12:    t17 = (t4 + 4);
    t18 = *((unsigned int *)t4);
    t19 = *((unsigned int *)t17);
    t20 = (t18 || t19);
    if (t20 > 0)
        goto LAB13;

LAB14:    t22 = *((unsigned int *)t4);
    t23 = (~(t22));
    t24 = *((unsigned int *)t17);
    t25 = (t23 || t24);
    if (t25 > 0)
        goto LAB15;

LAB16:    if (*((unsigned int *)t17) > 0)
        goto LAB17;

LAB18:    if (*((unsigned int *)t4) > 0)
        goto LAB19;

LAB20:    memcpy(t3, t26, 8);

LAB21:    t27 = (t0 + 4000);
    t28 = (t27 + 56U);
    t29 = *((char **)t28);
    t30 = (t29 + 56U);
    t31 = *((char **)t30);
    memcpy(t31, t3, 8);
    xsi_driver_vfirst_trans(t27, 0, 31);
    t32 = (t0 + 3840);
    *((int *)t32) = 1;

LAB1:    return;
LAB5:    t9 = (t7 + 4);
    *((unsigned int *)t7) = 1;
    *((unsigned int *)t9) = 1;
    goto LAB7;

LAB6:    *((unsigned int *)t7) = 1;
    goto LAB7;

LAB9:    *((unsigned int *)t4) = 1;
    goto LAB12;

LAB11:    t16 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t16) = 1;
    goto LAB12;

LAB13:    t21 = ((char*)((ng1)));
    goto LAB14;

LAB15:    t26 = ((char*)((ng2)));
    goto LAB16;

LAB17:    xsi_vlog_unsigned_bit_combine(t3, 32, t21, 32, t26, 32);
    goto LAB21;

LAB19:    memcpy(t3, t21, 8);
    goto LAB21;

}

static void Cont_30_2(char *t0)
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
    char t223[8];
    char t232[8];
    char t237[8];
    char t238[8];
    char t241[8];
    char t273[8];
    char t282[8];
    char t287[8];
    char t288[8];
    char t291[8];
    char t321[8];
    char t356[8];
    char t357[8];
    char t360[8];
    char t390[8];
    char t407[8];
    char t408[8];
    char t411[8];
    char t438[8];
    char t442[8];
    char t483[8];
    char t484[8];
    char t487[8];
    char t520[8];
    char t521[8];
    char t523[8];
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
    char *t224;
    char *t225;
    unsigned int t226;
    unsigned int t227;
    unsigned int t228;
    unsigned int t229;
    unsigned int t230;
    unsigned int t231;
    unsigned int t233;
    unsigned int t234;
    unsigned int t235;
    unsigned int t236;
    char *t239;
    char *t240;
    char *t242;
    char *t243;
    unsigned int t244;
    unsigned int t245;
    unsigned int t246;
    unsigned int t247;
    unsigned int t248;
    unsigned int t249;
    unsigned int t250;
    unsigned int t251;
    unsigned int t252;
    unsigned int t253;
    unsigned int t254;
    unsigned int t255;
    char *t256;
    char *t257;
    unsigned int t258;
    unsigned int t259;
    unsigned int t260;
    unsigned int t261;
    unsigned int t262;
    char *t263;
    char *t264;
    unsigned int t265;
    unsigned int t266;
    unsigned int t267;
    char *t270;
    char *t271;
    char *t274;
    char *t275;
    unsigned int t276;
    unsigned int t277;
    unsigned int t278;
    unsigned int t279;
    unsigned int t280;
    unsigned int t281;
    unsigned int t283;
    unsigned int t284;
    unsigned int t285;
    unsigned int t286;
    char *t289;
    char *t290;
    char *t292;
    char *t293;
    unsigned int t294;
    unsigned int t295;
    unsigned int t296;
    unsigned int t297;
    unsigned int t298;
    unsigned int t299;
    unsigned int t300;
    unsigned int t301;
    unsigned int t302;
    unsigned int t303;
    unsigned int t304;
    unsigned int t305;
    char *t306;
    char *t307;
    unsigned int t308;
    unsigned int t309;
    unsigned int t310;
    unsigned int t311;
    unsigned int t312;
    char *t313;
    char *t314;
    unsigned int t315;
    unsigned int t316;
    unsigned int t317;
    char *t318;
    char *t319;
    char *t320;
    unsigned int t322;
    unsigned int t323;
    unsigned int t324;
    char *t325;
    char *t326;
    unsigned int t327;
    unsigned int t328;
    unsigned int t329;
    unsigned int t330;
    unsigned int t331;
    unsigned int t332;
    unsigned int t333;
    char *t334;
    char *t335;
    unsigned int t336;
    unsigned int t337;
    unsigned int t338;
    unsigned int t339;
    unsigned int t340;
    unsigned int t341;
    unsigned int t342;
    unsigned int t343;
    int t344;
    int t345;
    unsigned int t346;
    unsigned int t347;
    unsigned int t348;
    unsigned int t349;
    unsigned int t350;
    unsigned int t351;
    unsigned int t352;
    unsigned int t353;
    unsigned int t354;
    unsigned int t355;
    char *t358;
    char *t359;
    char *t361;
    char *t362;
    unsigned int t363;
    unsigned int t364;
    unsigned int t365;
    unsigned int t366;
    unsigned int t367;
    unsigned int t368;
    unsigned int t369;
    unsigned int t370;
    unsigned int t371;
    unsigned int t372;
    unsigned int t373;
    unsigned int t374;
    char *t375;
    char *t376;
    unsigned int t377;
    unsigned int t378;
    unsigned int t379;
    unsigned int t380;
    unsigned int t381;
    char *t382;
    char *t383;
    unsigned int t384;
    unsigned int t385;
    unsigned int t386;
    char *t387;
    char *t388;
    char *t389;
    unsigned int t391;
    unsigned int t392;
    unsigned int t393;
    char *t394;
    char *t395;
    unsigned int t396;
    unsigned int t397;
    unsigned int t398;
    unsigned int t399;
    unsigned int t400;
    unsigned int t401;
    unsigned int t402;
    unsigned int t403;
    unsigned int t404;
    unsigned int t405;
    unsigned int t406;
    char *t409;
    char *t410;
    char *t412;
    char *t413;
    unsigned int t414;
    unsigned int t415;
    unsigned int t416;
    unsigned int t417;
    unsigned int t418;
    unsigned int t419;
    unsigned int t420;
    unsigned int t421;
    unsigned int t422;
    unsigned int t423;
    unsigned int t424;
    unsigned int t425;
    char *t426;
    char *t427;
    unsigned int t428;
    unsigned int t429;
    unsigned int t430;
    unsigned int t431;
    unsigned int t432;
    char *t433;
    char *t434;
    unsigned int t435;
    unsigned int t436;
    unsigned int t437;
    char *t439;
    char *t440;
    char *t441;
    unsigned int t443;
    unsigned int t444;
    unsigned int t445;
    char *t446;
    char *t447;
    unsigned int t448;
    unsigned int t449;
    unsigned int t450;
    unsigned int t451;
    unsigned int t452;
    unsigned int t453;
    unsigned int t454;
    char *t455;
    char *t456;
    unsigned int t457;
    unsigned int t458;
    unsigned int t459;
    int t460;
    unsigned int t461;
    unsigned int t462;
    unsigned int t463;
    int t464;
    unsigned int t465;
    unsigned int t466;
    unsigned int t467;
    unsigned int t468;
    char *t469;
    char *t470;
    unsigned int t471;
    unsigned int t472;
    unsigned int t473;
    unsigned int t474;
    unsigned int t475;
    unsigned int t476;
    unsigned int t477;
    unsigned int t478;
    unsigned int t479;
    unsigned int t480;
    unsigned int t481;
    unsigned int t482;
    char *t485;
    char *t486;
    char *t488;
    char *t489;
    unsigned int t490;
    unsigned int t491;
    unsigned int t492;
    unsigned int t493;
    unsigned int t494;
    unsigned int t495;
    unsigned int t496;
    unsigned int t497;
    unsigned int t498;
    unsigned int t499;
    unsigned int t500;
    unsigned int t501;
    char *t502;
    char *t503;
    unsigned int t504;
    unsigned int t505;
    unsigned int t506;
    unsigned int t507;
    unsigned int t508;
    char *t509;
    char *t510;
    unsigned int t511;
    unsigned int t512;
    unsigned int t513;
    char *t514;
    char *t515;
    unsigned int t516;
    unsigned int t517;
    unsigned int t518;
    unsigned int t519;
    char *t522;
    char *t524;
    char *t525;
    unsigned int t526;
    unsigned int t527;
    unsigned int t528;
    unsigned int t529;
    unsigned int t530;
    unsigned int t531;
    unsigned int t532;
    unsigned int t533;
    unsigned int t534;
    unsigned int t535;
    unsigned int t536;
    unsigned int t537;
    char *t538;
    char *t539;
    unsigned int t540;
    unsigned int t541;
    unsigned int t542;
    unsigned int t543;
    unsigned int t544;
    char *t545;
    char *t546;
    unsigned int t547;
    unsigned int t548;
    unsigned int t549;
    char *t550;
    char *t551;
    unsigned int t552;
    unsigned int t553;
    unsigned int t554;
    unsigned int t555;
    char *t556;
    char *t557;
    char *t558;
    char *t559;
    char *t560;
    char *t561;

LAB0:    t1 = (t0 + 3504U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(30, ng0);
    t2 = (t0 + 1368U);
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

LAB20:    t556 = (t0 + 4064);
    t557 = (t556 + 56U);
    t558 = *((char **)t557);
    t559 = (t558 + 56U);
    t560 = *((char **)t559);
    memcpy(t560, t3, 8);
    xsi_driver_vfirst_trans(t556, 0, 31);
    t561 = (t0 + 3856);
    *((int *)t561) = 1;

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
    t33 = (t0 + 1208U);
    t35 = *((char **)t33);
    memset(t36, 0, 8);
    xsi_vlog_unsigned_add(t36, 32, t34, 32, t35, 32);
    goto LAB13;

LAB14:    t33 = (t0 + 1368U);
    t43 = *((char **)t33);
    t33 = ((char*)((ng1)));
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

LAB29:    t71 = (t0 + 1048U);
    t72 = *((char **)t71);
    t71 = (t0 + 1208U);
    t73 = *((char **)t71);
    memset(t74, 0, 8);
    xsi_vlog_unsigned_minus(t74, 32, t72, 32, t73, 32);
    goto LAB30;

LAB31:    t71 = (t0 + 1368U);
    t81 = *((char **)t71);
    t71 = ((char*)((ng3)));
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

LAB46:    t109 = (t0 + 1048U);
    t110 = *((char **)t109);
    t109 = (t0 + 1208U);
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

LAB48:    t145 = (t0 + 1368U);
    t146 = *((char **)t145);
    t145 = ((char*)((ng4)));
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

LAB66:    t174 = (t0 + 1208U);
    t175 = *((char **)t174);
    t174 = (t0 + 1048U);
    t177 = *((char **)t174);
    memset(t176, 0, 8);
    t174 = (t176 + 4);
    t178 = (t177 + 4);
    t179 = *((unsigned int *)t177);
    t180 = (t179 >> 0);
    *((unsigned int *)t176) = t180;
    t181 = *((unsigned int *)t178);
    t182 = (t181 >> 0);
    *((unsigned int *)t174) = t182;
    t183 = *((unsigned int *)t176);
    *((unsigned int *)t176) = (t183 & 31U);
    t184 = *((unsigned int *)t174);
    *((unsigned int *)t174) = (t184 & 31U);
    memset(t185, 0, 8);
    xsi_vlog_unsigned_lshift(t185, 32, t175, 32, t176, 5);
    goto LAB67;

LAB68:    t192 = (t0 + 1368U);
    t193 = *((char **)t192);
    t192 = ((char*)((ng5)));
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

LAB84:    t233 = *((unsigned int *)t191);
    t234 = (~(t233));
    t235 = *((unsigned int *)t217);
    t236 = (t234 || t235);
    if (t236 > 0)
        goto LAB85;

LAB86:    if (*((unsigned int *)t217) > 0)
        goto LAB87;

LAB88:    if (*((unsigned int *)t191) > 0)
        goto LAB89;

LAB90:    memcpy(t190, t237, 8);

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

LAB83:    t221 = (t0 + 1208U);
    t222 = *((char **)t221);
    t221 = (t0 + 1048U);
    t224 = *((char **)t221);
    memset(t223, 0, 8);
    t221 = (t223 + 4);
    t225 = (t224 + 4);
    t226 = *((unsigned int *)t224);
    t227 = (t226 >> 0);
    *((unsigned int *)t223) = t227;
    t228 = *((unsigned int *)t225);
    t229 = (t228 >> 0);
    *((unsigned int *)t221) = t229;
    t230 = *((unsigned int *)t223);
    *((unsigned int *)t223) = (t230 & 31U);
    t231 = *((unsigned int *)t221);
    *((unsigned int *)t221) = (t231 & 31U);
    memset(t232, 0, 8);
    xsi_vlog_unsigned_rshift(t232, 32, t222, 32, t223, 5);
    goto LAB84;

LAB85:    t239 = (t0 + 1368U);
    t240 = *((char **)t239);
    t239 = ((char*)((ng6)));
    memset(t241, 0, 8);
    t242 = (t240 + 4);
    t243 = (t239 + 4);
    t244 = *((unsigned int *)t240);
    t245 = *((unsigned int *)t239);
    t246 = (t244 ^ t245);
    t247 = *((unsigned int *)t242);
    t248 = *((unsigned int *)t243);
    t249 = (t247 ^ t248);
    t250 = (t246 | t249);
    t251 = *((unsigned int *)t242);
    t252 = *((unsigned int *)t243);
    t253 = (t251 | t252);
    t254 = (~(t253));
    t255 = (t250 & t254);
    if (t255 != 0)
        goto LAB95;

LAB92:    if (t253 != 0)
        goto LAB94;

LAB93:    *((unsigned int *)t241) = 1;

LAB95:    memset(t238, 0, 8);
    t257 = (t241 + 4);
    t258 = *((unsigned int *)t257);
    t259 = (~(t258));
    t260 = *((unsigned int *)t241);
    t261 = (t260 & t259);
    t262 = (t261 & 1U);
    if (t262 != 0)
        goto LAB96;

LAB97:    if (*((unsigned int *)t257) != 0)
        goto LAB98;

LAB99:    t264 = (t238 + 4);
    t265 = *((unsigned int *)t238);
    t266 = *((unsigned int *)t264);
    t267 = (t265 || t266);
    if (t267 > 0)
        goto LAB100;

LAB101:    t283 = *((unsigned int *)t238);
    t284 = (~(t283));
    t285 = *((unsigned int *)t264);
    t286 = (t284 || t285);
    if (t286 > 0)
        goto LAB102;

LAB103:    if (*((unsigned int *)t264) > 0)
        goto LAB104;

LAB105:    if (*((unsigned int *)t238) > 0)
        goto LAB106;

LAB107:    memcpy(t237, t287, 8);

LAB108:    goto LAB86;

LAB87:    xsi_vlog_unsigned_bit_combine(t190, 32, t232, 32, t237, 32);
    goto LAB91;

LAB89:    memcpy(t190, t232, 8);
    goto LAB91;

LAB94:    t256 = (t241 + 4);
    *((unsigned int *)t241) = 1;
    *((unsigned int *)t256) = 1;
    goto LAB95;

LAB96:    *((unsigned int *)t238) = 1;
    goto LAB99;

LAB98:    t263 = (t238 + 4);
    *((unsigned int *)t238) = 1;
    *((unsigned int *)t263) = 1;
    goto LAB99;

LAB100:    t270 = (t0 + 1208U);
    t271 = *((char **)t270);
    t270 = (t0 + 1048U);
    t274 = *((char **)t270);
    memset(t273, 0, 8);
    t270 = (t273 + 4);
    t275 = (t274 + 4);
    t276 = *((unsigned int *)t274);
    t277 = (t276 >> 0);
    *((unsigned int *)t273) = t277;
    t278 = *((unsigned int *)t275);
    t279 = (t278 >> 0);
    *((unsigned int *)t270) = t279;
    t280 = *((unsigned int *)t273);
    *((unsigned int *)t273) = (t280 & 31U);
    t281 = *((unsigned int *)t270);
    *((unsigned int *)t270) = (t281 & 31U);
    memset(t282, 0, 8);
    xsi_vlog_signed_arith_rshift(t282, 32, t271, 32, t273, 32);
    goto LAB101;

LAB102:    t289 = (t0 + 1368U);
    t290 = *((char **)t289);
    t289 = ((char*)((ng7)));
    memset(t291, 0, 8);
    t292 = (t290 + 4);
    t293 = (t289 + 4);
    t294 = *((unsigned int *)t290);
    t295 = *((unsigned int *)t289);
    t296 = (t294 ^ t295);
    t297 = *((unsigned int *)t292);
    t298 = *((unsigned int *)t293);
    t299 = (t297 ^ t298);
    t300 = (t296 | t299);
    t301 = *((unsigned int *)t292);
    t302 = *((unsigned int *)t293);
    t303 = (t301 | t302);
    t304 = (~(t303));
    t305 = (t300 & t304);
    if (t305 != 0)
        goto LAB112;

LAB109:    if (t303 != 0)
        goto LAB111;

LAB110:    *((unsigned int *)t291) = 1;

LAB112:    memset(t288, 0, 8);
    t307 = (t291 + 4);
    t308 = *((unsigned int *)t307);
    t309 = (~(t308));
    t310 = *((unsigned int *)t291);
    t311 = (t310 & t309);
    t312 = (t311 & 1U);
    if (t312 != 0)
        goto LAB113;

LAB114:    if (*((unsigned int *)t307) != 0)
        goto LAB115;

LAB116:    t314 = (t288 + 4);
    t315 = *((unsigned int *)t288);
    t316 = *((unsigned int *)t314);
    t317 = (t315 || t316);
    if (t317 > 0)
        goto LAB117;

LAB118:    t352 = *((unsigned int *)t288);
    t353 = (~(t352));
    t354 = *((unsigned int *)t314);
    t355 = (t353 || t354);
    if (t355 > 0)
        goto LAB119;

LAB120:    if (*((unsigned int *)t314) > 0)
        goto LAB121;

LAB122:    if (*((unsigned int *)t288) > 0)
        goto LAB123;

LAB124:    memcpy(t287, t356, 8);

LAB125:    goto LAB103;

LAB104:    xsi_vlog_unsigned_bit_combine(t237, 32, t282, 32, t287, 32);
    goto LAB108;

LAB106:    memcpy(t237, t282, 8);
    goto LAB108;

LAB111:    t306 = (t291 + 4);
    *((unsigned int *)t291) = 1;
    *((unsigned int *)t306) = 1;
    goto LAB112;

LAB113:    *((unsigned int *)t288) = 1;
    goto LAB116;

LAB115:    t313 = (t288 + 4);
    *((unsigned int *)t288) = 1;
    *((unsigned int *)t313) = 1;
    goto LAB116;

LAB117:    t318 = (t0 + 1048U);
    t319 = *((char **)t318);
    t318 = (t0 + 1208U);
    t320 = *((char **)t318);
    t322 = *((unsigned int *)t319);
    t323 = *((unsigned int *)t320);
    t324 = (t322 & t323);
    *((unsigned int *)t321) = t324;
    t318 = (t319 + 4);
    t325 = (t320 + 4);
    t326 = (t321 + 4);
    t327 = *((unsigned int *)t318);
    t328 = *((unsigned int *)t325);
    t329 = (t327 | t328);
    *((unsigned int *)t326) = t329;
    t330 = *((unsigned int *)t326);
    t331 = (t330 != 0);
    if (t331 == 1)
        goto LAB126;

LAB127:
LAB128:    goto LAB118;

LAB119:    t358 = (t0 + 1368U);
    t359 = *((char **)t358);
    t358 = ((char*)((ng8)));
    memset(t360, 0, 8);
    t361 = (t359 + 4);
    t362 = (t358 + 4);
    t363 = *((unsigned int *)t359);
    t364 = *((unsigned int *)t358);
    t365 = (t363 ^ t364);
    t366 = *((unsigned int *)t361);
    t367 = *((unsigned int *)t362);
    t368 = (t366 ^ t367);
    t369 = (t365 | t368);
    t370 = *((unsigned int *)t361);
    t371 = *((unsigned int *)t362);
    t372 = (t370 | t371);
    t373 = (~(t372));
    t374 = (t369 & t373);
    if (t374 != 0)
        goto LAB132;

LAB129:    if (t372 != 0)
        goto LAB131;

LAB130:    *((unsigned int *)t360) = 1;

LAB132:    memset(t357, 0, 8);
    t376 = (t360 + 4);
    t377 = *((unsigned int *)t376);
    t378 = (~(t377));
    t379 = *((unsigned int *)t360);
    t380 = (t379 & t378);
    t381 = (t380 & 1U);
    if (t381 != 0)
        goto LAB133;

LAB134:    if (*((unsigned int *)t376) != 0)
        goto LAB135;

LAB136:    t383 = (t357 + 4);
    t384 = *((unsigned int *)t357);
    t385 = *((unsigned int *)t383);
    t386 = (t384 || t385);
    if (t386 > 0)
        goto LAB137;

LAB138:    t403 = *((unsigned int *)t357);
    t404 = (~(t403));
    t405 = *((unsigned int *)t383);
    t406 = (t404 || t405);
    if (t406 > 0)
        goto LAB139;

LAB140:    if (*((unsigned int *)t383) > 0)
        goto LAB141;

LAB142:    if (*((unsigned int *)t357) > 0)
        goto LAB143;

LAB144:    memcpy(t356, t407, 8);

LAB145:    goto LAB120;

LAB121:    xsi_vlog_unsigned_bit_combine(t287, 32, t321, 32, t356, 32);
    goto LAB125;

LAB123:    memcpy(t287, t321, 8);
    goto LAB125;

LAB126:    t332 = *((unsigned int *)t321);
    t333 = *((unsigned int *)t326);
    *((unsigned int *)t321) = (t332 | t333);
    t334 = (t319 + 4);
    t335 = (t320 + 4);
    t336 = *((unsigned int *)t319);
    t337 = (~(t336));
    t338 = *((unsigned int *)t334);
    t339 = (~(t338));
    t340 = *((unsigned int *)t320);
    t341 = (~(t340));
    t342 = *((unsigned int *)t335);
    t343 = (~(t342));
    t344 = (t337 & t339);
    t345 = (t341 & t343);
    t346 = (~(t344));
    t347 = (~(t345));
    t348 = *((unsigned int *)t326);
    *((unsigned int *)t326) = (t348 & t346);
    t349 = *((unsigned int *)t326);
    *((unsigned int *)t326) = (t349 & t347);
    t350 = *((unsigned int *)t321);
    *((unsigned int *)t321) = (t350 & t346);
    t351 = *((unsigned int *)t321);
    *((unsigned int *)t321) = (t351 & t347);
    goto LAB128;

LAB131:    t375 = (t360 + 4);
    *((unsigned int *)t360) = 1;
    *((unsigned int *)t375) = 1;
    goto LAB132;

LAB133:    *((unsigned int *)t357) = 1;
    goto LAB136;

LAB135:    t382 = (t357 + 4);
    *((unsigned int *)t357) = 1;
    *((unsigned int *)t382) = 1;
    goto LAB136;

LAB137:    t387 = (t0 + 1048U);
    t388 = *((char **)t387);
    t387 = (t0 + 1208U);
    t389 = *((char **)t387);
    t391 = *((unsigned int *)t388);
    t392 = *((unsigned int *)t389);
    t393 = (t391 ^ t392);
    *((unsigned int *)t390) = t393;
    t387 = (t388 + 4);
    t394 = (t389 + 4);
    t395 = (t390 + 4);
    t396 = *((unsigned int *)t387);
    t397 = *((unsigned int *)t394);
    t398 = (t396 | t397);
    *((unsigned int *)t395) = t398;
    t399 = *((unsigned int *)t395);
    t400 = (t399 != 0);
    if (t400 == 1)
        goto LAB146;

LAB147:
LAB148:    goto LAB138;

LAB139:    t409 = (t0 + 1368U);
    t410 = *((char **)t409);
    t409 = ((char*)((ng9)));
    memset(t411, 0, 8);
    t412 = (t410 + 4);
    t413 = (t409 + 4);
    t414 = *((unsigned int *)t410);
    t415 = *((unsigned int *)t409);
    t416 = (t414 ^ t415);
    t417 = *((unsigned int *)t412);
    t418 = *((unsigned int *)t413);
    t419 = (t417 ^ t418);
    t420 = (t416 | t419);
    t421 = *((unsigned int *)t412);
    t422 = *((unsigned int *)t413);
    t423 = (t421 | t422);
    t424 = (~(t423));
    t425 = (t420 & t424);
    if (t425 != 0)
        goto LAB152;

LAB149:    if (t423 != 0)
        goto LAB151;

LAB150:    *((unsigned int *)t411) = 1;

LAB152:    memset(t408, 0, 8);
    t427 = (t411 + 4);
    t428 = *((unsigned int *)t427);
    t429 = (~(t428));
    t430 = *((unsigned int *)t411);
    t431 = (t430 & t429);
    t432 = (t431 & 1U);
    if (t432 != 0)
        goto LAB153;

LAB154:    if (*((unsigned int *)t427) != 0)
        goto LAB155;

LAB156:    t434 = (t408 + 4);
    t435 = *((unsigned int *)t408);
    t436 = *((unsigned int *)t434);
    t437 = (t435 || t436);
    if (t437 > 0)
        goto LAB157;

LAB158:    t479 = *((unsigned int *)t408);
    t480 = (~(t479));
    t481 = *((unsigned int *)t434);
    t482 = (t480 || t481);
    if (t482 > 0)
        goto LAB159;

LAB160:    if (*((unsigned int *)t434) > 0)
        goto LAB161;

LAB162:    if (*((unsigned int *)t408) > 0)
        goto LAB163;

LAB164:    memcpy(t407, t483, 8);

LAB165:    goto LAB140;

LAB141:    xsi_vlog_unsigned_bit_combine(t356, 32, t390, 32, t407, 32);
    goto LAB145;

LAB143:    memcpy(t356, t390, 8);
    goto LAB145;

LAB146:    t401 = *((unsigned int *)t390);
    t402 = *((unsigned int *)t395);
    *((unsigned int *)t390) = (t401 | t402);
    goto LAB148;

LAB151:    t426 = (t411 + 4);
    *((unsigned int *)t411) = 1;
    *((unsigned int *)t426) = 1;
    goto LAB152;

LAB153:    *((unsigned int *)t408) = 1;
    goto LAB156;

LAB155:    t433 = (t408 + 4);
    *((unsigned int *)t408) = 1;
    *((unsigned int *)t433) = 1;
    goto LAB156;

LAB157:    t439 = (t0 + 1048U);
    t440 = *((char **)t439);
    t439 = (t0 + 1208U);
    t441 = *((char **)t439);
    t443 = *((unsigned int *)t440);
    t444 = *((unsigned int *)t441);
    t445 = (t443 | t444);
    *((unsigned int *)t442) = t445;
    t439 = (t440 + 4);
    t446 = (t441 + 4);
    t447 = (t442 + 4);
    t448 = *((unsigned int *)t439);
    t449 = *((unsigned int *)t446);
    t450 = (t448 | t449);
    *((unsigned int *)t447) = t450;
    t451 = *((unsigned int *)t447);
    t452 = (t451 != 0);
    if (t452 == 1)
        goto LAB166;

LAB167:
LAB168:    memset(t438, 0, 8);
    t469 = (t438 + 4);
    t470 = (t442 + 4);
    t471 = *((unsigned int *)t442);
    t472 = (~(t471));
    *((unsigned int *)t438) = t472;
    *((unsigned int *)t469) = 0;
    if (*((unsigned int *)t470) != 0)
        goto LAB170;

LAB169:    t477 = *((unsigned int *)t438);
    *((unsigned int *)t438) = (t477 & 4294967295U);
    t478 = *((unsigned int *)t469);
    *((unsigned int *)t469) = (t478 & 4294967295U);
    goto LAB158;

LAB159:    t485 = (t0 + 1368U);
    t486 = *((char **)t485);
    t485 = ((char*)((ng10)));
    memset(t487, 0, 8);
    t488 = (t486 + 4);
    t489 = (t485 + 4);
    t490 = *((unsigned int *)t486);
    t491 = *((unsigned int *)t485);
    t492 = (t490 ^ t491);
    t493 = *((unsigned int *)t488);
    t494 = *((unsigned int *)t489);
    t495 = (t493 ^ t494);
    t496 = (t492 | t495);
    t497 = *((unsigned int *)t488);
    t498 = *((unsigned int *)t489);
    t499 = (t497 | t498);
    t500 = (~(t499));
    t501 = (t496 & t500);
    if (t501 != 0)
        goto LAB174;

LAB171:    if (t499 != 0)
        goto LAB173;

LAB172:    *((unsigned int *)t487) = 1;

LAB174:    memset(t484, 0, 8);
    t503 = (t487 + 4);
    t504 = *((unsigned int *)t503);
    t505 = (~(t504));
    t506 = *((unsigned int *)t487);
    t507 = (t506 & t505);
    t508 = (t507 & 1U);
    if (t508 != 0)
        goto LAB175;

LAB176:    if (*((unsigned int *)t503) != 0)
        goto LAB177;

LAB178:    t510 = (t484 + 4);
    t511 = *((unsigned int *)t484);
    t512 = *((unsigned int *)t510);
    t513 = (t511 || t512);
    if (t513 > 0)
        goto LAB179;

LAB180:    t516 = *((unsigned int *)t484);
    t517 = (~(t516));
    t518 = *((unsigned int *)t510);
    t519 = (t517 || t518);
    if (t519 > 0)
        goto LAB181;

LAB182:    if (*((unsigned int *)t510) > 0)
        goto LAB183;

LAB184:    if (*((unsigned int *)t484) > 0)
        goto LAB185;

LAB186:    memcpy(t483, t520, 8);

LAB187:    goto LAB160;

LAB161:    xsi_vlog_unsigned_bit_combine(t407, 32, t438, 32, t483, 32);
    goto LAB165;

LAB163:    memcpy(t407, t438, 8);
    goto LAB165;

LAB166:    t453 = *((unsigned int *)t442);
    t454 = *((unsigned int *)t447);
    *((unsigned int *)t442) = (t453 | t454);
    t455 = (t440 + 4);
    t456 = (t441 + 4);
    t457 = *((unsigned int *)t455);
    t458 = (~(t457));
    t459 = *((unsigned int *)t440);
    t460 = (t459 & t458);
    t461 = *((unsigned int *)t456);
    t462 = (~(t461));
    t463 = *((unsigned int *)t441);
    t464 = (t463 & t462);
    t465 = (~(t460));
    t466 = (~(t464));
    t467 = *((unsigned int *)t447);
    *((unsigned int *)t447) = (t467 & t465);
    t468 = *((unsigned int *)t447);
    *((unsigned int *)t447) = (t468 & t466);
    goto LAB168;

LAB170:    t473 = *((unsigned int *)t438);
    t474 = *((unsigned int *)t470);
    *((unsigned int *)t438) = (t473 | t474);
    t475 = *((unsigned int *)t469);
    t476 = *((unsigned int *)t470);
    *((unsigned int *)t469) = (t475 | t476);
    goto LAB169;

LAB173:    t502 = (t487 + 4);
    *((unsigned int *)t487) = 1;
    *((unsigned int *)t502) = 1;
    goto LAB174;

LAB175:    *((unsigned int *)t484) = 1;
    goto LAB178;

LAB177:    t509 = (t484 + 4);
    *((unsigned int *)t484) = 1;
    *((unsigned int *)t509) = 1;
    goto LAB178;

LAB179:    t514 = (t0 + 1688U);
    t515 = *((char **)t514);
    goto LAB180;

LAB181:    t514 = (t0 + 1368U);
    t522 = *((char **)t514);
    t514 = ((char*)((ng11)));
    memset(t523, 0, 8);
    t524 = (t522 + 4);
    t525 = (t514 + 4);
    t526 = *((unsigned int *)t522);
    t527 = *((unsigned int *)t514);
    t528 = (t526 ^ t527);
    t529 = *((unsigned int *)t524);
    t530 = *((unsigned int *)t525);
    t531 = (t529 ^ t530);
    t532 = (t528 | t531);
    t533 = *((unsigned int *)t524);
    t534 = *((unsigned int *)t525);
    t535 = (t533 | t534);
    t536 = (~(t535));
    t537 = (t532 & t536);
    if (t537 != 0)
        goto LAB191;

LAB188:    if (t535 != 0)
        goto LAB190;

LAB189:    *((unsigned int *)t523) = 1;

LAB191:    memset(t521, 0, 8);
    t539 = (t523 + 4);
    t540 = *((unsigned int *)t539);
    t541 = (~(t540));
    t542 = *((unsigned int *)t523);
    t543 = (t542 & t541);
    t544 = (t543 & 1U);
    if (t544 != 0)
        goto LAB192;

LAB193:    if (*((unsigned int *)t539) != 0)
        goto LAB194;

LAB195:    t546 = (t521 + 4);
    t547 = *((unsigned int *)t521);
    t548 = *((unsigned int *)t546);
    t549 = (t547 || t548);
    if (t549 > 0)
        goto LAB196;

LAB197:    t552 = *((unsigned int *)t521);
    t553 = (~(t552));
    t554 = *((unsigned int *)t546);
    t555 = (t553 || t554);
    if (t555 > 0)
        goto LAB198;

LAB199:    if (*((unsigned int *)t546) > 0)
        goto LAB200;

LAB201:    if (*((unsigned int *)t521) > 0)
        goto LAB202;

LAB203:    memcpy(t520, t550, 8);

LAB204:    goto LAB182;

LAB183:    xsi_vlog_unsigned_bit_combine(t483, 32, t515, 32, t520, 32);
    goto LAB187;

LAB185:    memcpy(t483, t515, 8);
    goto LAB187;

LAB190:    t538 = (t523 + 4);
    *((unsigned int *)t523) = 1;
    *((unsigned int *)t538) = 1;
    goto LAB191;

LAB192:    *((unsigned int *)t521) = 1;
    goto LAB195;

LAB194:    t545 = (t521 + 4);
    *((unsigned int *)t521) = 1;
    *((unsigned int *)t545) = 1;
    goto LAB195;

LAB196:    t550 = (t0 + 1848U);
    t551 = *((char **)t550);
    goto LAB197;

LAB198:    t550 = ((char*)((ng12)));
    goto LAB199;

LAB200:    xsi_vlog_unsigned_bit_combine(t520, 32, t551, 32, t550, 32);
    goto LAB204;

LAB202:    memcpy(t520, t551, 8);
    goto LAB204;

}


extern void work_m_00000000002389312851_0886308060_init()
{
	static char *pe[] = {(void *)Cont_28_0,(void *)Cont_29_1,(void *)Cont_30_2};
	xsi_register_didat("work_m_00000000002389312851_0886308060", "isim/mips_tb_isim_beh.exe.sim/work/m_00000000002389312851_0886308060.didat");
	xsi_register_executes(pe);
}

{----------------------------------------------------------------------------}
{                                                                            }
{ File(s): m_berserk.h                                                       }
{                                                                            }
{ Initial conversion by : Ben Watt (ben@delphigamedev.com)                   }
{ Initial conversion on : 11-March-2002                                      }
{                                                                            }
{ This file is part of the conversion of Quake2 source to Delphi.            }
{ More information about this project can be found at:                       }
{ http://www.sulaco.co.za/quake2/                                            }
{                                                                            }
{ Copyright (C) 1997-2001 Id Software, Inc.                                  }
{                                                                            }
{ This program is free software; you can redistribute it and/or              }
{ modify it under the terms of the GNU General Public License                }
{ as published by the Free Software Foundation; either version 2             }
{ of the License, or (at your option) any later version.                     }
{                                                                            }
{ This program is distributed in the hope that it will be useful,            }
{ but WITHOUT ANY WARRANTY; without even the implied warranty of             }
{ MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.                       }
{                                                                            }
{ See the GNU General Public License for more details.                       }
{                                                                            }
{----------------------------------------------------------------------------}
{ Updated on :                                                               }
{ Updated by :                                                               }
{                                                                            }
{----------------------------------------------------------------------------}
{ * Still dependent (to compile correctly) on:                               }
{ 1.) g_local.h and game.h                                                   }
{----------------------------------------------------------------------------}
{ * TODO:                                                                    }
{ 1.) test compilation with the above two units                              }
{----------------------------------------------------------------------------}
{
==============================================================================

BERSERK

==============================================================================
}


unit m_berserk;

interface

uses
  g_main,
  g_local;

const MODEL_SCALE     = 1.000000;

var
  sound_pain,
  sound_die,
  sound_idle,
  sound_punch,
  sound_sight,
  sound_search       : Integer;

procedure berserk_fidget(self : edict_p); cdecl;
procedure SP_monster_berserk(self : edict_p); cdecl; 

implementation

uses
  q_shared,
  g_ai,
  g_weapon,
  g_local_add,
  GameUnit,
  g_misc,
  g_utils,
  game_add,
  g_monster,
  CPas;

// start m_berserk.h

// G:\quake2\baseq2\models/monsters/berserk

// This file generated by ModelGen - Do NOT Modify

const
  FRAME_stand1 = 0;
  FRAME_stand2   = 1;
  FRAME_stand3   = 2;
  FRAME_stand4   = 3;
  FRAME_stand5   = 4;
  FRAME_standb1  = 5;
  FRAME_standb2  = 6;
  FRAME_standb3  = 7;
  FRAME_standb4  = 8;
  FRAME_standb5  = 9;
  FRAME_standb6  = 10;
  FRAME_standb7  = 11;
  FRAME_standb8  = 12;
  FRAME_standb9  = 13;
  FRAME_standb10 = 14;
  FRAME_standb11 = 15;
  FRAME_standb12 = 16;
  FRAME_standb13 = 17;
  FRAME_standb14 = 18;
  FRAME_standb15 = 19;
  FRAME_standb16 = 20;
  FRAME_standb17 = 21;
  FRAME_standb18 = 22;
  FRAME_standb19 = 23;
  FRAME_standb20 = 24;
  FRAME_walkc1   = 25;
  FRAME_walkc2   = 26;
  FRAME_walkc3   = 27;
  FRAME_walkc4   = 28;
  FRAME_walkc5   = 29;
  FRAME_walkc6   = 30;
  FRAME_walkc7   = 31;
  FRAME_walkc8   = 32;
  FRAME_walkc9   = 33;
  FRAME_walkc10  = 34;
  FRAME_walkc11  = 35;
  FRAME_run1     = 36;
  FRAME_run2     = 37;
  FRAME_run3     = 38;
  FRAME_run4     = 39;
  FRAME_run5     = 40;
  FRAME_run6     = 41;
  FRAME_att_a1   = 42;
  FRAME_att_a2   = 43;
  FRAME_att_a3   = 44;
  FRAME_att_a4   = 45;
  FRAME_att_a5   = 46;
  FRAME_att_a6   = 47;
  FRAME_att_a7   = 48;
  FRAME_att_a8   = 49;
  FRAME_att_a9   = 50;
  FRAME_att_a10  = 51;
  FRAME_att_a11  = 52;
  FRAME_att_a12  = 53;
  FRAME_att_a13  = 54;
  FRAME_att_b1   = 55;
  FRAME_att_b2   = 56;
  FRAME_att_b3   = 57;
  FRAME_att_b4   = 58;
  FRAME_att_b5   = 59;
  FRAME_att_b6   = 60;
  FRAME_att_b7   = 61;
  FRAME_att_b8   = 62;
  FRAME_att_b9   = 63;
  FRAME_att_b10  = 64;
  FRAME_att_b11  = 65;
  FRAME_att_b12  = 66;
  FRAME_att_b13  = 67;
  FRAME_att_b14  = 68;
  FRAME_att_b15  = 69;
  FRAME_att_b16  = 70;
  FRAME_att_b17  = 71;
  FRAME_att_b18  = 72;
  FRAME_att_b19  = 73;
  FRAME_att_b20  = 74;
  FRAME_att_b21  = 75;
  FRAME_att_c1   = 76;
  FRAME_att_c2   = 77;
  FRAME_att_c3   = 78;
  FRAME_att_c4   = 79;
  FRAME_att_c5   = 80;
  FRAME_att_c6   = 81;
  FRAME_att_c7   = 82;
  FRAME_att_c8   = 83;
  FRAME_att_c9   = 84;
  FRAME_att_c10  = 85;
  FRAME_att_c11  = 86;
  FRAME_att_c12  = 87;
  FRAME_att_c13  = 88;
  FRAME_att_c14  = 89;
  FRAME_att_c15  = 90;
  FRAME_att_c16  = 91;
  FRAME_att_c17  = 92;
  FRAME_att_c18  = 93;
  FRAME_att_c19  = 94;
  FRAME_att_c20  = 95;
  FRAME_att_c21  = 96;
  FRAME_att_c22  = 97;
  FRAME_att_c23  = 98;
  FRAME_att_c24  = 99;
  FRAME_att_c25  = 100;
  FRAME_att_c26  = 101;
  FRAME_att_c27  = 102;
  FRAME_att_c28  = 103;
  FRAME_att_c29  = 104;
  FRAME_att_c30  = 105;
  FRAME_att_c31  = 106;
  FRAME_att_c32  = 107;
  FRAME_att_c33  = 108;
  FRAME_att_c34  = 109;
  FRAME_r_att1   = 110;
  FRAME_r_att2   = 111;
  FRAME_r_att3   = 112;
  FRAME_r_att4   = 113;
  FRAME_r_att5   = 114;
  FRAME_r_att6   = 115;
  FRAME_r_att7   = 116;
  FRAME_r_att8   = 117;
  FRAME_r_att9   = 118;
  FRAME_r_att10  = 119;
  FRAME_r_att11  = 120;
  FRAME_r_att12  = 121;
  FRAME_r_att13  = 122;
  FRAME_r_att14  = 123;
  FRAME_r_att15  = 124;
  FRAME_r_att16  = 125;
  FRAME_r_att17  = 126;
  FRAME_r_att18  = 127;
  FRAME_r_attb1  = 128;
  FRAME_r_attb2  = 129;
  FRAME_r_attb3  = 130;
  FRAME_r_attb4  = 131;
  FRAME_r_attb5  = 132;
  FRAME_r_attb6  = 133;
  FRAME_r_attb7  = 134;
  FRAME_r_attb8  = 135;
  FRAME_r_attb9  = 136;
  FRAME_r_attb10 = 137;
  FRAME_r_attb11 = 138;
  FRAME_r_attb12 = 139;
  FRAME_r_attb13 = 140;
  FRAME_r_attb14 = 141;
  FRAME_r_attb15 = 142;
  FRAME_r_attb16 = 143;
  FRAME_r_attb17 = 144;
  FRAME_r_attb18 = 145;
  FRAME_slam1    = 146;
  FRAME_slam2    = 147;
  FRAME_slam3    = 148;
  FRAME_slam4    = 149;
  FRAME_slam5    = 150;
  FRAME_slam6    = 151;
  FRAME_slam7    = 152;
  FRAME_slam8    = 153;
  FRAME_slam9    = 154;
  FRAME_slam10   = 155;
  FRAME_slam11   = 156;
  FRAME_slam12   = 157;
  FRAME_slam13   = 158;
  FRAME_slam14   = 159;
  FRAME_slam15   = 160;
  FRAME_slam16   = 161;
  FRAME_slam17   = 162;
  FRAME_slam18   = 163;
  FRAME_slam19   = 164;
  FRAME_slam20   = 165;
  FRAME_slam21   = 166;
  FRAME_slam22   = 167;
  FRAME_slam23   = 168;
  FRAME_duck1    = 169;
  FRAME_duck2    = 170;
  FRAME_duck3    = 171;
  FRAME_duck4    = 172;
  FRAME_duck5    = 173;
  FRAME_duck6    = 174;
  FRAME_duck7    = 175;
  FRAME_duck8    = 176;
  FRAME_duck9    = 177;
  FRAME_duck10   = 178;
  FRAME_fall1    = 179;
  FRAME_fall2    = 180;
  FRAME_fall3    = 181;
  FRAME_fall4    = 182;
  FRAME_fall5    = 183;
  FRAME_fall6    = 184;
  FRAME_fall7    = 185;
  FRAME_fall8    = 186;
  FRAME_fall9    = 187;
  FRAME_fall10   = 188;
  FRAME_fall11   = 189;
  FRAME_fall12   = 190;
  FRAME_fall13   = 191;
  FRAME_fall14   = 192;
  FRAME_fall15   = 193;
  FRAME_fall16   = 194;
  FRAME_fall17   = 195;
  FRAME_fall18   = 196;
  FRAME_fall19   = 197;
  FRAME_fall20   = 198;
  FRAME_painc1   = 199;
  FRAME_painc2   = 200;
  FRAME_painc3   = 201;
  FRAME_painc4   = 202;
  FRAME_painb1   = 203;
  FRAME_painb2   = 204;
  FRAME_painb3   = 205;
  FRAME_painb4   = 206;
  FRAME_painb5   = 207;
  FRAME_painb6   = 208;
  FRAME_painb7   = 209;
  FRAME_painb8   = 210;
  FRAME_painb9   = 211;
  FRAME_painb10  = 212;
  FRAME_painb11  = 213;
  FRAME_painb12  = 214;
  FRAME_painb13  = 215;
  FRAME_painb14  = 216;
  FRAME_painb15  = 217;
  FRAME_painb16  = 218;
  FRAME_painb17  = 219;
  FRAME_painb18  = 220;
  FRAME_painb19  = 221;
  FRAME_painb20  = 222;
  FRAME_death1   = 223;
  FRAME_death2   = 224;
  FRAME_death3   = 225;
  FRAME_death4   = 226;
  FRAME_death5   = 227;
  FRAME_death6   = 228;
  FRAME_death7   = 229;
  FRAME_death8   = 230;
  FRAME_death9   = 231;
  FRAME_death10  = 232;
  FRAME_death11  = 233;
  FRAME_death12  = 234;
  FRAME_death13  = 235;
  FRAME_deathc1  = 236;
  FRAME_deathc2  = 237;
  FRAME_deathc3  = 238;
  FRAME_deathc4  = 239;
  FRAME_deathc5  = 240;
  FRAME_deathc6  = 241;
  FRAME_deathc7  = 242;
  FRAME_deathc8  = 243;

// end m_berserk.h


procedure berserk_sight(self, other : edict_p); cdecl;
begin
  gi.sound(self, CHAN_VOICE, sound_sight, 1, ATTN_NORM, 0);
end;

procedure berserk_search(self : edict_p); cdecl;
begin
  gi.sound(self, CHAN_VOICE, sound_search, 1, ATTN_NORM, 0);
end;

const
  berserk_frames_stand : Array[0..4] of mframe_t =
    ((aifunc:ai_stand; dist:0; thinkfunc:berserk_fidget),
     (aifunc:ai_stand; dist:0; thinkfunc:nil),
     (aifunc:ai_stand; dist:0; thinkfunc:nil),
     (aifunc:ai_stand; dist:0; thinkfunc:nil),
     (aifunc:ai_stand; dist:0; thinkfunc:nil));

  berserk_move_stand : mmove_t =
    (firstframe:FRAME_stand1; lastframe:FRAME_stand5; frame:@berserk_frames_stand; endfunc:nil);

procedure berserk_stand(self : edict_p); cdecl;
begin
  self.monsterinfo.currentmove := @berserk_move_stand;
end;

const
  berserk_frames_stand_fidget : Array[0..19] of mframe_t =
    ((aifunc:ai_stand; dist:0; thinkfunc:nil),
     (aifunc:ai_stand; dist:0; thinkfunc:nil),
     (aifunc:ai_stand; dist:0; thinkfunc:nil),
     (aifunc:ai_stand; dist:0; thinkfunc:nil),
     (aifunc:ai_stand; dist:0; thinkfunc:nil),
     (aifunc:ai_stand; dist:0; thinkfunc:nil),
     (aifunc:ai_stand; dist:0; thinkfunc:nil),
     (aifunc:ai_stand; dist:0; thinkfunc:nil),
     (aifunc:ai_stand; dist:0; thinkfunc:nil),
     (aifunc:ai_stand; dist:0; thinkfunc:nil),
     (aifunc:ai_stand; dist:0; thinkfunc:nil),
     (aifunc:ai_stand; dist:0; thinkfunc:nil),
     (aifunc:ai_stand; dist:0; thinkfunc:nil),
     (aifunc:ai_stand; dist:0; thinkfunc:nil),
     (aifunc:ai_stand; dist:0; thinkfunc:nil),
     (aifunc:ai_stand; dist:0; thinkfunc:nil),
     (aifunc:ai_stand; dist:0; thinkfunc:nil),
     (aifunc:ai_stand; dist:0; thinkfunc:nil),
     (aifunc:ai_stand; dist:0; thinkfunc:nil),
     (aifunc:ai_stand; dist:0; thinkfunc:nil));

  berserk_move_stand_fidget : mmove_t =
    (firstframe:FRAME_standb1; lastframe:FRAME_standb20; frame:@berserk_frames_stand_fidget; endfunc:berserk_stand);

procedure berserk_fidget(self : edict_p);
begin
  if (self.monsterinfo.aiflags and AI_STAND_GROUND) <> 0 then
    exit;
  if (_random() > 0.15) then
    exit;

  self.monsterinfo.currentmove := @berserk_move_stand_fidget;
  gi.sound(self, CHAN_WEAPON, sound_idle, 1, ATTN_IDLE, 0);
end;

const
  berserk_frames_walk : Array[0..11] of mframe_t =
    ((aifunc:ai_walk; dist:9.1; thinkfunc:nil),
     (aifunc:ai_walk; dist:6.3; thinkfunc:nil),
     (aifunc:ai_walk; dist:4.9; thinkfunc:nil),
     (aifunc:ai_walk; dist:6.7; thinkfunc:nil),
     (aifunc:ai_walk; dist:6.0; thinkfunc:nil),
     (aifunc:ai_walk; dist:8.2; thinkfunc:nil),
     (aifunc:ai_walk; dist:7.2; thinkfunc:nil),
     (aifunc:ai_walk; dist:6.1; thinkfunc:nil),
     (aifunc:ai_walk; dist:4.9; thinkfunc:nil),
     (aifunc:ai_walk; dist:4.7; thinkfunc:nil),
     (aifunc:ai_walk; dist:4.7; thinkfunc:nil),
     (aifunc:ai_walk; dist:4.8; thinkfunc:nil));

  berserk_move_walk : mmove_t =
    (firstframe:FRAME_walkc1; lastframe:FRAME_walkc11; frame:@berserk_frames_walk; endfunc:nil);

procedure berserk_walk(self : edict_p); cdecl;
begin
  self.monsterinfo.currentmove := @berserk_move_walk;
end;

{

  *****************************
  SKIPPED THIS FOR NOW!
  *****************************

   Running -> Arm raised in air    }

//void()	berserk_runb1	=[	$r_att1 ,	berserk_runb2	] {ai_run(21);};
//void()	berserk_runb2	=[	$r_att2 ,	berserk_runb3	] {ai_run(11);};
//void()	berserk_runb3	=[	$r_att3 ,	berserk_runb4	] {ai_run(21);};
//void()	berserk_runb4	=[	$r_att4 ,	berserk_runb5	] {ai_run(25);};
//void()	berserk_runb5	=[	$r_att5 ,	berserk_runb6	] {ai_run(18);};
//void()	berserk_runb6	=[	$r_att6 ,	berserk_runb7	] {ai_run(19);};
// running with arm in air : start loop
//void()	berserk_runb7	=[	$r_att7 ,	berserk_runb8	] {ai_run(21);};
//void()	berserk_runb8	=[	$r_att8 ,	berserk_runb9	] {ai_run(11);};
//void()	berserk_runb9	=[	$r_att9 ,	berserk_runb10	] {ai_run(21);};
//void()	berserk_runb10	=[	$r_att10 ,	berserk_runb11	] {ai_run(25);};
//void()	berserk_runb11	=[	$r_att11 ,	berserk_runb12	] {ai_run(18);};
//void()	berserk_runb12	=[	$r_att12 ,	berserk_runb7	] {ai_run(19);};
// running with arm in air : end loop

const
  berserk_frames_run1 : Array[0..5] of mframe_t =
    ((aifunc:ai_run; dist:21; thinkfunc:nil),
     (aifunc:ai_run; dist:11; thinkfunc:nil),
     (aifunc:ai_run; dist:21; thinkfunc:nil),
     (aifunc:ai_run; dist:25; thinkfunc:nil),
     (aifunc:ai_run; dist:18; thinkfunc:nil),
     (aifunc:ai_run; dist:19; thinkfunc:nil));

  berserk_move_run1 : mmove_t =
    (firstframe:FRAME_run1; lastframe:FRAME_run6; frame:@berserk_frames_run1; endfunc:nil);

procedure berserk_run(self : edict_p); cdecl;
begin
  if (self.monsterinfo.aiflags and AI_STAND_GROUND) <> 0 then
    self.monsterinfo.currentmove := @berserk_move_stand
  else
    self.monsterinfo.currentmove := @berserk_move_run1;
end;

procedure berserk_attack_spike(self : edict_p); cdecl;
var
  aim : vec3_t;
begin
  aim[0] := MELEE_DISTANCE;
  aim[1] := 0;
  aim[2] :=  -24;
  fire_hit(Self, aim, (15 + (rand() mod 6)), 400); // Faster attack -- upwards and backwards
end;

procedure berserk_swing(self : edict_p); cdecl;
begin
  gi.sound(self, CHAN_WEAPON, sound_punch, 1, ATTN_NORM, 0);
end;

const
  berserk_frames_attack_spike : Array[0..7] of mframe_t =
    ((aifunc:ai_charge; dist:0; thinkfunc:nil),
     (aifunc:ai_charge; dist:0; thinkfunc:nil),
     (aifunc:ai_charge; dist:0; thinkfunc:berserk_swing),
     (aifunc:ai_charge; dist:0; thinkfunc:berserk_attack_spike),
     (aifunc:ai_charge; dist:0; thinkfunc:nil),
     (aifunc:ai_charge; dist:0; thinkfunc:nil),
     (aifunc:ai_charge; dist:0; thinkfunc:nil),
     (aifunc:ai_charge; dist:0; thinkfunc:nil));

  berserk_move_attack_spike : mmove_t =
    (firstframe:FRAME_att_c1; lastframe:FRAME_att_c8; frame:@berserk_frames_attack_spike; endfunc:berserk_run);

procedure berserk_attack_club(self : edict_p); cdecl;
var
  aim : vec3_t;
begin
  VectorSet(aim, MELEE_DISTANCE, self.mins[0], -4);
  fire_hit(Self, aim, (5 + (rand() mod 6)), 400);		// Slower attack
end;

const
  berserk_frames_attack_club : Array[0..11] of mframe_t =
    ((aifunc:ai_charge; dist:0; thinkfunc:nil),
     (aifunc:ai_charge; dist:0; thinkfunc:nil),
     (aifunc:ai_charge; dist:0; thinkfunc:nil),
     (aifunc:ai_charge; dist:0; thinkfunc:nil),
     (aifunc:ai_charge; dist:0; thinkfunc:berserk_swing),
     (aifunc:ai_charge; dist:0; thinkfunc:nil),
     (aifunc:ai_charge; dist:0; thinkfunc:nil),
     (aifunc:ai_charge; dist:0; thinkfunc:nil),
     (aifunc:ai_charge; dist:0; thinkfunc:berserk_attack_club),
     (aifunc:ai_charge; dist:0; thinkfunc:nil),
     (aifunc:ai_charge; dist:0; thinkfunc:nil),
     (aifunc:ai_charge; dist:0; thinkfunc:nil));

  berserk_move_attack_club : mmove_t =
    (firstframe:FRAME_att_c9; lastframe:FRAME_att_c20; frame:@berserk_frames_attack_club; endfunc:berserk_run);

procedure berserk_strike(self : edict_p); cdecl;
begin
  //FIXME play impact sound
end;

const
  berserk_frames_attack_strike : Array[0..13] of mframe_t =
    ((aifunc:ai_move; dist:0;    thinkfunc:nil),
     (aifunc:ai_move; dist:0;    thinkfunc:nil),
     (aifunc:ai_move; dist:0;    thinkfunc:nil),
     (aifunc:ai_move; dist:0;    thinkfunc:berserk_swing),
     (aifunc:ai_move; dist:0;    thinkfunc:nil),
     (aifunc:ai_move; dist:0;    thinkfunc:nil),
     (aifunc:ai_move; dist:0;    thinkfunc:nil),
     (aifunc:ai_move; dist:0;    thinkfunc:berserk_strike),
     (aifunc:ai_move; dist:0;    thinkfunc:nil),
     (aifunc:ai_move; dist:0;    thinkfunc:nil),
     (aifunc:ai_move; dist:0;    thinkfunc:nil),
     (aifunc:ai_move; dist:0;    thinkfunc:nil),
     (aifunc:ai_move; dist:9.7;  thinkfunc:nil),
     (aifunc:ai_move; dist:13.6; thinkfunc:nil));

  berserk_move_attack_strike : mmove_t =
    (firstframe:FRAME_att_c21; lastframe:FRAME_att_c34; frame:@berserk_frames_attack_strike; endfunc:berserk_run);

procedure berserk_melee(self : edict_p); cdecl;
begin
  if (rand() mod 2) = 0 then
    self.monsterinfo.currentmove := @berserk_move_attack_spike
  else
    self.monsterinfo.currentmove := @berserk_move_attack_club;
end;


{
//void() 	berserk_atke1	=[	$r_attb1,	berserk_atke2	] {ai_run(9);;}
//void() 	berserk_atke2	=[	$r_attb2,	berserk_atke3	] {ai_run(6);};
//void() 	berserk_atke3	=[	$r_attb3,	berserk_atke4	] {ai_run(18.4);};
//void() 	berserk_atke4	=[	$r_attb4,	berserk_atke5	] {ai_run(25);};
//void() 	berserk_atke5	=[	$r_attb5,	berserk_atke6	] {ai_run(14);};
//void() 	berserk_atke6	=[	$r_attb6,	berserk_atke7	] {ai_run(20);};
//void() 	berserk_atke7	=[	$r_attb7,	berserk_atke8	] {ai_run(8.5);};
//void() 	berserk_atke8	=[	$r_attb8,	berserk_atke9	] {ai_run(3);};
//void() 	berserk_atke9	=[	$r_attb9,	berserk_atke10	] {ai_run(17.5);};
//void() 	berserk_atke10	=[	$r_attb10,	berserk_atke11	] {ai_run(17);};
//void() 	berserk_atke11	=[	$r_attb11,	berserk_atke12	] {ai_run(9);};
//void() 	berserk_atke12	=[	$r_attb12,	berserk_atke13	] {ai_run(25);};
//void() 	berserk_atke13	=[	$r_attb13,	berserk_atke14	] {ai_run(3.7);};
//void() 	berserk_atke14	=[	$r_attb14,	berserk_atke15	] {ai_run(2.6);};
//void() 	berserk_atke15	=[	$r_attb15,	berserk_atke16	] {ai_run(19);};
//void() 	berserk_atke16	=[	$r_attb16,	berserk_atke17	] {ai_run(25);};
//void() 	berserk_atke17	=[	$r_attb17,	berserk_atke18	] {ai_run(19.6);};
//void() 	berserk_atke18	=[	$r_attb18,	berserk_run1	] {ai_run(7.8);};


const
  berserk_frames_pain1 : Array[0..3] of mframe_t =
    ((aifunc:ai_move; dist:0; thinkfunc:nil),
     (aifunc:ai_move; dist:0; thinkfunc:nil),
     (aifunc:ai_move; dist:0; thinkfunc:nil),
     (aifunc:ai_move; dist:0; thinkfunc:nil));

  berserk_move_pain1 : mmove_t =
    (firstframe:FRAME_painc1; lastframe:FRAME_painc4; frame:@berserk_frames_pain1; endfunc:berserk_run);

  berserk_frames_pain2 : Array[0..19] of mframe_t =
    ((aifunc:ai_move; dist:0; thinkfunc:nil),
     (aifunc:ai_move; dist:0; thinkfunc:nil),
     (aifunc:ai_move; dist:0; thinkfunc:nil),
     (aifunc:ai_move; dist:0; thinkfunc:nil),
     (aifunc:ai_move; dist:0; thinkfunc:nil),
     (aifunc:ai_move; dist:0; thinkfunc:nil),
     (aifunc:ai_move; dist:0; thinkfunc:nil),
     (aifunc:ai_move; dist:0; thinkfunc:nil),
     (aifunc:ai_move; dist:0; thinkfunc:nil),
     (aifunc:ai_move; dist:0; thinkfunc:nil),
     (aifunc:ai_move; dist:0; thinkfunc:nil),
     (aifunc:ai_move; dist:0; thinkfunc:nil),
     (aifunc:ai_move; dist:0; thinkfunc:nil),
     (aifunc:ai_move; dist:0; thinkfunc:nil),
     (aifunc:ai_move; dist:0; thinkfunc:nil),
     (aifunc:ai_move; dist:0; thinkfunc:nil),
     (aifunc:ai_move; dist:0; thinkfunc:nil),
     (aifunc:ai_move; dist:0; thinkfunc:nil),
     (aifunc:ai_move; dist:0; thinkfunc:nil),
     (aifunc:ai_move; dist:0; thinkfunc:nil));

  berserk_move_pain2 : mmove_t =
    (firstframe:FRAME_painb1; lastframe:FRAME_painb20; frame:@berserk_frames_pain2; endfunc:berserk_run);

procedure berserk_pain(self, other : edict_p; kick : single; damage : integer); cdecl;
begin
  if (self.health < (self.max_health / 2)) then
    self.s.skinnum := 1;

  if (level.time < self.pain_debounce_time) then
    exit;

  self.pain_debounce_time := level.time + 3;
  gi.sound(self, CHAN_VOICE, sound_pain, 1, ATTN_NORM, 0);

  if skill.value = 3 then
    exit;		// no pain anims in nightmare

  if ((damage < 20) or (_random() < 0.5)) then
    self.monsterinfo.currentmove := @berserk_move_pain1
	else
    self.monsterinfo.currentmove := @berserk_move_pain2;
end;

procedure berserk_dead(self : edict_p); cdecl;
begin
  VectorSet(self.mins, -16, -16, -24);
  VectorSet(self.maxs,  16,  16,  -8);
  self.movetype := MOVETYPE_TOSS;
  self.svflags := self.svflags or SVF_DEADMONSTER;
  self.nextthink := 0;
  gi.linkentity(self);
end;

const
  berserk_frames_death1 : Array[0..12] of mframe_t =
    ((aifunc:ai_move; dist:0; thinkfunc:nil),
     (aifunc:ai_move; dist:0; thinkfunc:nil),
     (aifunc:ai_move; dist:0; thinkfunc:nil),
     (aifunc:ai_move; dist:0; thinkfunc:nil),
     (aifunc:ai_move; dist:0; thinkfunc:nil),
     (aifunc:ai_move; dist:0; thinkfunc:nil),
     (aifunc:ai_move; dist:0; thinkfunc:nil),
     (aifunc:ai_move; dist:0; thinkfunc:nil),
     (aifunc:ai_move; dist:0; thinkfunc:nil),
     (aifunc:ai_move; dist:0; thinkfunc:nil),
     (aifunc:ai_move; dist:0; thinkfunc:nil),
     (aifunc:ai_move; dist:0; thinkfunc:nil),
     (aifunc:ai_move; dist:0; thinkfunc:nil));

  berserk_move_death1 : mmove_t =
    (firstframe:FRAME_death1; lastframe:FRAME_death13; frame:@berserk_frames_death1; endfunc:berserk_dead);

  berserk_frames_death2 : Array[0..7] of mframe_t =
    ((aifunc:ai_move; dist:0; thinkfunc:nil),
     (aifunc:ai_move; dist:0; thinkfunc:nil),
     (aifunc:ai_move; dist:0; thinkfunc:nil),
     (aifunc:ai_move; dist:0; thinkfunc:nil),
     (aifunc:ai_move; dist:0; thinkfunc:nil),
     (aifunc:ai_move; dist:0; thinkfunc:nil),
     (aifunc:ai_move; dist:0; thinkfunc:nil),
     (aifunc:ai_move; dist:0; thinkfunc:nil));

  berserk_move_death2 : mmove_t =
    (firstframe:FRAME_deathc1; lastframe:FRAME_deathc8; frame:@berserk_frames_death2; endfunc:berserk_dead);

procedure berserk_die(self, inflictor, attacker : edict_p; damage : integer; const point : vec3_t); cdecl;
var
  n : integer;
begin
  if (self.health <= self.gib_health) then
  begin
    gi.sound(self, CHAN_VOICE, gi.soundindex('misc/udeath.wav'), 1, ATTN_NORM, 0);
    for n := 0 to 1 do
      ThrowGib(self, 'models/objects/gibs/bone/tris.md2', damage, GIB_ORGANIC);
    for n := 0 to 3 do
      ThrowGib(self, 'models/objects/gibs/sm_meat/tris.md2', damage, GIB_ORGANIC);
    ThrowHead(self, 'models/objects/gibs/head2/tris.md2', damage, GIB_ORGANIC);
    self.deadflag := DEAD_DEAD;
    exit;
  end;

  if (self.deadflag = DEAD_DEAD) then
    exit;

  gi.sound(self, CHAN_VOICE, sound_die, 1, ATTN_NORM, 0);
  self.deadflag := DEAD_DEAD;
  self.takedamage := DAMAGE_YES;

  if damage >= 50 then
    self.monsterinfo.currentmove := @berserk_move_death1
  else
    self.monsterinfo.currentmove := @berserk_move_death2;
end;


{QUAKED monster_berserk (1 .5 0) (-16 -16 -24) (16 16 32) Ambush Trigger_Spawn Sight
}
procedure SP_monster_berserk(self : edict_p);
begin
  if (deathmatch.Value <> 0) then
  begin
    G_FreeEdict(self);
    exit;
  end;

  // pre-caches
  sound_pain   := gi.soundindex('berserk/berpain2.wav');
  sound_die    := gi.soundindex('berserk/berdeth2.wav');
  sound_idle   := gi.soundindex('berserk/beridle1.wav');
  sound_punch  := gi.soundindex('berserk/attack.wav');
  sound_search := gi.soundindex('berserk/bersrch1.wav');
  sound_sight  := gi.soundindex('berserk/sight.wav');

  self.s.modelindex := gi.modelindex('models/monsters/berserk/tris.md2');
  VectorSet(self.mins, -16, -16, -24);
  VectorSet(self.maxs,  16,  16,  32);
  self.movetype := MOVETYPE_STEP;
  self.solid    := SOLID_BBOX;

  self.health     := 240;
  self.gib_health := -60;
  self.mass       := 250;

  self.pain := berserk_pain;
  self.die  := berserk_die;

  self.monsterinfo.stand  := berserk_stand;
  self.monsterinfo.walk   := berserk_walk;
  self.monsterinfo.run    := berserk_run;
  self.monsterinfo.dodge  := nil;
  self.monsterinfo.attack := nil;
  self.monsterinfo.melee  := berserk_melee;
  self.monsterinfo.sight  := berserk_sight;
  self.monsterinfo.search := berserk_search;

  self.monsterinfo.currentmove := @berserk_move_stand;
  self.monsterinfo.scale       := MODEL_SCALE;

  gi.linkentity(self);

  walkmonster_start(self);
end;

end.


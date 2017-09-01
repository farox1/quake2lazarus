{----------------------------------------------------------------------------}
{                                                                            }
{ File(s): adivtab.h                                                         }
{ Content: table of quotients and remainders for [-15...16] / [-15...16]     }
{                                                                            }
{ Initial conversion by : Jan Horn (jhorn@global.co.za)                      }
{ Initial conversion on : 12-Jan-2002                                        }
{                                                                            }
{ This File contains part of convertion of Quake2 source to ObjectPascal.    }
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
{ none                                                                       }
{----------------------------------------------------------------------------}
{ * TODO:                                                                    }
{ none                                                                       }
{----------------------------------------------------------------------------}

unit adivtab;

interface

const adivtab_t : Array[0..32*32-1] of Tadivtab_t = (
  // numerator = -15
  (quotient: 1; remainder: 0),
  (quotient: 1; remainder: -1),
  (quotient: 1; remainder: -2),
  (quotient: 1; remainder: -3),
  (quotient: 1; remainder: -4),
  (quotient: 1; remainder: -5),
  (quotient: 1; remainder: -6),
  (quotient: 1; remainder: -7),
  (quotient: 2; remainder: -1),
  (quotient: 2; remainder: -3),
  (quotient: 3; remainder: 0),
  (quotient: 3; remainder: -3),
  (quotient: 5; remainder: 0),
  (quotient: 7; remainder: -1),
  (quotient: 15; remainder: 0),
  (quotient: 0; remainder: 0),
  (quotient: -15; remainder: 0),
  (quotient: -8; remainder: 1),
  (quotient: -5; remainder: 0),
  (quotient: -4; remainder: 1),
  (quotient: -3; remainder: 0),
  (quotient: -3; remainder: 3),
  (quotient: -3; remainder: 6),
  (quotient: -2; remainder: 1),
  (quotient: -2; remainder: 3),
  (quotient: -2; remainder: 5),
  (quotient: -2; remainder: 7),
  (quotient: -2; remainder: 9),
  (quotient: -2; remainder: 11),
  (quotient: -2; remainder: 13),
  (quotient: -1; remainder: 0),
  (quotient: -1; remainder: 1),
  // numerator = -14
  (quotient: 0; remainder: -14),
  (quotient: 1; remainder: 0),
  (quotient: 1; remainder: -1),
  (quotient: 1; remainder: -2),
  (quotient: 1; remainder: -3),
  (quotient: 1; remainder: -4),
  (quotient: 1; remainder: -5),
  (quotient: 1; remainder: -6),
  (quotient: 2; remainder: 0),
  (quotient: 2; remainder: -2),
  (quotient: 2; remainder: -4),
  (quotient: 3; remainder: -2),
  (quotient: 4; remainder: -2),
  (quotient: 7; remainder: 0),
  (quotient: 14; remainder: 0),
  (quotient: 0; remainder: 0),
  (quotient: -14; remainder: 0),
  (quotient: -7; remainder: 0),
  (quotient: -5; remainder: 1),
  (quotient: -4; remainder: 2),
  (quotient: -3; remainder: 1),
  (quotient: -3; remainder: 4),
  (quotient: -2; remainder: 0),
  (quotient: -2; remainder: 2),
  (quotient: -2; remainder: 4),
  (quotient: -2; remainder: 6),
  (quotient: -2; remainder: 8),
  (quotient: -2; remainder: 10),
  (quotient: -2; remainder: 12),
  (quotient: -1; remainder: 0),
  (quotient: -1; remainder: 1),
  (quotient: -1; remainder: 2),
  // numerator = -13
  (quotient: 0; remainder: -13),
  (quotient: 0; remainder: -13),
  (quotient: 1; remainder: 0),
  (quotient: 1; remainder: -1),
  (quotient: 1; remainder: -2),
  (quotient: 1; remainder: -3),
  (quotient: 1; remainder: -4),
  (quotient: 1; remainder: -5),
  (quotient: 1; remainder: -6),
  (quotient: 2; remainder: -1),
  (quotient: 2; remainder: -3),
  (quotient: 3; remainder: -1),
  (quotient: 4; remainder: -1),
  (quotient: 6; remainder: -1),
  (quotient: 13; remainder: 0),
  (quotient: 0; remainder: 0),
  (quotient: -13; remainder: 0),
  (quotient: -7; remainder: 1),
  (quotient: -5; remainder: 2),
  (quotient: -4; remainder: 3),
  (quotient: -3; remainder: 2),
  (quotient: -3; remainder: 5),
  (quotient: -2; remainder: 1),
  (quotient: -2; remainder: 3),
  (quotient: -2; remainder: 5),
  (quotient: -2; remainder: 7),
  (quotient: -2; remainder: 9),
  (quotient: -2; remainder: 11),
  (quotient: -1; remainder: 0),
  (quotient: -1; remainder: 1),
  (quotient: -1; remainder: 2),
  (quotient: -1; remainder: 3),
  // numerator = -12
  (quotient: 0; remainder: -12),
  (quotient: 0; remainder: -12),
  (quotient: 0; remainder: -12),
  (quotient: 1; remainder: 0),
  (quotient: 1; remainder: -1),
  (quotient: 1; remainder: -2),
  (quotient: 1; remainder: -3),
  (quotient: 1; remainder: -4),
  (quotient: 1; remainder: -5),
  (quotient: 2; remainder: 0),
  (quotient: 2; remainder: -2),
  (quotient: 3; remainder: 0),
  (quotient: 4; remainder: 0),
  (quotient: 6; remainder: 0),
  (quotient: 12; remainder: 0),
  (quotient: 0; remainder: 0),
  (quotient: -12; remainder: 0),
  (quotient: -6; remainder: 0),
  (quotient: -4; remainder: 0),
  (quotient: -3; remainder: 0),
  (quotient: -3; remainder: 3),
  (quotient: -2; remainder: 0),
  (quotient: -2; remainder: 2),
  (quotient: -2; remainder: 4),
  (quotient: -2; remainder: 6),
  (quotient: -2; remainder: 8),
  (quotient: -2; remainder: 10),
  (quotient: -1; remainder: 0),
  (quotient: -1; remainder: 1),
  (quotient: -1; remainder: 2),
  (quotient: -1; remainder: 3),
  (quotient: -1; remainder: 4),
  // numerator = -11
  (quotient: 0; remainder: -11),
  (quotient: 0; remainder: -11),
  (quotient: 0; remainder: -11),
  (quotient: 0; remainder: -11),
  (quotient: 1; remainder: 0),
  (quotient: 1; remainder: -1),
  (quotient: 1; remainder: -2),
  (quotient: 1; remainder: -3),
  (quotient: 1; remainder: -4),
  (quotient: 1; remainder: -5),
  (quotient: 2; remainder: -1),
  (quotient: 2; remainder: -3),
  (quotient: 3; remainder: -2),
  (quotient: 5; remainder: -1),
  (quotient: 11; remainder: 0),
  (quotient: 0; remainder: 0),
  (quotient: -11; remainder: 0),
  (quotient: -6; remainder: 1),
  (quotient: -4; remainder: 1),
  (quotient: -3; remainder: 1),
  (quotient: -3; remainder: 4),
  (quotient: -2; remainder: 1),
  (quotient: -2; remainder: 3),
  (quotient: -2; remainder: 5),
  (quotient: -2; remainder: 7),
  (quotient: -2; remainder: 9),
  (quotient: -1; remainder: 0),
  (quotient: -1; remainder: 1),
  (quotient: -1; remainder: 2),
  (quotient: -1; remainder: 3),
  (quotient: -1; remainder: 4),
  (quotient: -1; remainder: 5),
  // numerator = -10
  (quotient: 0; remainder: -10),
  (quotient: 0; remainder: -10),
  (quotient: 0; remainder: -10),
  (quotient: 0; remainder: -10),
  (quotient: 0; remainder: -10),
  (quotient: 1; remainder: 0),
  (quotient: 1; remainder: -1),
  (quotient: 1; remainder: -2),
  (quotient: 1; remainder: -3),
  (quotient: 1; remainder: -4),
  (quotient: 2; remainder: 0),
  (quotient: 2; remainder: -2),
  (quotient: 3; remainder: -1),
  (quotient: 5; remainder: 0),
  (quotient: 10; remainder: 0),
  (quotient: 0; remainder: 0),
  (quotient: -10; remainder: 0),
  (quotient: -5; remainder: 0),
  (quotient: -4; remainder: 2),
  (quotient: -3; remainder: 2),
  (quotient: -2; remainder: 0),
  (quotient: -2; remainder: 2),
  (quotient: -2; remainder: 4),
  (quotient: -2; remainder: 6),
  (quotient: -2; remainder: 8),
  (quotient: -1; remainder: 0),
  (quotient: -1; remainder: 1),
  (quotient: -1; remainder: 2),
  (quotient: -1; remainder: 3),
  (quotient: -1; remainder: 4),
  (quotient: -1; remainder: 5),
  (quotient: -1; remainder: 6),
  // numerator = -9
  (quotient: 0; remainder: -9),
  (quotient: 0; remainder: -9),
  (quotient: 0; remainder: -9),
  (quotient: 0; remainder: -9),
  (quotient: 0; remainder: -9),
  (quotient: 0; remainder: -9),
  (quotient: 1; remainder: 0),
  (quotient: 1; remainder: -1),
  (quotient: 1; remainder: -2),
  (quotient: 1; remainder: -3),
  (quotient: 1; remainder: -4),
  (quotient: 2; remainder: -1),
  (quotient: 3; remainder: 0),
  (quotient: 4; remainder: -1),
  (quotient: 9; remainder: 0),
  (quotient: 0; remainder: 0),
  (quotient: -9; remainder: 0),
  (quotient: -5; remainder: 1),
  (quotient: -3; remainder: 0),
  (quotient: -3; remainder: 3),
  (quotient: -2; remainder: 1),
  (quotient: -2; remainder: 3),
  (quotient: -2; remainder: 5),
  (quotient: -2; remainder: 7),
  (quotient: -1; remainder: 0),
  (quotient: -1; remainder: 1),
  (quotient: -1; remainder: 2),
  (quotient: -1; remainder: 3),
  (quotient: -1; remainder: 4),
  (quotient: -1; remainder: 5),
  (quotient: -1; remainder: 6),
  (quotient: -1; remainder: 7),
  // numerator = -8
  (quotient: 0; remainder: -8),
  (quotient: 0; remainder: -8),
  (quotient: 0; remainder: -8),
  (quotient: 0; remainder: -8),
  (quotient: 0; remainder: -8),
  (quotient: 0; remainder: -8),
  (quotient: 0; remainder: -8),
  (quotient: 1; remainder: 0),
  (quotient: 1; remainder: -1),
  (quotient: 1; remainder: -2),
  (quotient: 1; remainder: -3),
  (quotient: 2; remainder: 0),
  (quotient: 2; remainder: -2),
  (quotient: 4; remainder: 0),
  (quotient: 8; remainder: 0),
  (quotient: 0; remainder: 0),
  (quotient: -8; remainder: 0),
  (quotient: -4; remainder: 0),
  (quotient: -3; remainder: 1),
  (quotient: -2; remainder: 0),
  (quotient: -2; remainder: 2),
  (quotient: -2; remainder: 4),
  (quotient: -2; remainder: 6),
  (quotient: -1; remainder: 0),
  (quotient: -1; remainder: 1),
  (quotient: -1; remainder: 2),
  (quotient: -1; remainder: 3),
  (quotient: -1; remainder: 4),
  (quotient: -1; remainder: 5),
  (quotient: -1; remainder: 6),
  (quotient: -1; remainder: 7),
  (quotient: -1; remainder: 8),
  // numerator = -7
  (quotient: 0; remainder: -7),
  (quotient: 0; remainder: -7),
  (quotient: 0; remainder: -7),
  (quotient: 0; remainder: -7),
  (quotient: 0; remainder: -7),
  (quotient: 0; remainder: -7),
  (quotient: 0; remainder: -7),
  (quotient: 0; remainder: -7),
  (quotient: 1; remainder: 0),
  (quotient: 1; remainder: -1),
  (quotient: 1; remainder: -2),
  (quotient: 1; remainder: -3),
  (quotient: 2; remainder: -1),
  (quotient: 3; remainder: -1),
  (quotient: 7; remainder: 0),
  (quotient: 0; remainder: 0),
  (quotient: -7; remainder: 0),
  (quotient: -4; remainder: 1),
  (quotient: -3; remainder: 2),
  (quotient: -2; remainder: 1),
  (quotient: -2; remainder: 3),
  (quotient: -2; remainder: 5),
  (quotient: -1; remainder: 0),
  (quotient: -1; remainder: 1),
  (quotient: -1; remainder: 2),
  (quotient: -1; remainder: 3),
  (quotient: -1; remainder: 4),
  (quotient: -1; remainder: 5),
  (quotient: -1; remainder: 6),
  (quotient: -1; remainder: 7),
  (quotient: -1; remainder: 8),
  (quotient: -1; remainder: 9),
  // numerator = -6
  (quotient: 0; remainder: -6),
  (quotient: 0; remainder: -6),
  (quotient: 0; remainder: -6),
  (quotient: 0; remainder: -6),
  (quotient: 0; remainder: -6),
  (quotient: 0; remainder: -6),
  (quotient: 0; remainder: -6),
  (quotient: 0; remainder: -6),
  (quotient: 0; remainder: -6),
  (quotient: 1; remainder: 0),
  (quotient: 1; remainder: -1),
  (quotient: 1; remainder: -2),
  (quotient: 2; remainder: 0),
  (quotient: 3; remainder: 0),
  (quotient: 6; remainder: 0),
  (quotient: 0; remainder: 0),
  (quotient: -6; remainder: 0),
  (quotient: -3; remainder: 0),
  (quotient: -2; remainder: 0),
  (quotient: -2; remainder: 2),
  (quotient: -2; remainder: 4),
  (quotient: -1; remainder: 0),
  (quotient: -1; remainder: 1),
  (quotient: -1; remainder: 2),
  (quotient: -1; remainder: 3),
  (quotient: -1; remainder: 4),
  (quotient: -1; remainder: 5),
  (quotient: -1; remainder: 6),
  (quotient: -1; remainder: 7),
  (quotient: -1; remainder: 8),
  (quotient: -1; remainder: 9),
  (quotient: -1; remainder: 10),
  // numerator = -5
  (quotient: 0; remainder: -5),
  (quotient: 0; remainder: -5),
  (quotient: 0; remainder: -5),
  (quotient: 0; remainder: -5),
  (quotient: 0; remainder: -5),
  (quotient: 0; remainder: -5),
  (quotient: 0; remainder: -5),
  (quotient: 0; remainder: -5),
  (quotient: 0; remainder: -5),
  (quotient: 0; remainder: -5),
  (quotient: 1; remainder: 0),
  (quotient: 1; remainder: -1),
  (quotient: 1; remainder: -2),
  (quotient: 2; remainder: -1),
  (quotient: 5; remainder: 0),
  (quotient: 0; remainder: 0),
  (quotient: -5; remainder: 0),
  (quotient: -3; remainder: 1),
  (quotient: -2; remainder: 1),
  (quotient: -2; remainder: 3),
  (quotient: -1; remainder: 0),
  (quotient: -1; remainder: 1),
  (quotient: -1; remainder: 2),
  (quotient: -1; remainder: 3),
  (quotient: -1; remainder: 4),
  (quotient: -1; remainder: 5),
  (quotient: -1; remainder: 6),
  (quotient: -1; remainder: 7),
  (quotient: -1; remainder: 8),
  (quotient: -1; remainder: 9),
  (quotient: -1; remainder: 10),
  (quotient: -1; remainder: 11),
  // numerator = -4
  (quotient: 0; remainder: -4),
  (quotient: 0; remainder: -4),
  (quotient: 0; remainder: -4),
  (quotient: 0; remainder: -4),
  (quotient: 0; remainder: -4),
  (quotient: 0; remainder: -4),
  (quotient: 0; remainder: -4),
  (quotient: 0; remainder: -4),
  (quotient: 0; remainder: -4),
  (quotient: 0; remainder: -4),
  (quotient: 0; remainder: -4),
  (quotient: 1; remainder: 0),
  (quotient: 1; remainder: -1),
  (quotient: 2; remainder: 0),
  (quotient: 4; remainder: 0),
  (quotient: 0; remainder: 0),
  (quotient: -4; remainder: 0),
  (quotient: -2; remainder: 0),
  (quotient: -2; remainder: 2),
  (quotient: -1; remainder: 0),
  (quotient: -1; remainder: 1),
  (quotient: -1; remainder: 2),
  (quotient: -1; remainder: 3),
  (quotient: -1; remainder: 4),
  (quotient: -1; remainder: 5),
  (quotient: -1; remainder: 6),
  (quotient: -1; remainder: 7),
  (quotient: -1; remainder: 8),
  (quotient: -1; remainder: 9),
  (quotient: -1; remainder: 10),
  (quotient: -1; remainder: 11),
  (quotient: -1; remainder: 12),
  // numerator = -3
  (quotient: 0; remainder: -3),
  (quotient: 0; remainder: -3),
  (quotient: 0; remainder: -3),
  (quotient: 0; remainder: -3),
  (quotient: 0; remainder: -3),
  (quotient: 0; remainder: -3),
  (quotient: 0; remainder: -3),
  (quotient: 0; remainder: -3),
  (quotient: 0; remainder: -3),
  (quotient: 0; remainder: -3),
  (quotient: 0; remainder: -3),
  (quotient: 0; remainder: -3),
  (quotient: 1; remainder: 0),
  (quotient: 1; remainder: -1),
  (quotient: 3; remainder: 0),
  (quotient: 0; remainder: 0),
  (quotient: -3; remainder: 0),
  (quotient: -2; remainder: 1),
  (quotient: -1; remainder: 0),
  (quotient: -1; remainder: 1),
  (quotient: -1; remainder: 2),
  (quotient: -1; remainder: 3),
  (quotient: -1; remainder: 4),
  (quotient: -1; remainder: 5),
  (quotient: -1; remainder: 6),
  (quotient: -1; remainder: 7),
  (quotient: -1; remainder: 8),
  (quotient: -1; remainder: 9),
  (quotient: -1; remainder: 10),
  (quotient: -1; remainder: 11),
  (quotient: -1; remainder: 12),
  (quotient: -1; remainder: 13),
  // numerator = -2
  (quotient: 0; remainder: -2),
  (quotient: 0; remainder: -2),
  (quotient: 0; remainder: -2),
  (quotient: 0; remainder: -2),
  (quotient: 0; remainder: -2),
  (quotient: 0; remainder: -2),
  (quotient: 0; remainder: -2),
  (quotient: 0; remainder: -2),
  (quotient: 0; remainder: -2),
  (quotient: 0; remainder: -2),
  (quotient: 0; remainder: -2),
  (quotient: 0; remainder: -2),
  (quotient: 0; remainder: -2),
  (quotient: 1; remainder: 0),
  (quotient: 2; remainder: 0),
  (quotient: 0; remainder: 0),
  (quotient: -2; remainder: 0),
  (quotient: -1; remainder: 0),
  (quotient: -1; remainder: 1),
  (quotient: -1; remainder: 2),
  (quotient: -1; remainder: 3),
  (quotient: -1; remainder: 4),
  (quotient: -1; remainder: 5),
  (quotient: -1; remainder: 6),
  (quotient: -1; remainder: 7),
  (quotient: -1; remainder: 8),
  (quotient: -1; remainder: 9),
  (quotient: -1; remainder: 10),
  (quotient: -1; remainder: 11),
  (quotient: -1; remainder: 12),
  (quotient: -1; remainder: 13),
  (quotient: -1; remainder: 14),
  // numerator = -1
  (quotient: 0; remainder: -1),
  (quotient: 0; remainder: -1),
  (quotient: 0; remainder: -1),
  (quotient: 0; remainder: -1),
  (quotient: 0; remainder: -1),
  (quotient: 0; remainder: -1),
  (quotient: 0; remainder: -1),
  (quotient: 0; remainder: -1),
  (quotient: 0; remainder: -1),
  (quotient: 0; remainder: -1),
  (quotient: 0; remainder: -1),
  (quotient: 0; remainder: -1),
  (quotient: 0; remainder: -1),
  (quotient: 0; remainder: -1),
  (quotient: 1; remainder: 0),
  (quotient: 0; remainder: 0),
  (quotient: -1; remainder: 0),
  (quotient: -1; remainder: 1),
  (quotient: -1; remainder: 2),
  (quotient: -1; remainder: 3),
  (quotient: -1; remainder: 4),
  (quotient: -1; remainder: 5),
  (quotient: -1; remainder: 6),
  (quotient: -1; remainder: 7),
  (quotient: -1; remainder: 8),
  (quotient: -1; remainder: 9),
  (quotient: -1; remainder: 10),
  (quotient: -1; remainder: 11),
  (quotient: -1; remainder: 12),
  (quotient: -1; remainder: 13),
  (quotient: -1; remainder: 14),
  (quotient: -1; remainder: 15),
  // numerator = 0
  (quotient: 0; remainder: 0),
  (quotient: 0; remainder: 0),
  (quotient: 0; remainder: 0),
  (quotient: 0; remainder: 0),
  (quotient: 0; remainder: 0),
  (quotient: 0; remainder: 0),
  (quotient: 0; remainder: 0),
  (quotient: 0; remainder: 0),
  (quotient: 0; remainder: 0),
  (quotient: 0; remainder: 0),
  (quotient: 0; remainder: 0),
  (quotient: 0; remainder: 0),
  (quotient: 0; remainder: 0),
  (quotient: 0; remainder: 0),
  (quotient: 0; remainder: 0),
  (quotient: 0; remainder: 0),
  (quotient: 0; remainder: 0),
  (quotient: 0; remainder: 0),
  (quotient: 0; remainder: 0),
  (quotient: 0; remainder: 0),
  (quotient: 0; remainder: 0),
  (quotient: 0; remainder: 0),
  (quotient: 0; remainder: 0),
  (quotient: 0; remainder: 0),
  (quotient: 0; remainder: 0),
  (quotient: 0; remainder: 0),
  (quotient: 0; remainder: 0),
  (quotient: 0; remainder: 0),
  (quotient: 0; remainder: 0),
  (quotient: 0; remainder: 0),
  (quotient: 0; remainder: 0),
  (quotient: 0; remainder: 0),
  // numerator = 1
  (quotient: -1; remainder: -14),
  (quotient: -1; remainder: -13),
  (quotient: -1; remainder: -12),
  (quotient: -1; remainder: -11),
  (quotient: -1; remainder: -10),
  (quotient: -1; remainder: -9),
  (quotient: -1; remainder: -8),
  (quotient: -1; remainder: -7),
  (quotient: -1; remainder: -6),
  (quotient: -1; remainder: -5),
  (quotient: -1; remainder: -4),
  (quotient: -1; remainder: -3),
  (quotient: -1; remainder: -2),
  (quotient: -1; remainder: -1),
  (quotient: -1; remainder: 0),
  (quotient: 0; remainder: 0),
  (quotient: 1; remainder: 0),
  (quotient: 0; remainder: 1),
  (quotient: 0; remainder: 1),
  (quotient: 0; remainder: 1),
  (quotient: 0; remainder: 1),
  (quotient: 0; remainder: 1),
  (quotient: 0; remainder: 1),
  (quotient: 0; remainder: 1),
  (quotient: 0; remainder: 1),
  (quotient: 0; remainder: 1),
  (quotient: 0; remainder: 1),
  (quotient: 0; remainder: 1),
  (quotient: 0; remainder: 1),
  (quotient: 0; remainder: 1),
  (quotient: 0; remainder: 1),
  (quotient: 0; remainder: 1),
  // numerator = 2
  (quotient: -1; remainder: -13),
  (quotient: -1; remainder: -12),
  (quotient: -1; remainder: -11),
  (quotient: -1; remainder: -10),
  (quotient: -1; remainder: -9),
  (quotient: -1; remainder: -8),
  (quotient: -1; remainder: -7),
  (quotient: -1; remainder: -6),
  (quotient: -1; remainder: -5),
  (quotient: -1; remainder: -4),
  (quotient: -1; remainder: -3),
  (quotient: -1; remainder: -2),
  (quotient: -1; remainder: -1),
  (quotient: -1; remainder: 0),
  (quotient: -2; remainder: 0),
  (quotient: 0; remainder: 0),
  (quotient: 2; remainder: 0),
  (quotient: 1; remainder: 0),
  (quotient: 0; remainder: 2),
  (quotient: 0; remainder: 2),
  (quotient: 0; remainder: 2),
  (quotient: 0; remainder: 2),
  (quotient: 0; remainder: 2),
  (quotient: 0; remainder: 2),
  (quotient: 0; remainder: 2),
  (quotient: 0; remainder: 2),
  (quotient: 0; remainder: 2),
  (quotient: 0; remainder: 2),
  (quotient: 0; remainder: 2),
  (quotient: 0; remainder: 2),
  (quotient: 0; remainder: 2),
  (quotient: 0; remainder: 2),
  // numerator = 3
  (quotient: -1; remainder: -12),
  (quotient: -1; remainder: -11),
  (quotient: -1; remainder: -10),
  (quotient: -1; remainder: -9),
  (quotient: -1; remainder: -8),
  (quotient: -1; remainder: -7),
  (quotient: -1; remainder: -6),
  (quotient: -1; remainder: -5),
  (quotient: -1; remainder: -4),
  (quotient: -1; remainder: -3),
  (quotient: -1; remainder: -2),
  (quotient: -1; remainder: -1),
  (quotient: -1; remainder: 0),
  (quotient: -2; remainder: -1),
  (quotient: -3; remainder: 0),
  (quotient: 0; remainder: 0),
  (quotient: 3; remainder: 0),
  (quotient: 1; remainder: 1),
  (quotient: 1; remainder: 0),
  (quotient: 0; remainder: 3),
  (quotient: 0; remainder: 3),
  (quotient: 0; remainder: 3),
  (quotient: 0; remainder: 3),
  (quotient: 0; remainder: 3),
  (quotient: 0; remainder: 3),
  (quotient: 0; remainder: 3),
  (quotient: 0; remainder: 3),
  (quotient: 0; remainder: 3),
  (quotient: 0; remainder: 3),
  (quotient: 0; remainder: 3),
  (quotient: 0; remainder: 3),
  (quotient: 0; remainder: 3),
  // numerator = 4
  (quotient: -1; remainder: -11),
  (quotient: -1; remainder: -10),
  (quotient: -1; remainder: -9),
  (quotient: -1; remainder: -8),
  (quotient: -1; remainder: -7),
  (quotient: -1; remainder: -6),
  (quotient: -1; remainder: -5),
  (quotient: -1; remainder: -4),
  (quotient: -1; remainder: -3),
  (quotient: -1; remainder: -2),
  (quotient: -1; remainder: -1),
  (quotient: -1; remainder: 0),
  (quotient: -2; remainder: -2),
  (quotient: -2; remainder: 0),
  (quotient: -4; remainder: 0),
  (quotient: 0; remainder: 0),
  (quotient: 4; remainder: 0),
  (quotient: 2; remainder: 0),
  (quotient: 1; remainder: 1),
  (quotient: 1; remainder: 0),
  (quotient: 0; remainder: 4),
  (quotient: 0; remainder: 4),
  (quotient: 0; remainder: 4),
  (quotient: 0; remainder: 4),
  (quotient: 0; remainder: 4),
  (quotient: 0; remainder: 4),
  (quotient: 0; remainder: 4),
  (quotient: 0; remainder: 4),
  (quotient: 0; remainder: 4),
  (quotient: 0; remainder: 4),
  (quotient: 0; remainder: 4),
  (quotient: 0; remainder: 4),
  // numerator = 5
  (quotient: -1; remainder: -10),
  (quotient: -1; remainder: -9),
  (quotient: -1; remainder: -8),
  (quotient: -1; remainder: -7),
  (quotient: -1; remainder: -6),
  (quotient: -1; remainder: -5),
  (quotient: -1; remainder: -4),
  (quotient: -1; remainder: -3),
  (quotient: -1; remainder: -2),
  (quotient: -1; remainder: -1),
  (quotient: -1; remainder: 0),
  (quotient: -2; remainder: -3),
  (quotient: -2; remainder: -1),
  (quotient: -3; remainder: -1),
  (quotient: -5; remainder: 0),
  (quotient: 0; remainder: 0),
  (quotient: 5; remainder: 0),
  (quotient: 2; remainder: 1),
  (quotient: 1; remainder: 2),
  (quotient: 1; remainder: 1),
  (quotient: 1; remainder: 0),
  (quotient: 0; remainder: 5),
  (quotient: 0; remainder: 5),
  (quotient: 0; remainder: 5),
  (quotient: 0; remainder: 5),
  (quotient: 0; remainder: 5),
  (quotient: 0; remainder: 5),
  (quotient: 0; remainder: 5),
  (quotient: 0; remainder: 5),
  (quotient: 0; remainder: 5),
  (quotient: 0; remainder: 5),
  (quotient: 0; remainder: 5),
  // numerator = 6
  (quotient: -1; remainder: -9),
  (quotient: -1; remainder: -8),
  (quotient: -1; remainder: -7),
  (quotient: -1; remainder: -6),
  (quotient: -1; remainder: -5),
  (quotient: -1; remainder: -4),
  (quotient: -1; remainder: -3),
  (quotient: -1; remainder: -2),
  (quotient: -1; remainder: -1),
  (quotient: -1; remainder: 0),
  (quotient: -2; remainder: -4),
  (quotient: -2; remainder: -2),
  (quotient: -2; remainder: 0),
  (quotient: -3; remainder: 0),
  (quotient: -6; remainder: 0),
  (quotient: 0; remainder: 0),
  (quotient: 6; remainder: 0),
  (quotient: 3; remainder: 0),
  (quotient: 2; remainder: 0),
  (quotient: 1; remainder: 2),
  (quotient: 1; remainder: 1),
  (quotient: 1; remainder: 0),
  (quotient: 0; remainder: 6),
  (quotient: 0; remainder: 6),
  (quotient: 0; remainder: 6),
  (quotient: 0; remainder: 6),
  (quotient: 0; remainder: 6),
  (quotient: 0; remainder: 6),
  (quotient: 0; remainder: 6),
  (quotient: 0; remainder: 6),
  (quotient: 0; remainder: 6),
  (quotient: 0; remainder: 6),
  // numerator = 7
  (quotient: -1; remainder: -8),
  (quotient: -1; remainder: -7),
  (quotient: -1; remainder: -6),
  (quotient: -1; remainder: -5),
  (quotient: -1; remainder: -4),
  (quotient: -1; remainder: -3),
  (quotient: -1; remainder: -2),
  (quotient: -1; remainder: -1),
  (quotient: -1; remainder: 0),
  (quotient: -2; remainder: -5),
  (quotient: -2; remainder: -3),
  (quotient: -2; remainder: -1),
  (quotient: -3; remainder: -2),
  (quotient: -4; remainder: -1),
  (quotient: -7; remainder: 0),
  (quotient: 0; remainder: 0),
  (quotient: 7; remainder: 0),
  (quotient: 3; remainder: 1),
  (quotient: 2; remainder: 1),
  (quotient: 1; remainder: 3),
  (quotient: 1; remainder: 2),
  (quotient: 1; remainder: 1),
  (quotient: 1; remainder: 0),
  (quotient: 0; remainder: 7),
  (quotient: 0; remainder: 7),
  (quotient: 0; remainder: 7),
  (quotient: 0; remainder: 7),
  (quotient: 0; remainder: 7),
  (quotient: 0; remainder: 7),
  (quotient: 0; remainder: 7),
  (quotient: 0; remainder: 7),
  (quotient: 0; remainder: 7),
  // numerator = 8
  (quotient: -1; remainder: -7),
  (quotient: -1; remainder: -6),
  (quotient: -1; remainder: -5),
  (quotient: -1; remainder: -4),
  (quotient: -1; remainder: -3),
  (quotient: -1; remainder: -2),
  (quotient: -1; remainder: -1),
  (quotient: -1; remainder: 0),
  (quotient: -2; remainder: -6),
  (quotient: -2; remainder: -4),
  (quotient: -2; remainder: -2),
  (quotient: -2; remainder: 0),
  (quotient: -3; remainder: -1),
  (quotient: -4; remainder: 0),
  (quotient: -8; remainder: 0),
  (quotient: 0; remainder: 0),
  (quotient: 8; remainder: 0),
  (quotient: 4; remainder: 0),
  (quotient: 2; remainder: 2),
  (quotient: 2; remainder: 0),
  (quotient: 1; remainder: 3),
  (quotient: 1; remainder: 2),
  (quotient: 1; remainder: 1),
  (quotient: 1; remainder: 0),
  (quotient: 0; remainder: 8),
  (quotient: 0; remainder: 8),
  (quotient: 0; remainder: 8),
  (quotient: 0; remainder: 8),
  (quotient: 0; remainder: 8),
  (quotient: 0; remainder: 8),
  (quotient: 0; remainder: 8),
  (quotient: 0; remainder: 8),
  // numerator = 9
  (quotient: -1; remainder: -6),
  (quotient: -1; remainder: -5),
  (quotient: -1; remainder: -4),
  (quotient: -1; remainder: -3),
  (quotient: -1; remainder: -2),
  (quotient: -1; remainder: -1),
  (quotient: -1; remainder: 0),
  (quotient: -2; remainder: -7),
  (quotient: -2; remainder: -5),
  (quotient: -2; remainder: -3),
  (quotient: -2; remainder: -1),
  (quotient: -3; remainder: -3),
  (quotient: -3; remainder: 0),
  (quotient: -5; remainder: -1),
  (quotient: -9; remainder: 0),
  (quotient: 0; remainder: 0),
  (quotient: 9; remainder: 0),
  (quotient: 4; remainder: 1),
  (quotient: 3; remainder: 0),
  (quotient: 2; remainder: 1),
  (quotient: 1; remainder: 4),
  (quotient: 1; remainder: 3),
  (quotient: 1; remainder: 2),
  (quotient: 1; remainder: 1),
  (quotient: 1; remainder: 0),
  (quotient: 0; remainder: 9),
  (quotient: 0; remainder: 9),
  (quotient: 0; remainder: 9),
  (quotient: 0; remainder: 9),
  (quotient: 0; remainder: 9),
  (quotient: 0; remainder: 9),
  (quotient: 0; remainder: 9),
  // numerator = 10
  (quotient: -1; remainder: -5),
  (quotient: -1; remainder: -4),
  (quotient: -1; remainder: -3),
  (quotient: -1; remainder: -2),
  (quotient: -1; remainder: -1),
  (quotient: -1; remainder: 0),
  (quotient: -2; remainder: -8),
  (quotient: -2; remainder: -6),
  (quotient: -2; remainder: -4),
  (quotient: -2; remainder: -2),
  (quotient: -2; remainder: 0),
  (quotient: -3; remainder: -2),
  (quotient: -4; remainder: -2),
  (quotient: -5; remainder: 0),
  (quotient: -10; remainder: 0),
  (quotient: 0; remainder: 0),
  (quotient: 10; remainder: 0),
  (quotient: 5; remainder: 0),
  (quotient: 3; remainder: 1),
  (quotient: 2; remainder: 2),
  (quotient: 2; remainder: 0),
  (quotient: 1; remainder: 4),
  (quotient: 1; remainder: 3),
  (quotient: 1; remainder: 2),
  (quotient: 1; remainder: 1),
  (quotient: 1; remainder: 0),
  (quotient: 0; remainder: 10),
  (quotient: 0; remainder: 10),
  (quotient: 0; remainder: 10),
  (quotient: 0; remainder: 10),
  (quotient: 0; remainder: 10),
  (quotient: 0; remainder: 10),
  // numerator = 11
  (quotient: -1; remainder: -4),
  (quotient: -1; remainder: -3),
  (quotient: -1; remainder: -2),
  (quotient: -1; remainder: -1),
  (quotient: -1; remainder: 0),
  (quotient: -2; remainder: -9),
  (quotient: -2; remainder: -7),
  (quotient: -2; remainder: -5),
  (quotient: -2; remainder: -3),
  (quotient: -2; remainder: -1),
  (quotient: -3; remainder: -4),
  (quotient: -3; remainder: -1),
  (quotient: -4; remainder: -1),
  (quotient: -6; remainder: -1),
  (quotient: -11; remainder: 0),
  (quotient: 0; remainder: 0),
  (quotient: 11; remainder: 0),
  (quotient: 5; remainder: 1),
  (quotient: 3; remainder: 2),
  (quotient: 2; remainder: 3),
  (quotient: 2; remainder: 1),
  (quotient: 1; remainder: 5),
  (quotient: 1; remainder: 4),
  (quotient: 1; remainder: 3),
  (quotient: 1; remainder: 2),
  (quotient: 1; remainder: 1),
  (quotient: 1; remainder: 0),
  (quotient: 0; remainder: 11),
  (quotient: 0; remainder: 11),
  (quotient: 0; remainder: 11),
  (quotient: 0; remainder: 11),
  (quotient: 0; remainder: 11),
  // numerator = 12
  (quotient: -1; remainder: -3),
  (quotient: -1; remainder: -2),
  (quotient: -1; remainder: -1),
  (quotient: -1; remainder: 0),
  (quotient: -2; remainder: -10),
  (quotient: -2; remainder: -8),
  (quotient: -2; remainder: -6),
  (quotient: -2; remainder: -4),
  (quotient: -2; remainder: -2),
  (quotient: -2; remainder: 0),
  (quotient: -3; remainder: -3),
  (quotient: -3; remainder: 0),
  (quotient: -4; remainder: 0),
  (quotient: -6; remainder: 0),
  (quotient: -12; remainder: 0),
  (quotient: 0; remainder: 0),
  (quotient: 12; remainder: 0),
  (quotient: 6; remainder: 0),
  (quotient: 4; remainder: 0),
  (quotient: 3; remainder: 0),
  (quotient: 2; remainder: 2),
  (quotient: 2; remainder: 0),
  (quotient: 1; remainder: 5),
  (quotient: 1; remainder: 4),
  (quotient: 1; remainder: 3),
  (quotient: 1; remainder: 2),
  (quotient: 1; remainder: 1),
  (quotient: 1; remainder: 0),
  (quotient: 0; remainder: 12),
  (quotient: 0; remainder: 12),
  (quotient: 0; remainder: 12),
  (quotient: 0; remainder: 12),
  // numerator = 13
  (quotient: -1; remainder: -2),
  (quotient: -1; remainder: -1),
  (quotient: -1; remainder: 0),
  (quotient: -2; remainder: -11),
  (quotient: -2; remainder: -9),
  (quotient: -2; remainder: -7),
  (quotient: -2; remainder: -5),
  (quotient: -2; remainder: -3),
  (quotient: -2; remainder: -1),
  (quotient: -3; remainder: -5),
  (quotient: -3; remainder: -2),
  (quotient: -4; remainder: -3),
  (quotient: -5; remainder: -2),
  (quotient: -7; remainder: -1),
  (quotient: -13; remainder: 0),
  (quotient: 0; remainder: 0),
  (quotient: 13; remainder: 0),
  (quotient: 6; remainder: 1),
  (quotient: 4; remainder: 1),
  (quotient: 3; remainder: 1),
  (quotient: 2; remainder: 3),
  (quotient: 2; remainder: 1),
  (quotient: 1; remainder: 6),
  (quotient: 1; remainder: 5),
  (quotient: 1; remainder: 4),
  (quotient: 1; remainder: 3),
  (quotient: 1; remainder: 2),
  (quotient: 1; remainder: 1),
  (quotient: 1; remainder: 0),
  (quotient: 0; remainder: 13),
  (quotient: 0; remainder: 13),
  (quotient: 0; remainder: 13),
  // numerator = 14
  (quotient: -1; remainder: -1),
  (quotient: -1; remainder: 0),
  (quotient: -2; remainder: -12),
  (quotient: -2; remainder: -10),
  (quotient: -2; remainder: -8),
  (quotient: -2; remainder: -6),
  (quotient: -2; remainder: -4),
  (quotient: -2; remainder: -2),
  (quotient: -2; remainder: 0),
  (quotient: -3; remainder: -4),
  (quotient: -3; remainder: -1),
  (quotient: -4; remainder: -2),
  (quotient: -5; remainder: -1),
  (quotient: -7; remainder: 0),
  (quotient: -14; remainder: 0),
  (quotient: 0; remainder: 0),
  (quotient: 14; remainder: 0),
  (quotient: 7; remainder: 0),
  (quotient: 4; remainder: 2),
  (quotient: 3; remainder: 2),
  (quotient: 2; remainder: 4),
  (quotient: 2; remainder: 2),
  (quotient: 2; remainder: 0),
  (quotient: 1; remainder: 6),
  (quotient: 1; remainder: 5),
  (quotient: 1; remainder: 4),
  (quotient: 1; remainder: 3),
  (quotient: 1; remainder: 2),
  (quotient: 1; remainder: 1),
  (quotient: 1; remainder: 0),
  (quotient: 0; remainder: 14),
  (quotient: 0; remainder: 14),
  // numerator = 15
  (quotient: -1; remainder: 0),
  (quotient: -2; remainder: -13),
  (quotient: -2; remainder: -11),
  (quotient: -2; remainder: -9),
  (quotient: -2; remainder: -7),
  (quotient: -2; remainder: -5),
  (quotient: -2; remainder: -3),
  (quotient: -2; remainder: -1),
  (quotient: -3; remainder: -6),
  (quotient: -3; remainder: -3),
  (quotient: -3; remainder: 0),
  (quotient: -4; remainder: -1),
  (quotient: -5; remainder: 0),
  (quotient: -8; remainder: -1),
  (quotient: -15; remainder: 0),
  (quotient: 0; remainder: 0),
  (quotient: 15; remainder: 0),
  (quotient: 7; remainder: 1),
  (quotient: 5; remainder: 0),
  (quotient: 3; remainder: 3),
  (quotient: 3; remainder: 0),
  (quotient: 2; remainder: 3),
  (quotient: 2; remainder: 1),
  (quotient: 1; remainder: 7),
  (quotient: 1; remainder: 6),
  (quotient: 1; remainder: 5),
  (quotient: 1; remainder: 4),
  (quotient: 1; remainder: 3),
  (quotient: 1; remainder: 2),
  (quotient: 1; remainder: 1),
  (quotient: 1; remainder: 0),
  (quotient: 0; remainder: 15),
  // numerator = 16
  (quotient: -2; remainder: -14),
  (quotient: -2; remainder: -12),
  (quotient: -2; remainder: -10),
  (quotient: -2; remainder: -8),
  (quotient: -2; remainder: -6),
  (quotient: -2; remainder: -4),
  (quotient: -2; remainder: -2),
  (quotient: -2; remainder: 0),
  (quotient: -3; remainder: -5),
  (quotient: -3; remainder: -2),
  (quotient: -4; remainder: -4),
  (quotient: -4; remainder: 0),
  (quotient: -6; remainder: -2),
  (quotient: -8; remainder: 0),
  (quotient: -16; remainder: 0),
  (quotient: 0; remainder: 0),
  (quotient: 16; remainder: 0),
  (quotient: 8; remainder: 0),
  (quotient: 5; remainder: 1),
  (quotient: 4; remainder: 0),
  (quotient: 3; remainder: 1),
  (quotient: 2; remainder: 4),
  (quotient: 2; remainder: 2),
  (quotient: 2; remainder: 0),
  (quotient: 1; remainder: 7),
  (quotient: 1; remainder: 6),
  (quotient: 1; remainder: 5),
  (quotient: 1; remainder: 4),
  (quotient: 1; remainder: 3),
  (quotient: 1; remainder: 2),
  (quotient: 1; remainder: 1),
  (quotient: 1; remainder: 0));

implementation

end.

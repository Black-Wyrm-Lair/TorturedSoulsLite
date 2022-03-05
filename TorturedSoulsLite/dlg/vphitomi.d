BEGIN VPHITOMI

CHAIN IF ~See("Yoshimo") Global("Hitomi_Meet","GLOBAL",0)~ THEN VPHITOMI 0
@0
END
  IF ~!Dead("vpnajoki") !Global("TT_Evil_Path","GLOBAL",2)~ THEN REPLY @1 DO ~SetGlobal("Hitomi_Meet","GLOBAL",1)~ EXTERN VPHITOMI 1
  IF ~~ THEN REPLY @2 DO ~SetGlobal("Hitomi_Meet","GLOBAL",1)~ EXTERN VPHITOMI 3

CHAIN VPHITOMI 1
@3
== YOSHJ @4
== VPHITOMI @5
== YOSHJ @6
END
IF ~InParty(Player2) See(Player2) !StateCheck(Player2,CD_STATE_NOTVALID)~ THEN REPLY @7 DO ~StartCutSceneMode() StartCutScene("TTcut02")~ EXIT
IF ~InParty(Player3) See(Player3) !StateCheck(Player3,CD_STATE_NOTVALID)~ THEN REPLY @8 DO ~StartCutSceneMode() StartCutScene("TTcut03")~ EXIT
IF ~InParty(Player4) See(Player4) !StateCheck(Player4,CD_STATE_NOTVALID)~ THEN REPLY @9 DO ~StartCutSceneMode() StartCutScene("TTcut04")~ EXIT
IF ~InParty(Player5) See(Player5) !StateCheck(Player5,CD_STATE_NOTVALID)~ THEN REPLY @10 DO ~StartCutSceneMode() StartCutScene("TTcut05")~ EXIT
IF ~See(Player1) !StateCheck(Player1,CD_STATE_NOTVALID)~ THEN REPLY @11 DO ~StartCutSceneMode() StartCutScene("TTcut01")~ EXIT
IF ~InParty(Player6) See(Player6) !StateCheck(Player6,CD_STATE_NOTVALID)~ THEN REPLY @12 DO ~StartCutSceneMode() StartCutScene("TTcut06")~ EXIT

CHAIN VPHITOMI 3
@5
== YOSHJ @6
END
IF ~InParty(Player2) See(Player2) !StateCheck(Player2,CD_STATE_NOTVALID)~ THEN REPLY @7 DO ~StartCutSceneMode() StartCutScene("TTcut02")~ EXIT
IF ~InParty(Player3) See(Player3) !StateCheck(Player3,CD_STATE_NOTVALID)~ THEN REPLY @8 DO ~StartCutSceneMode() StartCutScene("TTcut03")~ EXIT
IF ~InParty(Player4) See(Player4) !StateCheck(Player4,CD_STATE_NOTVALID)~ THEN REPLY @9 DO ~StartCutSceneMode() StartCutScene("TTcut04")~ EXIT
IF ~InParty(Player5) See(Player5) !StateCheck(Player5,CD_STATE_NOTVALID)~ THEN REPLY @10 DO ~StartCutSceneMode() StartCutScene("TTcut05")~ EXIT
IF ~See(Player1) !StateCheck(Player1,CD_STATE_NOTVALID)~ THEN REPLY @11 DO ~StartCutSceneMode() StartCutScene("TTcut01")~ EXIT
IF ~InParty(Player6) See(Player6) !StateCheck(Player6,CD_STATE_NOTVALID)~ THEN REPLY @12 DO ~StartCutSceneMode() StartCutScene("TTcut06")~ EXIT

CHAIN IF ~Global("Player_Against_Michio","GLOBAL",0) Global("Player_Against_Momoko","GLOBAL",3) Global("Nakanishi_Duel","GLOBAL",0)~ THEN VPHITOMI 4
@13
END
IF ~!StateCheck(Player1,CD_STATE_NOTVALID)~ THEN REPLY @11 DO ~StartCutSceneMode() StartCutScene("TTcut11")~ EXIT
IF ~InParty(Player2) !StateCheck(Player2,CD_STATE_NOTVALID)~ THEN REPLY @7 DO ~StartCutSceneMode() StartCutScene("TTcut12")~ EXIT
IF ~InParty(Player3) !StateCheck(Player3,CD_STATE_NOTVALID)~ THEN REPLY @8 DO ~StartCutSceneMode() StartCutScene("TTcut13")~ EXIT
IF ~InParty(Player4) !StateCheck(Player4,CD_STATE_NOTVALID)~ THEN REPLY @9 DO ~StartCutSceneMode() StartCutScene("TTcut14")~ EXIT
IF ~InParty(Player5) !StateCheck(Player5,CD_STATE_NOTVALID)~ THEN REPLY @10 DO ~StartCutSceneMode() StartCutScene("TTcut15")~ EXIT
IF ~InParty(Player6) !StateCheck(Player6,CD_STATE_NOTVALID)~ THEN REPLY @12 DO ~StartCutSceneMode() StartCutScene("TTcut16")~ EXIT
IF ~~ THEN REPLY @14 EXIT

CHAIN IF ~Global("Player_Against_Michio","GLOBAL",0) Global("Player_Against_Momoko","GLOBAL",2) Global("Nakanishi_Duel","GLOBAL",0)~ THEN VPHITOMI 5
@15
END
IF ~InParty(Player2) See(Player2) !StateCheck(Player2,CD_STATE_NOTVALID)~ THEN REPLY @7 DO ~StartCutSceneMode() StartCutScene("TTcut02")~ EXIT
IF ~InParty(Player3) See(Player3) !StateCheck(Player3,CD_STATE_NOTVALID)~ THEN REPLY @8 DO ~StartCutSceneMode() StartCutScene("TTcut03")~ EXIT
IF ~InParty(Player4) See(Player4) !StateCheck(Player4,CD_STATE_NOTVALID)~ THEN REPLY @9 DO ~StartCutSceneMode() StartCutScene("TTcut04")~ EXIT
IF ~InParty(Player5) See(Player5) !StateCheck(Player5,CD_STATE_NOTVALID)~ THEN REPLY @10 DO ~StartCutSceneMode() StartCutScene("TTcut05")~ EXIT
IF ~See(Player1) !StateCheck(Player1,CD_STATE_NOTVALID)~ THEN REPLY @11 DO ~StartCutSceneMode() StartCutScene("TTcut01")~ EXIT
IF ~InParty(Player6) See(Player6) !StateCheck(Player6,CD_STATE_NOTVALID)~ THEN REPLY @12 DO ~StartCutSceneMode() StartCutScene("TTcut06")~ EXIT
IF ~~ THEN REPLY @16 EXTERN VPHITOMI 9
IF ~~ THEN REPLY @14 EXIT

CHAIN IF ~Global("Player_Against_Michio","GLOBAL",3) Global("Player_Against_Momoko","GLOBAL",3) Global("Nakanishi_Duel","GLOBAL",0)~ THEN VPHITOMI 6
@17
END
IF ~CheckStatGT(LastTalkedToBy(Myself),14,WIS) !Global("TT_Evil_Path","GLOBAL",2)~ THEN REPLY @18 EXTERN VPHITOMI 11
IF ~~ THEN REPLY @19 EXTERN VPHITOMI 12
IF ~~ THEN REPLY @20 EXTERN VPHITOMI 13

CHAIN IF ~Global("Player_Against_Michio","GLOBAL",2) Global("Player_Against_Momoko","GLOBAL",3) Global("Nakanishi_Duel","GLOBAL",0)~ THEN VPHITOMI 7
@21
END
IF ~!StateCheck(Player1,CD_STATE_NOTVALID)~ THEN REPLY @11 DO ~StartCutSceneMode() StartCutScene("TTcut11")~ EXIT
IF ~InParty(Player2) !StateCheck(Player2,CD_STATE_NOTVALID)~ THEN REPLY @7 DO ~StartCutSceneMode() StartCutScene("TTcut12")~ EXIT
IF ~InParty(Player3) !StateCheck(Player3,CD_STATE_NOTVALID)~ THEN REPLY @8 DO ~StartCutSceneMode() StartCutScene("TTcut13")~ EXIT
IF ~InParty(Player4) !StateCheck(Player4,CD_STATE_NOTVALID)~ THEN REPLY @9 DO ~StartCutSceneMode() StartCutScene("TTcut14")~ EXIT
IF ~InParty(Player5) !StateCheck(Player5,CD_STATE_NOTVALID)~ THEN REPLY @10 DO ~StartCutSceneMode() StartCutScene("TTcut15")~ EXIT
IF ~InParty(Player6) !StateCheck(Player6,CD_STATE_NOTVALID)~ THEN REPLY @12 DO ~StartCutSceneMode() StartCutScene("TTcut16")~ EXIT
IF ~~ THEN REPLY @22 EXIT
IF ~~ THEN REPLY @16 EXTERN VPHITOMI 9

CHAIN IF ~Global("Nakanishi_Duel","GLOBAL",1)~ THEN VPHITOMI 8
@23 EXIT

CHAIN VPHITOMI 9
@24
END
  IF ~~ THEN REPLY @25 EXTERN VPHITOMI 10

CHAIN VPHITOMI 10
@26 DO ~SetGlobal("Hitomi_Attacked","GLOBAL",1)~ EXIT

CHAIN VPHITOMI 11
@27 DO ~GiveItem("vpwardex",Player1) StartCutSceneMode() StartCutScene("TTcutHit")~ EXIT

CHAIN VPHITOMI 12
@28 DO ~SetGlobal("Hitomi_Attacked","GLOBAL",1)~ EXIT

CHAIN VPHITOMI 13
@29
END
  IF ~~ THEN REPLY @30 EXTERN VPHITOMI 14
  IF ~~ THEN REPLY @31 DO ~StartCutSceneMode() StartCutScene("TTcutHit")~ EXIT

CHAIN VPHITOMI 14
@32 DO ~SetGlobal("Hitomi_Attacked","GLOBAL",1)~
EXIT

CHAIN IF ~!See("Yoshimo") Global("Hitomi_Meet","GLOBAL",0)~ THEN VPHITOMI 15
@33
EXIT

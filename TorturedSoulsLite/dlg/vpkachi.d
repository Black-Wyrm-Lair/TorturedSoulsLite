BEGIN VPKACHI

//////////////////////////////////////////////////////////////////////////////////////////////////
//
//		Situation 1: Yoshimo is in Party
//
//		1) If Kachiko is joined:
//												VP_Kachiko_Joined is set to 1
//												VP_Kachiko_Meet is set to 2
//
//		2) If Kachiko is not joined, both go to SeaBounty:
//												VP_YoshFollowsKach is set to 1
//												VP_Kachiko_Meet is set to 3 --> GOTO Situation 3
//
//////////////////////////////////////////////////////////////////////////////////////////////////


// Yoshimo in Party

CHAIN IF WEIGHT #2 ~NumberOfTimesTalkedTo(0)
InParty("Yoshimo")
Global("VP_Kachiko_Meet","GLOBAL",1)
Global("VP_KachikoInTavern","GLOBAL",0)~ THEN VPKACHI 0
@0
DO ~SetGlobal("VP_Kachiko_Meet","GLOBAL",2)~
== YOSHJ @1
== VPKACHI @2
END
  IF ~~ THEN REPLY @3 EXTERN VPKACHI 2
  IF ~~ THEN REPLY @4 EXTERN ~YOSHJ~ TS153
  IF ~~ THEN REPLY @5 EXTERN ~YOSHJ~ TS154

CHAIN VPKACHI 2
@6
END
  IF ~~ THEN REPLY @7 EXTERN VPKACHI 3
  IF ~~ THEN REPLY @8 EXTERN YOSHJ TS153

CHAIN VPKACHI 3
@9
END
  IF ~~ THEN REPLY @10 EXTERN VPKACHI 4

CHAIN VPKACHI 4
@11
== YOSHJ @12
END
  IF ~~ THEN REPLY @13 EXTERN YOSHJ TS157

CHAIN VPKACHI 11
@14
DO ~SetGlobal("VP_Kachiko_Meet","GLOBAL",3)~
== YOSHJ @15
DO ~SetGlobal("Kicked_Out","LOCALS",1)
SetGlobal("VP_YoshFollowsKach","GLOBAL",1)
ActionOverride("vpkachi",EscapeAreaMove("AR0313",784,333,8))
ChangeAIScript("",DEFAULT)
SetLeavePartyDialogFile()
LeaveParty()
EscapeAreaMove("AR0313",723,319,14)~
EXIT

CHAIN VPKACHI 12
@16
== YOSHJ @17
DO ~SetGlobal("Kicked_Out","LOCALS",1)
ActionOverride("vpkachi",EscapeArea())
ChangeAIScript("",DEFAULT)
SetLeavePartyDialogFile()
DestroyItem("NPSW02")
GivePartyAllEquipment()
LeaveParty()
EscapeArea()~
EXIT

CHAIN YOSHJ TS153
@18
DO ~ActionOverride("vpkachi",Enemy())
LeaveParty()
Enemy()~ EXIT

CHAIN YOSHJ TS154
@19
== VPKACHI @20
== YOSHJ @21
DO ~SetGlobal("Kicked_Out","LOCALS",1)
SetGlobal("VP_YoshimoEscapes","GLOBAL",1)
ActionOverride("vpkachi",Enemy())
ChangeAIScript("",DEFAULT)
SetLeavePartyDialogueFile()
LeaveParty()
EscapeAreaMove("AR0406",1368,1922,0)~ EXIT

CHAIN YOSHJ TS157
@22
END
  IF ~~ THEN REPLY @23 EXTERN YOSHJ TS158

CHAIN YOSHJ TS158
@24
== VPKACHI @25
== YOSHJ @26
== VPKACHI @27
== YOSHJ @28
END
  IF ~~ THEN REPLY @29 EXTERN YOSHJ TS161
  IF ~~ THEN REPLY @30 EXTERN VPKACHI 8
  IF ~~ THEN REPLY @31 EXTERN VPKACHI 9

CHAIN VPKACHI 9
@32
== YOSHJ @33 DO ~SetGlobal("Kicked_Out","LOCALS",1)
ActionOverride("vpkachi",EscapeArea())
ChangeAIScript("",DEFAULT)
SetLeavePartyDialogFile()
DestroyItem("NPSW02")
GivePartyAllEquipment()
LeaveParty()
EscapeArea()~
EXIT

CHAIN YOSHJ TS161
@34
END
 IF ~~ THEN EXTERN VPKACHI 8

CHAIN VPKACHI 8
@35
== YOSHJ @36
== VPKACHI @37
END
  IF ~~ THEN REPLY @38 EXTERN VPKACHI 11
  IF ~~ THEN REPLY @39 EXTERN ~YOSHJ~ TS165
  IF ~~ THEN REPLY @40 EXTERN VPKACHI 12
  IF ~~ THEN REPLY @41 EXTERN ~YOSHJ~ TS153

CHAIN YOSHJ TS163
@15
DO ~SetGlobal("Kicked_Out","LOCALS",1)
SetGlobal("VP_YoshFollowsKach","GLOBAL",1)
ActionOverride("vpkachi",EscapeAreaMove("AR0313",784,333,8))
ChangeAIScript("",DEFAULT)
SetLeavePartyDialogFile()
LeaveParty()
EscapeAreaMove("AR0313",723,319,14)~ EXIT

CHAIN YOSHJ TS165
@42
== VPKACHI @43
DO ~SetGlobalTimer("VP_KachikoRomance","GLOBAL",ONE_DAY)
SetGlobal("VP_Kachiko_Joined","GLOBAL",1)
JoinParty()~
EXIT

////////////////////////////////////////////////////////////////////////////////
//
//		Situation 2: Yoshimo is not in Party
//
//		1) If Kachiko is joined:
//												VP_Kachiko_Joined is set to 1
//												VP_Kachiko_Meet is set to 2
//												VP_YoshimoSearch is set to 1
//
//		2) If Kachiko is not joined, she escapes to Sea Bounty Tavern
//
////////////////////////////////////////////////////////////////////////////////

//Yoshimo not in Party

CHAIN IF WEIGHT #1 ~NumberOfTimesTalkedTo(0)
!InParty("Yoshimo")
Global("VP_Kachiko_Meet","GLOBAL",1)
Global("VP_KachikoInTavern","GLOBAL",0)~ THEN VPKACHI 14
@44
END
  IF ~~ THEN REPLY @45 DO ~SetGlobal("VP_Kachiko_Meet","GLOBAL",2)~ EXTERN VPKACHI 15
  IF ~~ THEN REPLY @46 DO ~SetGlobal("VP_Kachiko_Meet","GLOBAL",2)~ EXTERN VPKACHI 21
  IF ~~ THEN REPLY @47 DO ~SetGlobal("VP_Kachiko_Meet","GLOBAL",2)~ EXTERN VPKACHI 22

CHAIN VPKACHI 15
@48
END
  IF ~~ THEN REPLY @49 EXTERN VPKACHI 16
  IF ~~ THEN REPLY @50 EXTERN VPKACHI 16

CHAIN VPKACHI 16
@51
END
  IF ~~ THEN REPLY @52 EXTERN VPKACHI 17
  IF ~~ THEN REPLY @53 EXTERN VPKACHI 18

CHAIN VPKACHI 17
@54
END
  IF ~~ THEN REPLY @55 DO ~SetGlobal("VP_Kachiko_Joined","GLOBAL",1)
SetGlobal("VP_YoshimoSearch","GLOBAL",1)
JoinParty()~ EXIT
  IF ~~ THEN REPLY @56 EXTERN VPKACHI 18
  IF ~~ THEN REPLY @57 EXTERN VPKACHI 20

CHAIN VPKACHI 18
@58
END
  IF ~~ THEN REPLY @59 EXTERN VPKACHI 19
  IF ~~ THEN REPLY @60 DO ~SetGlobal("VP_Kachiko_Joined","GLOBAL",1)
SetGlobal("VP_YoshimoSearch","GLOBAL",1)
JoinParty()~ EXIT
  IF ~~ THEN REPLY @57 EXTERN VPKACHI 20

CHAIN VPKACHI 19
@61
END
  IF ~~ THEN REPLY @62 DO ~SetGlobal("VP_Kachiko_Joined","GLOBAL",1)
SetGlobal("VP_YoshimoSearch","GLOBAL",1)
JoinParty()~ EXIT
  IF ~~ THEN REPLY @57 EXTERN VPKACHI 20

CHAIN VPKACHI 20
@63 DO ~SetGlobal("VP_KachikoInTavern","GLOBAL",1)
EscapeAreaMove("AR0313",784,333,8)~ EXIT

CHAIN VPKACHI 21
@64 DO ~SetGlobal("VP_KachikoInTavern","GLOBAL",1)
EscapeAreaMove("AR0313",784,333,8)~ EXIT

CHAIN VPKACHI 22
@65 DO ~SetGlobal("VP_KachikoInTavern","GLOBAL",1)
EscapeAreaMove("AR0313",784,333,8)~ EXIT

// Kachiko sent off with Yoshimo, joining dialogue

CHAIN IF WEIGHT #0 ~Global("VP_YoshFollowsKach","GLOBAL",1)
Global("VP_KachikoInTavern","GLOBAL",0)~ THEN VPKACHI 25
@66
END
  IF ~~ THEN REPLY @67 DO ~SetGlobal("VP_YoshFollowsKach","GLOBAL",0)~ EXTERN VPKACHI 26
  IF ~~ THEN REPLY @68 EXTERN VPKACHI 27

CHAIN VPKACHI 26
@69 DO ~SetGlobal("VP_JoinYoshimo","GLOBAL",1) SetGlobal("Kicked_Out","LOCALS",0)~
== YOSHP @70 DO ~SetGlobal("Kicked_Out","LOCALS",0) ActionOverride("vpkachi",JoinParty()) JoinParty()~
EXIT

CHAIN VPKACHI 27
@71 DO ~SetGlobal("VP_YoshFollowsKach","GLOBAL",1)~ EXIT

CHAIN IF WEIGHT #-1 ~Global("VP_KachikoInTavern","GLOBAL",1)
!InParty(Myself)
!InParty("Yoshimo")
!See("Yoshimo")~ THEN VPKACHI N28
@72
END
  IF ~~ THEN REPLY @73 EXTERN VPKACHI N29
  IF ~~ THEN REPLY @68 EXTERN VPKACHI N30

CHAIN VPKACHI N29
@74 DO ~SetGlobal("VP_KachikoInTavern","GLOBAL",0)
SetGlobal("Kicked_Out","LOCALS",0)
JoinParty()~ EXIT

CHAIN VPKACHI N30
@71 EXIT

// Waiting in Sea Bounty and detecting Yoshimo

CHAIN IF WEIGHT #-2 ~Global("VP_KachikoInTavern","GLOBAL",1)
!InParty(Myself)
InParty("Yoshimo")
Detect("Yoshimo")~ THEN VPKACHI N31
@75
== YOSHJ @76
END
  IF ~~ THEN REPLY @77 EXTERN YOSHJ SB07
  IF ~~ THEN REPLY @78 EXTERN YOSHJ SB08

CHAIN VPKACHI N33
@79
== YOSHJ @80
== VPKACHI @81
DO ~SetGlobal("VP_KachikoInTavern","GLOBAL",0)
SetGlobal("Kicked_Out","LOCALS",0)
JoinParty()~
EXIT

CHAIN YOSHJ SB07
@82
== VPKACHI @83
END
  IF ~~ THEN REPLY @84 EXTERN VPKACHI N33
  IF ~~ THEN REPLY @85 EXTERN YOSHJ SB10

CHAIN YOSHJ SB08
@86
== VPKACHI @87
END
 IF ~~ THEN EXTERN YOSHJ SB10

CHAIN YOSHJ SB10
@88 DO ~SetGlobal("VP_KachikoInTavern","GLOBAL",0)
ActionOverride("vpkachi",EscapeArea())
SetGlobal("Kicked_Out","LOCALS",1)
ChangeAIScript("",DEFAULT)
SetLeavePartyDialogFile()
LeaveParty()
EscapeArea()~ EXIT

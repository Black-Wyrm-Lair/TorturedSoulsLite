BEGIN VPKACHIJ

// Search for Yoshimo

CHAIN IF WEIGHT #0 ~Global("VP_Yoshimo_Dies","GLOBAL",3)~ THEN VPKACHIJ yoshdied
@0 DO ~SetGlobal("VP_Yoshimo_Dies","GLOBAL",4)
DestroyItem("vpkswor1")
DestroyItem("vpkswor2")
DestroyItem("vpnring2")
GivePartyAllEquipment()
LeaveParty()
EscapeArea()~
EXIT

CHAIN IF ~Global("VP_Yoshimo_Dies","GLOBAL",3)
See(Player1)
!StateCheck(Player1,CD_STATE_NOTVALID)~ THEN VPKACHIJ N40
@0 DO ~SetGlobal("VP_Yoshimo_Dies","GLOBAL",4)
DestroyItem("vpkswor1")
DestroyItem("vpkswor2")
DestroyItem("vpnring2")
GivePartyAllEquipment()
LeaveParty()
EscapeArea()~
EXIT

CHAIN IF WEIGHT #-1 ~Global("VP_YoshimoSearch","GLOBAL",2)~ THEN VPKACHIJ remind_1
@1
END
	IF ~~ THEN REPLY @2 EXTERN VPKACHIJ remind_2
	IF ~~ THEN REPLY @3 EXTERN VPKACHIJ remind_3

CHAIN VPKACHIJ remind_2
@4 DO ~SetGlobal("VP_YoshimoSearch","GLOBAL",3)
SetGlobalTimer("VP_KachikoLeaves","GLOBAL",TWO_DAYS)~
EXIT

CHAIN VPKACHIJ remind_3
@5 DO ~DestroyItem("vpkswor1")
DestroyItem("vpkswor2")
DestroyItem("vpnring2")
GivePartyAllEquipment()
LeaveParty()
EscapeArea()~
EXIT

CHAIN IF WEIGHT #-2 ~Global("VP_YoshimoSearch","GLOBAL",4)~ THEN VPKACHIJ leave
@6
DO ~DestroyItem("vpkswor1")
DestroyItem("vpkswor2")
DestroyItem("vpnring2")
GivePartyAllEquipment()
LeaveParty()
EscapeArea()~
EXIT

// Yoshimo is found in Copper Coronet
// 1. Yoshimo has never joined party - dialogue YOSHIMO.DLG

CHAIN IF WEIGHT #-3 ~Global("VP_YoshimoSearch","GLOBAL",5)
Global("MetYoshimo","GLOBAL",1)
Global("VP_Yosh_WasInParty","GLOBAL",0)~ THEN VPKACHIJ KrFix0
@7 DO ~SetGlobal("VP_YoshimoSearch","GLOBAL",6)~
== YOSHIMO @8
END
  IF ~~ THEN REPLY @9 EXTERN YOSHIMO TS54
  IF ~~ THEN REPLY @10 EXTERN YOSHIMO TS55

CHAIN YOSHIMO TS54
@11
== VPKACHIJ @12
END
  IF ~~ THEN REPLY @13 EXTERN VPKACHIJ KrFix2
  IF ~~ THEN REPLY @14 EXTERN YOSHIMO TS57

CHAIN YOSHIMO TS55
@15
== VPKACHIJ @16 DO ~SetGlobal("Kicked_Out","LOCALS",1)
ActionOverride("Yoshimo",EscapeArea())
ChangeAIScript("",DEFAULT)
SetLeavePartyDialogFile()
DestroyItem("vpkswor1")
DestroyItem("vpkswor2")
DestroyItem("vpnring2")
GivePartyAllEquipment()
LeaveParty()
EscapeArea()~ EXIT

CHAIN VPKACHIJ KrFix2
@17
== YOSHIMO @18
== VPKACHIJ @19
END
  IF ~~ THEN REPLY @20 EXTERN ~YOSHIMO~ TS58
  IF ~~ THEN REPLY @21 EXTERN ~YOSHIMO~ TS57
  IF ~~ THEN REPLY @22 EXTERN ~YOSHIMO~ TS59

CHAIN YOSHIMO TS57
@23
== VPKACHIJ @24 DO ~SetGlobal("Kicked_Out","LOCALS",1)
SetGlobal("VP_YoshNeverJoined","GLOBAL",1)
ActionOverride("Yoshimo",EscapeAreaMove("AR0313",723,319,14))
ChangeAIScript("",DEFAULT)
SetLeavePartyDialogFile()
LeaveParty()
EscapeAreaMove("AR0313",784,333,8)~
EXIT

CHAIN YOSHIMO TS58
@25 DO ~SetGlobalTimer("VP_KachikoRomance","GLOBAL",ONE_DAY)
JoinParty()~
EXIT

CHAIN YOSHIMO TS59
@26 DO ~ActionOverride("vpkachi",LeaveParty())
ActionOverride("vpkachi",Enemy())
Enemy()~ EXIT

// 2. Yoshimo was kicked out from party before - dialogue YOSHP.DLG

CHAIN IF WEIGHT #-4 ~Global("VP_YoshimoSearch","GLOBAL",5)
Global("VP_Yosh_WasInParty","GLOBAL",1)~ THEN VPKACHIJ 9
@7 DO ~SetGlobal("VP_YoshimoSearch","GLOBAL",6)~
== YOSHP @27
END
  IF ~~ THEN REPLY @9 EXTERN YOSHP TS15
  IF ~~ THEN REPLY @10 EXTERN YOSHP TS16

CHAIN YOSHP TS15
@11
== VPKACHIJ @12
END
  IF ~~ THEN REPLY @13 EXTERN VPKACHIJ N11
  IF ~~ THEN REPLY @14 DO ~SetGlobal("Kicked_Out","LOCALS",1)~ EXTERN YOSHP TS18

CHAIN YOSHP TS16
@15
== VPKACHIJ @16 DO ~ActionOverride("Yoshimo",EscapeArea())
ChangeAIScript("",DEFAULT)
SetLeavePartyDialogFile()
DestroyItem("vpkswor1")
DestroyItem("vpkswor2")
DestroyItem("vpnring2")
GivePartyAllEquipment()
LeaveParty()
EscapeArea()~ EXIT

CHAIN VPKACHIJ N11
@17
== YOSHP @18
== VPKACHIJ @19
END
  IF ~~ THEN REPLY @20 EXTERN ~YOSHP~ TS19
  IF ~~ THEN REPLY @21 DO ~SetGlobal("Kicked_Out","LOCALS",1)~ EXTERN ~YOSHP~ TS18
  IF ~~ THEN REPLY @22 DO ~SetGlobal("Kicked_Out","LOCALS",1)~ EXTERN ~YOSHP~ TS20

CHAIN YOSHP TS18
@23 DO ~SetGlobal("Kicked_Out","LOCALS",1)
ActionOverride("vpkachi",ChangeAIScript("",DEFAULT))
ActionOverride("vpkachi",SetLeavePartyDialogFile())
ActionOverride("vpkachi",LeaveParty())
ActionOverride("vpkachi",EscapeAreaMove("AR0313",784,333,8))
ChangeAIScript("",DEFAULT)
SetLeavePartyDialogFile()
LeaveParty()
EscapeAreaMove("AR0313",723,319,14)~ EXIT

CHAIN YOSHP TS19
@25 DO ~SetGlobalTimer("VP_KachikoRomance","GLOBAL",ONE_DAY)
SetGlobal("Kicked_Out","LOCALS",0)
JoinParty()~
EXIT

CHAIN YOSHP TS20
@26 DO ~ActionOverride("vpkachi",LeaveParty())
ActionOverride("vpkachi",Enemy())
Enemy()~
EXIT

// Interjections

CHAIN IF ~Global("Dead_Bodies","GLOBAL",3)~ THEN VPKACHIJ N19
@28 DO ~SetGlobal("Dead_Bodies","GLOBAL",4)~
EXIT

//Imoen Return Dialogue

INTERJECT IMOEN2 21 THEN VPKACHIJ N32
== VPKACHIJ IF ~Global("VP_YoshimoExcuse","GLOBAL",1)~ @29 
END
  IF ~~ THEN REPLY @30 EXTERN VPKACHIJ N33
  IF ~~ THEN REPLY @31 EXTERN VPKACHIJ N34
  IF ~~ THEN REPLY @32 EXTERN ~YOSHJ~ TS218

CHAIN VPKACHIJ N33
@33
END
  IF ~~ THEN REPLY @34 EXTERN VPKACHIJ N34
  IF ~~ THEN REPLY @35 EXTERN ~YOSHJ~ TS218

CHAIN VPKACHIJ N34
@36
END
  IF ~~ THEN REPLY @37 EXTERN VPKACHIJ N35

CHAIN VPKACHIJ N35
@38 DO ~SetGlobal("VP_YoshimoExcuse","GLOBAL",2)~
== IMOEN2 @39
END
COPY_TRANS IMOEN 21

CHAIN YOSHJ TS218
@40 DO ~SetGlobal("Kicked_Out","LOCALS",1)~
== VPKACHIJ @41
== IMOEN2 @42 DO ~ActionOverride("Yoshimo",LeaveParty())
ActionOverride("Yoshimo",EscapeArea())
ActionOverride("vpkachi",LeaveParty())
ActionOverride("vpkachi",EscapeArea())~
END
COPY_TRANS IMOEN 21

// Tree of Life

INTERJECT PLAYER1 33 VPKachiToL0
== PLAYER1 IF ~InParty("vpkachi") InMyArea("vpkachi") !StateCheck("vpkachi",CD_STATE_NOTVALID)~ THEN
@43
END
  IF ~~ THEN REPLY @44 EXTERN VPKACHIJ VPKachiToL1
  IF ~~ THEN REPLY @45 EXTERN VPKACHIJ VPKachiToL2
  IF ~~ THEN REPLY @46 EXTERN VPKACHIJ VPKachiToL3
  
APPEND VPKACHIJ

IF ~~ THEN BEGIN VPKachiToL1
  SAY @47
COPY_TRANS PLAYER1 33
END  

IF ~~ THEN BEGIN VPKachiToL2
  SAY @48
COPY_TRANS PLAYER1 33
END

IF ~~ THEN BEGIN VPKachiToL3
  SAY @49
COPY_TRANS PLAYER1 33
END
END

//Hell

I_C_T PLAYER1 25 VPKachiHell 
== VPKACHIJ IF ~InParty("vpkachi") InMyArea("vpkachi") !StateCheck("vpkachi",CD_STATE_NOTVALID)~ @50
END

// Imoen Join Script Append
/*
EXTEND_BOTTOM IMOEN2 21
  IF ~Global("Kachiko_Saved","GLOBAL",2)
InParty("Yoshimo")
!Dead("Yoshimo")
InParty("vpkachi")
!Dead("vpkachi")~ THEN DO ~SetGlobal("VP_YoshimoExcuse","GLOBAL",1)~ EXTERN VPKACHIJ N32
END*/
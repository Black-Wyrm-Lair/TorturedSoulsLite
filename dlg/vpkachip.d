BEGIN VPKACHIP

// Parting Ways

CHAIN IF WEIGHT #5 ~Global("Kicked_Out","LOCALS",0)~ THEN VPKACHIP 2
@0
END
 IF ~InParty("Yoshimo") !Dead("Yoshimo")~ THEN REPLY @1 EXTERN VPKACHIP 3
 IF ~OR(2) !InParty("Yoshimo") Dead("Yoshimo")~ THEN REPLY @1 EXTERN VPKACHIP 4
 IF ~~ THEN REPLY @2 DO ~JoinParty()~ EXIT

CHAIN VPKACHIP 3
@3
END
 IF ~!AreaCheck("AR0601")
!AreaCheck("AR0602")
!AreaCheck("AR0603")
!AreaCheck("AR0410")
!AreaCheck("AR0411")
!AreaCheck("AR0412")
!AreaCheck("AR0413")
!AreaCheck("AR0414")
!AreaCheck("AR1512")
!AreaCheck("AR1513")
!AreaCheck("AR1514")
!AreaCheck("AR1515")
!AreaCheck("AR1516")
!AreaCheck("AR1501")
!AreaCheck("AR1502")
!AreaCheck("AR1503")
!AreaCheck("AR1504")
!AreaCheck("AR1505")
!AreaCheck("AR1506")
!AreaCheck("AR1507")
!AreaCheck("AR1508")
!AreaCheck("AR1509")
!AreaCheck("AR1510")
!AreaCheck("AR1511")
!AreaCheck("AR2100")
!AreaCheck("AR2101")
!AreaCheck("AR2102")
!AreaCheck("AR2200")
!AreaCheck("AR2202")
!AreaCheck("AR2203")
!AreaCheck("AR2204")
!AreaCheck("AR2205")
!AreaCheck("AR2206")
!AreaCheck("AR2207")
!AreaCheck("AR2208")
!AreaCheck("AR2209")
!AreaCheck("AR2210")
!AreaCheck("AR2300")
!AreaCheck("AR2400")
!AreaCheck("AR2401")
!AreaCheck("AR2402")
!AreaCheck("AR2900")
!AreaCheck("AR2901")
!AreaCheck("AR2902")
!AreaCheck("AR2903")
!AreaCheck("AR2904")
!AreaCheck("AR2905")
!AreaCheck("AR2906")
!InWatchersKeep()
GlobalLT("Chapter","GLOBAL",%bg2_chapter_7%)
Global("VP_OnIsland","GLOBAL",0)
Global("VP_InHalruaa","GLOBAL",0)~ THEN REPLY @4 DO ~SetGlobal("Kicked_Out","LOCALS",1)~ EXTERN YOSHJ TS216
 IF ~!AreaCheck("AR0301")
!AreaCheck("AR0302")
!AreaCheck("AR0303")
!AreaCheck("AR0304")
!AreaCheck("AR0305")
!AreaCheck("AR0306")
!AreaCheck("AR0307")
!AreaCheck("AR0509")
!AreaCheck("AR0510")
!AreaCheck("AR0511")
!AreaCheck("AR1102")
!AreaCheck("AR1107")
!AreaCheck("AR0801")
!AreaCheck("AR0803")
!AreaCheck("AR1300")
!AreaCheck("AR1301")
!AreaCheck("AR1302")
!AreaCheck("AR1303")
!AreaCheck("AR0601")
!AreaCheck("AR0602")
!AreaCheck("AR0603")
!AreaCheck("AR0604")
!AreaCheck("AR0605")
!AreaCheck("AR0606")
!AreaCheck("AR1512")
!AreaCheck("AR1513")
!AreaCheck("AR1514")
!AreaCheck("AR1515")
!AreaCheck("AR1516")
!AreaCheck("AR1501")
!AreaCheck("AR1502")
!AreaCheck("AR1503")
!AreaCheck("AR1504")
!AreaCheck("AR1505")
!AreaCheck("AR1506")
!AreaCheck("AR1507")
!AreaCheck("AR1508")
!AreaCheck("AR1509")
!AreaCheck("AR1510")
!AreaCheck("AR1511")
!InWatchersKeep()
Global("VP_OnIsland","GLOBAL",0)~ THEN REPLY @5 DO ~SetGlobal("Kicked_Out","LOCALS",1)~ EXTERN ~YOSHJ~ TS217
 IF ~Global("VP_OnIsland","GLOBAL",0)
Global("VP_InHalruaa","GLOBAL",0)~ THEN REPLY @6 DO ~SetGlobal("Kicked_Out","LOCALS",1)~ EXTERN ~YOSHJ~ TS215
 IF ~Global("VP_OnIsland","GLOBAL",1)~ THEN REPLY @7 DO ~SetGlobal("Kicked_Out","LOCALS",1)~ EXTERN ~YOSHJ~ TS214
 IF ~~ THEN REPLY @8 DO ~SetGlobal("Kicked_Out","LOCALS",1)~ EXTERN ~YOSHJ~ TS214

CHAIN VPKACHIP 4
@9 DO ~EscapeArea()~
EXIT

CHAIN YOSHJ TS214
@10 DO ~SetGlobal("VP_Kachiko_Yoshimo","GLOBAL",3)
SetGlobal("Kicked_Out","LOCALS",1)
ActionOverride("Kachiko",EscapeAreaMove("TT0102",165,727,8))
LeaveParty()
EscapeAreaMove("TT0102",225,683,8)~ EXIT

CHAIN YOSHJ TS215
@11 DO ~SetGlobal("Kicked_Out","LOCALS",1)
ActionOverride("Kachiko",EscapeAreaMove("AR0406",1368,1922,0))
ChangeAIScript("",DEFAULT)
SetLeavePartyDialogFile()
LeaveParty()
EscapeAreaMove("AR0406",1381,1959,1)~ EXIT

CHAIN YOSHJ TS216
@12 DO ~SetGlobal("Kicked_Out","LOCALS",1)
ActionOverride("Kachiko",EscapeAreaMove("AR0313",723,319,14))
ChangeAIScript("",DEFAULT)
SetLeavePartyDialogFile()
LeaveParty()
EscapeAreaMove("AR0313",784,333,8)~ EXIT

CHAIN YOSHJ TS217
@13 DO ~ChangeAIScript("",DEFAULT)
SetLeavePartyDialogueFile()
SetGlobal("Kicked_Out","LOCALS",1)
LeaveParty()~ EXIT

// Yoshimo Search Kickout

CHAIN IF WEIGHT #2 ~Global("Kicked_Out","LOCALS",0)
!InParty("Yoshimo")
Global("VP_YoshimoIsFound","GLOBAL",0)
GlobalGT("VP_YoshimoSearch","GLOBAL",0)
GlobalLT("VP_YoshimoSearch","GLOBAL",4)
Global("VP_OnIsland","GLOBAL",0)
Global("VP_KachikoInTavern","GLOBAL",0)~ THEN VPKACHIP 5
@14 DO ~SetGlobal("VP_KachikoInTavern","GLOBAL",1)
EscapeAreaMove("AR0313",784,333,8)~ EXIT


// Kachiko Pickup Before Spellhold

CHAIN IF WEIGHT #3 ~Global("Kicked_Out","LOCALS",1)
Global("VP_OnIsland","GLOBAL",0)
GlobalLT("Chapter","GLOBAL",%bg2_chapter_4%)~ THEN VPKACHIP 6
@15
END
 IF ~~ THEN REPLY @16 EXTERN VPKACHIP 7
 IF ~~ THEN REPLY @17 EXTERN VPKACHIP 8

CHAIN VPKACHIP 7
@18 DO ~ActionOverride("Yoshimo",SetGlobal("Kicked_Out","LOCALS",0))
ActionOverride("Yoshimo",JoinParty()
SetGlobal("Kicked_Out","LOCALS",0)
JoinParty()~ EXIT

CHAIN VPKACHIP 8
@9
EXIT

// Ressurection

CHAIN IF WEIGHT #1 ~Global("Kachiko_Reborn","GLOBAL",1)~ THEN VPKACHIP 9
@19 DO ~SetGlobal("Kachiko_Reborn","GLOBAL",2)~
== YOSHJ @20
END
 IF ~!Global("TT_Evil_Path","GLOBAL",2) !Dead("vpnajoki")~ THEN EXTERN VPKACHIP 10
 IF ~OR(2) Global("TT_Evil_Path","GLOBAL",2) Dead("vpnajoki")~ THEN EXTERN VPKACHIP 14

CHAIN VPKACHIP 10
@21
== YOSHJ @22
== VPKACHIP @23
== YOSHJ @24
== VPKACHIP @25
== YOSHJ @26 DO ~ChangeAlignment(Myself,CHAOTIC_GOOD)
AddXPObject(Myself,80000)
ActionOverride("Kachiko",ChangeAlignment(Myself,CHAOTIC_GOOD))
ActionOverride("Kachiko",AddXPObject(Myself,80000))~
== VPKACHIP @27 DO ~JoinParty()~
EXIT

CHAIN VPKACHIP 14
@28
== YOSHJ @29
== VPKACHIP @30
== YOSHJ @31
== VPKACHIP @32
== YOSHJ @33
== VPKACHIP @34 DO ~SetGlobal("Kachiko_Saved","GLOBAL",3)
StartCutScene("TTcutBad")~
EXIT

// Kachiko Pickup After Spellhold

CHAIN IF WEIGHT #4 ~Global("Kicked_Out","LOCALS",1)
!InParty("Yoshimo")
See("Yoshimo")
GlobalGT("Chapter","GLOBAL",%bg2_chapter_3%)~ THEN VPKACHIP 18
@35
END
 IF ~~ THEN REPLY @36 EXTERN VPKACHIP 7
 IF ~~ THEN REPLY @17 EXTERN VPKACHIP 8

//Yoshimo Dies

CHAIN IF WEIGHT #0 ~Global("VP_Yoshimo_Dies","GLOBAL",1)
!Global("Kachiko_Reborn","GLOBAL",1)~ THEN VPKACHIP 19
@37 DO ~EscapeArea()~
EXIT

// Kachiko Pickup no Yoshimo

CHAIN IF WEIGHT #-1 ~Global("VP_KachikoInTavern","GLOBAL",1)
!InParty(Myself)
!InParty("Yoshimo")
!See("Yoshimo")~ THEN VPKACHIP N20
@35
END
 IF ~~ THEN REPLY @36 EXTERN VPKACHIP N21
 IF ~~ THEN REPLY @17 EXTERN VPKACHIP 8

CHAIN VPKACHIP N21
@18 DO ~SetGlobal("VP_KachikoInTavern","GLOBAL",0)
SetGlobal("Kicked_Out","LOCALS",0)
JoinParty()~ EXIT

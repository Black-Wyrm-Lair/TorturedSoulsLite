REPLACE_STATE_TRIGGER YOSHP 0 ~Global("Kicked_Out","LOCALS",1)
Global("VP_OnIsland","GLOBAL",0)
!InParty("vpkachi")
!See("vpkachi")~

REPLACE_STATE_TRIGGER YOSHP 3 ~HappinessLT(Myself,-290)
!InParty("vpkachi")
Global("VP_OnIsland","GLOBAL",0)~

REPLACE_STATE_TRIGGER YOSHP 4 ~Global("Kicked_Out","LOCALS",0)
Global("VP_OnIsland","GLOBAL",0)
!InParty("vpkachi")~

REPLACE_ACTION_TEXT yoshp
~SetGlobal("KickedOut","LOCALS",1)[^!]*EscapeAreaMove("AR0406",1368,1922,0)~
~SetGlobal("Kicked_Out","LOCALS",1)
SetGlobal("VP_Yosh_WasInParty","GLOBAL",1)
EscapeAreaMove("AR0406",1368,1922,0)~

REPLACE_ACTION_TEXT yoshp
~SetGlobal("KickedOut","LOCALS",1)[^!]*JoinParty()~
~SetGlobal("Kicked_Out","LOCALS",1)
JoinParty()~

REPLACE_ACTION_TEXT yoshp
~SetGlobal("KickedOut","LOCALS",1)~
~SetGlobal("Kicked_Out","LOCALS",1)~

// Parting ways

CHAIN IF WEIGHT #7 ~Global("Kicked_Out","LOCALS",0)
Global("VP_OnIsland","GLOBAL",0)
InParty("vpkachi")~ THEN YOSHP TS7
@0
END
  IF ~~ THEN REPLY @1 EXTERN YOSHP TS12
  IF ~~ THEN REPLY @2 DO ~JoinParty()~ EXIT

CHAIN YOSHP TS12
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
Global("VP_InHalruaa","GLOBAL",0)
Global("VP_OnIsland","GLOBAL",0)
GlobalLT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN REPLY @4 EXTERN YOSHP partway1
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
!InWatchersKeep()~ THEN REPLY @5 EXTERN YOSHP partway2
  IF ~Global("VP_InHalruaa","GLOBAL",0)
Global("VP_OnIsland","GLOBAL",0)~ THEN REPLY @6 EXTERN YOSHP partway1

// Before Spellhold Joining

CHAIN IF WEIGHT #6 ~Global("Kicked_Out","LOCALS",1)
!InParty("vpkachi")
See("vpkachi")
Global("VP_OnIsland","GLOBAL",0)
GlobalLT("Chapter","GLOBAL",%bg2_chapter_4%)~ THEN YOSHP TS8
@7
END
  IF ~AreaCheck("AR0313")~ THEN REPLY @8 EXTERN YOSHP TS9
  IF ~~ THEN REPLY @9 EXTERN YOSHP TS10

CHAIN YOSHP TS9
@10
END
  IF ~~ THEN REPLY @11 EXTERN YOSHP TS10
  IF ~~ THEN REPLY @12 EXTERN YOSHP 2

CHAIN YOSHP TS10
@13
END
  IF ~Global("VP_Kachiko_Joined","GLOBAL",0) OR(2) AreaCheck("AR0313") AreaCheck("AR0406")~ THEN DO ~SetGlobal("Kicked_Out","LOCALS",0)~ EXTERN VPKACHI 23
  IF ~Global("VP_Kachiko_Joined","GLOBAL",0) !AreaCheck("AR0313") !AreaCheck("AR0406")~ THEN DO ~SetGlobal("Kicked_Out","LOCALS",0)~ EXTERN VPKACHI 24
  IF ~Global("VP_Kachiko_Joined","GLOBAL",1) OR(2) AreaCheck("AR0313") AreaCheck("AR0406")~ THEN DO ~SetGlobal("Kicked_Out","LOCALS",0)~ EXTERN VPKACHIP 0
  IF ~Global("VP_Kachiko_Joined","GLOBAL",1) !AreaCheck("AR0313") !AreaCheck("AR0406")~ THEN DO ~SetGlobal("Kicked_Out","LOCALS",0)~ EXTERN VPKACHIP 1

/*CHAIN VPKACHI 23
~I think it is a good idea! Better than staying in this barbaric tavern and listening to drunkard sailors!~ DO ~SetGlobal("Kicked_Out","LOCALS",0)
ActionOverride("Yoshimo",JoinParty())
JoinParty()~ EXIT

CHAIN VPKACHI 24
~If that is what you wish.~ DO ~SetGlobal("Kicked_Out","LOCALS",0)
ActionOverride("Yoshimo",JoinParty())
JoinParty()~ EXIT*/

/*CHAIN VPKACHIP 0
~I think it is a good idea! Better than staying in this barbaric tavern and listening to drunkard sailors!~ DO ~SetGlobal("Kicked_Out","LOCALS",0)
ActionOverride("Yoshimo",JoinParty())
JoinParty()~ EXIT*/

/*CHAIN VPKACHIP 1
~If that is what you wish.~ DO ~SetGlobal("Kicked_Out","LOCALS",0)
ActionOverride("Yoshimo",JoinParty())
JoinParty()~
EXIT*/

//Island Kickout

CHAIN IF WEIGHT #5 ~Global("Kicked_Out","LOCALS",0) Global("VP_OnIsland","GLOBAL",1)~ THEN YOSHP TS11
@14
END
  IF ~!InParty("vpkachi")~ THEN REPLY @15 EXTERN YOSHP TS21
  IF ~InParty("vpkachi")~ THEN REPLY @15 EXTERN YOSHP partway1
  IF ~~ THEN REPLY @16 EXTERN YOSHP TS22

CHAIN YOSHP partway1
@17 DO ~SetGlobal("Kicked_Out","LOCALS",1)~
== VPKACHIJ @18 DO ~SetGlobal("Kicked_Out","LOCALS",1)
ActionOverride("Yoshimo",ChangeAIScript("",DEFAULT))
ActionOverride("Yoshimo",SetLeavePartyDialogFile())
ActionOverride("Yoshimo",LeaveParty())
ActionOverride("Yoshimo",EscapeAreaMove("AR0406",1368,1922,0))
ChangeAIScript("",DEFAULT)
SetLeavePartyDialogFile()
LeaveParty()
EscapeAreaMove("AR0406",1381,1959,1)~
EXIT

CHAIN YOSHP partway2
@19 DO ~SetGlobal("Kicked_Out","LOCALS",1)~
== VPKACHIJ @20 DO ~SetGlobal("Kicked_Out","LOCALS",1)
ChangeAIScript("",DEFAULT)
SetLeavePartyDialogFile()
LeaveParty()~
EXIT

CHAIN YOSHP TS21
@21 DO ~SetGlobal("Kicked_Out","LOCALS",1)
EscapeAreaMove("TT0307",243,876,10)~
EXIT

CHAIN YOSHP TS22
@17 DO ~SetGlobal("Kicked_Out","LOCALS",0)
JoinParty()~
EXIT

// Kachiko Kidnapped Join

CHAIN IF WEIGHT #4 ~Global("Kicked_Out","LOCALS",1)
Global("VP_OnIsland","GLOBAL",1)
!InParty("vpkachi")~ THEN YOSHP TS23
@22
END
  IF ~~ THEN REPLY @23 EXTERN YOSHP TS24
  IF ~~ THEN REPLY @24 EXTERN YOSHP 2
 
CHAIN YOSHP TS24
@25 DO ~SetGlobal("Kicked_Out","LOCALS",0)
JoinParty()~ EXIT

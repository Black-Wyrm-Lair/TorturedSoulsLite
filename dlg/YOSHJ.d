// Kachiko Dies

CHAIN IF WEIGHT #0 ~Global("VP_Kachiko_Dies","GLOBAL",3)
See(Player1)
!StateCheck(Player1,STATE_SLEEPING)~ THEN YOSHJ TS223
@0 DO ~SetGlobal("VP_Kachiko_Dies","GLOBAL",4)
StartCutSceneMode()
StartCutScene("TSCutK03")~ EXIT

// Dead Bodies

CHAIN IF WEIGHT #6 ~Global("Dead_Bodies","GLOBAL",1)~ THEN YOSHJ TS169
@1 DO ~SetGlobal("Dead_Bodies","GLOBAL",2)~
== VPKACHIJ @2
== YOSHJ @3
END
 IF ~~ THEN REPLY @4 EXTERN YOSHJ TS171

CHAIN YOSHJ TS171
@5
== VPKACHIJ @6
END
  IF ~~ THEN REPLY @7 EXTERN ~YOSHJ~ TS172

CHAIN YOSHJ TS172
@8
EXIT

// Kachiko Kidnapped

CHAIN IF WEIGHT #7 ~Global("Kachiko_Kidnapped","GLOBAL",1)~ THEN YOSHJ TS177
@9 DO ~SetGlobal("Kachiko_Kidnapped","GLOBAL",2) RealSetGlobalTimer("NKensais_Spawn","GLOBAL",10)~
EXIT

// Kachiko Found

CHAIN IF WEIGHT #8 ~Global("Kachiko_Saved","GLOBAL",1)~ THEN YOSHJ TS208
@10
EXIT

// Irenicus Additions

APPEND YOSHJ

IF ~~ THEN BEGIN TS209
  SAY @11
  IF ~Global("YoshimoAndHisBetrayal","GLOBAL",0)~ THEN EXTERN ~PPIRENI1~ 47
  IF ~Global("YoshimoAndHisBetrayal","GLOBAL",1)~ THEN EXTERN ~PPIRENI2~ N18
END

IF ~~ THEN BEGIN TS210
  SAY @12
  IF ~Global("YoshimoAndHisBetrayal","GLOBAL",0)~ THEN EXTERN ~PPIRENI1~ 48
  IF ~Global("YoshimoAndHisBetrayal","GLOBAL",1)~ THEN EXTERN ~PPIRENI2~ N68
END

IF ~~ THEN BEGIN TS211
  SAY @13
  IF ~Global("YoshimoAndHisBetrayal","GLOBAL",0)~ THEN EXTERN ~PPIRENI1~ 49
  IF ~Global("YoshimoAndHisBetrayal","GLOBAL",1)~ THEN EXTERN ~PPIRENI2~ N69
END

IF ~~ THEN BEGIN TS212
  SAY @14
  IF ~Global("YoshimoAndHisBetrayal","GLOBAL",0)~ THEN EXTERN ~PPIRENI1~ 51
  IF ~Global("YoshimoAndHisBetrayal","GLOBAL",1)~ THEN EXTERN ~PPIRENI2~ N72
END

IF ~~ THEN BEGIN TS213
  SAY @15
  IF ~Global("YoshimoAndHisBetrayal","GLOBAL",0)~ THEN EXTERN ~PPIRENI1~ 52
  IF ~Global("YoshimoAndHisBetrayal","GLOBAL",1)~ THEN EXTERN ~PPIRENI2~ N73
END
END

// Tree of Life

INTERJECT PLAYER1 33 VPYoshiToL0
== PLAYER1 IF ~InParty("Yoshimo") InMyArea("Yoshimo") !StateCheck("Yoshimo",CD_STATE_NOTVALID)~ THEN
@16
END
	IF ~~ THEN REPLY @17 EXTERN ~YOSHJ~ TS221
	IF ~~ THEN REPLY @18 EXTERN ~YOSHJ~ TS222
	IF ~~ THEN REPLY @19 EXTERN ~YOSHJ~ TS221

APPEND YOSHJ

IF ~~ THEN BEGIN TS221
  SAY @20
COPY_TRANS PLAYER1 33
END  

IF ~~ THEN BEGIN TS222
  SAY @21
COPY_TRANS PLAYER1 33
END
END

//Solar

EXTEND_BOTTOM FINSOL01 27
  IF ~InParty("Yoshimo")~ THEN EXTERN YOSHJ YoshimoChoice
END

CHAIN YOSHJ YoshimoChoice
@22
END
COPY_TRANS FINSOL01 27

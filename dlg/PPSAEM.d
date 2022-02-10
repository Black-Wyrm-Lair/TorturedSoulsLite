///////////////////////////////////////////////
// Arrival to TS Island
///////////////////////////////////////////////
APPEND ~PPSAEM~

IF WEIGHT #7 ~Global("Start_Island","GLOBAL",1)
Global("Saemon_Mistake","GLOBAL",0)~ THEN BEGIN TS3
  SAY @0
  IF ~~ THEN REPLY @1 DO ~SetGlobal("Saemon_Mistake","GLOBAL",1)~ GOTO TS4
END

IF ~~ THEN BEGIN TS4
  SAY @2
  IF ~~ THEN EXTERN ~YOSHJ~ TS168
END

IF ~~ THEN BEGIN TS5
  SAY @3
  IF ~!InParty("vpsime")
Global("ThiefGroup","GLOBAL",1)~ THEN REPLY @4 DO ~SetGlobal("Island_War","GLOBAL",1)~ EXTERN ~PPSIME~ TS0
  IF ~InParty("vpsime")
Global("ThiefGroup","GLOBAL",1)~ THEN REPLY @4 DO ~SetGlobal("Island_War","GLOBAL",1)~ EXTERN VPSIMEJ 4
  IF ~Global("ThiefGroup","GLOBAL",2)~ THEN REPLY @5 DO ~SetGlobal("Island_War","GLOBAL",1)~ EXTERN ~PPBODHI3~ TS23
END

IF WEIGHT #8 ~GlobalLT("Kachiko_Saved","GLOBAL",2)
GlobalGT("Island_War","GLOBAL",0)~ THEN BEGIN TS6
  SAY @6
  IF ~~ THEN EXIT
END

IF WEIGHT #9 ~Global("VP_OnIsland","GLOBAL",1)
Global("End_Island","GLOBAL",2)~ THEN BEGIN TS29
  SAY @7
= @8
  IF ~~ THEN REPLY @9 DO ~SetGlobal("End_Island","GLOBAL",3)~ GOTO TS30
END

IF ~~ THEN BEGIN TS30
  SAY @10
= @11
= @12
  IF ~Global("ThiefGroup","GLOBAL",1)
InParty("vpsime")~ THEN DO ~StartCutSceneMode()
StartCutScene("Cut41dYS")~ EXIT
  IF ~Global("ThiefGroup","GLOBAL",1)
!InParty("vpsime")~ THEN DO ~StartCutSceneMode()
StartCutScene("Cut41dNS")~ EXIT
  IF ~Global("ThiefGroup","GLOBAL",2)~ THEN DO ~StartCutSceneMode()
StartCutScene("Cut41cB")~ EXIT
END
END

APPEND YOSHJ

IF ~~ THEN BEGIN TS168
  SAY @13
  IF ~~ THEN REPLY @14 EXTERN ~PPSAEM~ TS5
END
END

APPEND PPSIME

IF ~~ THEN BEGIN TS0
  SAY @15
  IF ~~ THEN REPLY @16 GOTO TS1
END

IF ~~ THEN BEGIN TS1
  SAY @17
  IF ~~ THEN DO ~SetGlobal("VP_Sime_Is_Waiting","GLOBAL",3)~ EXIT
END
END

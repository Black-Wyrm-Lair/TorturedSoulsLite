REPLACE PPSAEM

// Working for Bodhi

IF ~~ THEN BEGIN 13
  SAY @0
  IF ~InParty("vpkachi")~ THEN EXTERN ~VPKACHIJ~ sailoff1
  IF ~!InParty("vpkachi")~ THEN DO ~StartCutSceneMode() StartCutScene("Cut41c")~ EXIT  // --->  to Brynnlaw with Bodhi (no Kachiko in party)
END

// Working for Aran

IF ~~ THEN BEGIN 52
  SAY @0
  IF ~InParty("vpkachi")~ THEN EXTERN ~VPKACHIJ~ sailoff1
  IF ~!InParty("vpkachi") Global("Sime_Meet","GLOBAL",0)~ THEN DO ~StartCutSceneMode() StartCutScene("Cut41d")~ EXIT // ---> Kachiko is not in party ---> original cutscene, new in-game Sime is destroyed and re-created
  IF ~!InParty("vpkachi") Global("Sime_Meet","GLOBAL",1)~ THEN DO ~StartCutSceneMode() StartCutScene("Cut41dS")~ EXIT  // ---> Kachiko is not in party ---> go directly to Brynnlaw, Sime is joinable and moved to Brynnlaw
END
END

APPEND VPKACHIJ

IF ~~ THEN BEGIN sailoff1
  SAY @1
  IF ~~ THEN REPLY @2 EXTERN ~PPSAEM~ TS7
END

IF ~~ THEN BEGIN sailoff2
  SAY @3
  IF ~~ THEN EXTERN ~PPSAEM~ TS2
END

IF ~~ THEN BEGIN sailoff3
  SAY @4
  IF ~~ THEN EXTERN ~PPSAEM~ TS9
END
END

APPEND ~PPSAEM~

IF ~~ THEN BEGIN TS7
  SAY @5
  IF ~~ THEN REPLY @6 EXTERN ~YOSHJ~ TS166
END

IF ~~ THEN BEGIN TS8
  SAY @7
  IF ~True()~ THEN GOTO TS81
  IF ~InParty("Valygar")~ THEN EXTERN ~VALYGARJ~ TS122
  IF ~InParty("Anomen")~ THEN EXTERN ~ANOMENJ~ TS310
  IF ~InParty("Jaheira")~ THEN EXTERN ~JAHEIRAJ~ TS531
  IF ~InParty("Keldorn")~ THEN EXTERN ~KELDORJ~ TS252
END

IF ~~ THEN BEGIN TS81
  SAY @8
  IF ~~ THEN REPLY @9 GOTO TS0
  IF ~PartyGoldLT(5000) Global("ThiefGroup","GLOBAL",2)~ THEN REPLY @10 EXTERN ~PPBODHI3~ TS20 // ---> ... TS2 ... ---> ... TS5
  IF ~PartyGoldLT(5000) Global("ThiefGroup","GLOBAL",1)~ THEN REPLY @10 EXTERN ~PPARAN2~ TS10
  IF ~~ THEN REPLY @11 EXTERN ~YOSHJ~ TS167
END

IF ~~ THEN BEGIN TS2
  SAY @12
  IF ~Global("ThiefGroup","GLOBAL",2)~ THEN DO ~SetGlobal("Start_Island","GLOBAL",1) StartCutSceneMode() StartCutScene("Cut41isb")~ EXIT // --->  to the Island with Bodhi
  IF ~Global("ThiefGroup","GLOBAL",1) InParty("vpsime")~ THEN DO ~SetGlobal("Start_Island","GLOBAL",1) StartCutSceneMode() StartCutScene("Cut41is")~ EXIT // --->  to the Island with Sime being in-party
  IF ~Global("ThiefGroup","GLOBAL",1) !InParty("vpsime") Global("Sime_Meet","GLOBAL",0)~ THEN DO ~SetGlobal("Start_Island","GLOBAL",1) StartCutSceneMode() StartCutScene("Cut41isa")~ EXIT // ---> to the Island; in-game Sime is destroyed and re-created
  IF ~Global("ThiefGroup","GLOBAL",1) !InParty("vpsime") Global("Sime_Meet","GLOBAL",1)~ THEN DO ~SetGlobal("Start_Island","GLOBAL",1) StartCutSceneMode() StartCutScene("Cut41isS")~ EXIT // ---> to the Island; Sime is joinable and moved to the Island
END

IF ~~ THEN BEGIN TS9
  SAY #9749
  IF ~Global("ThiefGroup","GLOBAL",2)~ THEN DO ~StartCutSceneMode() StartCutScene("Cut41cc")~ EXIT // --->  to Brynnlaw with Bodhi
  IF ~Global("ThiefGroup","GLOBAL",1) InParty("vpsime")~ THEN DO ~StartCutSceneMode() StartCutScene("Cut41da")~ EXIT // --->  to Brynnlaw with Sime being in-party
  IF ~Global("ThiefGroup","GLOBAL",1) !InParty("vpsime") Global("Sime_Meet","GLOBAL",0)~ THEN DO ~StartCutSceneMode() StartCutScene("Cut41dd")~ EXIT // --->  to Brynnlaw without Yoshimo/Kachiko; in-game Sime is destroyed and re-created
  IF ~Global("ThiefGroup","GLOBAL",1) !InParty("vpsime") Global("Sime_Meet","GLOBAL",1)~ THEN DO ~StartCutSceneMode() StartCutScene("Cut41dSA")~ EXIT  // ---> to Brynnlaw without Yoshimo/Kachiko; Sime is joinable and moved to Brynnlaw  
END

IF ~~ THEN BEGIN TS0
  SAY @13
  IF ~Global("ThiefGroup","GLOBAL",2)~ THEN EXTERN ~PPBODHI3~ TS21
  IF ~Global("ThiefGroup","GLOBAL",1)~ THEN EXTERN ~PPARAN2~ TS11
END
END

// Guild Master Responses

CHAIN PPBODHI3 TS20
@14
== PPSAEM @13
END
IF ~~ THEN EXTERN PPBODHI3 TS21

CHAIN PPBODHI3 TS21
@15
== PPSAEM @16
== PPBODHI3 @17
== VPKACHIJ @3
END
  IF ~~ THEN EXTERN PPSAEM TS2

CHAIN PPARAN2 TS10
@14
==PPSAEM @13
END
IF ~~ THEN EXTERN PPARAN2 TS11

CHAIN PPARAN2 TS11
@15
== PPSAEM @16
== PPARAN2 @17
== VPKACHIJ @3
END
  IF ~~ THEN EXTERN PPSAEM TS2

APPEND ~YOSHJ~

IF ~~ THEN BEGIN TS166
  SAY @18
  IF ~~ THEN EXTERN ~PPSAEM~ TS8
END

IF ~~ THEN BEGIN TS167
  SAY @19
  IF ~~ THEN DO ~SetGlobal("Start_Island","GLOBAL",2)~ EXTERN ~VPKACHIJ~ sailoff3
END
END

APPEND ~KELDORJ~

IF ~~ THEN BEGIN TS252
  SAY @20
  IF ~~ THEN REPLY @21 DO ~SetGlobal("VP_Pay_to_Saemon","GLOBAL",1)~ EXTERN ~PPSAEM~ TS81
  IF ~~ THEN REPLY @22 EXTERN ~YOSHJ~ TS167
END
END

APPEND ~JAHEIRAJ~

IF ~~ THEN BEGIN TS531
  SAY @20
  IF ~~ THEN REPLY @21 DO ~SetGlobal("VP_Pay_to_Saemon","GLOBAL",1)~ EXTERN ~PPSAEM~ TS81
  IF ~~ THEN REPLY @22 EXTERN ~YOSHJ~ TS167
END
END

APPEND ~ANOMENJ~

IF ~~ THEN BEGIN TS310
  SAY @20
  IF ~~ THEN REPLY @21 DO ~SetGlobal("VP_Pay_to_Saemon","GLOBAL",1)~ EXTERN ~PPSAEM~ TS81
  IF ~~ THEN REPLY @22 EXTERN ~YOSHJ~ TS167
END
END

APPEND ~VALYGARJ~

IF ~~ THEN BEGIN TS122
  SAY @20
  IF ~~ THEN REPLY @21 DO ~SetGlobal("VP_Pay_to_Saemon","GLOBAL",1)~ EXTERN ~PPSAEM~ TS81
  IF ~~ THEN REPLY @22 EXTERN ~YOSHJ~ TS167
END
END
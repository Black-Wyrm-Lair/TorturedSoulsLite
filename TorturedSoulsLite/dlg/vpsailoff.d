ALTER_TRANS PPSAEM // file name
BEGIN 13 END // state number (can be more than one)
BEGIN 0 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
  "TRIGGER" ~!InParty("vpkachi")~
END

ALTER_TRANS PPSAEM // file name
BEGIN 52 END // state number (can be more than one)
BEGIN 0 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
  "TRIGGER" ~!InParty("vpkachi")~
END

EXTEND_TOP PPSAEM 13
  IF ~InParty("vpkachi")~ THEN EXTERN VPKACHIJ sailoff1
END

EXTEND_TOP PPSAEM 52
  IF ~InParty("vpkachi")~ THEN EXTERN VPKACHIJ sailoff1
END

APPEND VPKACHIJ

IF ~~ THEN BEGIN sailoff1
  SAY @1
  IF ~~ THEN REPLY @2 EXTERN PPSAEM TS7
END

IF ~~ THEN BEGIN sailoff3
  SAY @4
  IF ~~ THEN EXTERN PPSAEM TS9
END
END

APPEND PPSAEM

IF ~~ THEN BEGIN TS7
  SAY @5
  IF ~~ THEN REPLY @6 EXTERN YOSHJ TS166
END

IF ~~ THEN BEGIN TS8
  SAY @7
  IF ~True()~ THEN GOTO TS81
  IF ~InParty("Valygar")~ THEN EXTERN VALYGARJ TS122
  IF ~InParty("Anomen")~ THEN EXTERN ANOMENJ TS310
  IF ~InParty("Jaheira")~ THEN EXTERN JAHEIRAJ TS531
  IF ~InParty("Keldorn")~ THEN EXTERN KELDORJ TS252
END

IF ~~ THEN BEGIN TS81
  SAY @8
  IF ~~ THEN REPLY @9 GOTO TS0
  IF ~PartyGoldLT(5000) Global("ThiefGroup","GLOBAL",2)~ THEN REPLY @10 EXTERN PPBODHI3 TS20 // ---> ... TS2 ... ---> ... TS5
  IF ~PartyGoldLT(5000) Global("ThiefGroup","GLOBAL",1)~ THEN REPLY @10 EXTERN PPARAN2 TS10
  IF ~~ THEN REPLY @11 EXTERN YOSHJ TS167
END

IF ~~ THEN BEGIN TS2
  SAY @12
  IF ~Global("ThiefGroup","GLOBAL",2)~ THEN DO ~SetGlobal("Start_Island","GLOBAL",1) StartCutSceneMode() StartCutScene("vp41ci")~ EXIT // --->  to the Island with Bodhi
  IF ~Global("ThiefGroup","GLOBAL",1) InParty("vpsime")~ THEN DO ~SetGlobal("Start_Island","GLOBAL",1) StartCutSceneMode() StartCutScene("vp41disp")~ EXIT // --->  to the Island with Sime being in-party
  IF ~Global("ThiefGroup","GLOBAL",1) !InParty("vpsime") Global("Sime_Meet","GLOBAL",0)~ THEN DO ~SetGlobal("Start_Island","GLOBAL",1) StartCutSceneMode() StartCutScene("vp41disc")~ EXIT // ---> to the Island; in-game Sime is destroyed and re-created
  IF ~Global("ThiefGroup","GLOBAL",1) !InParty("vpsime") Global("Sime_Meet","GLOBAL",1)~ THEN DO ~SetGlobal("Start_Island","GLOBAL",1) StartCutSceneMode() StartCutScene("vp41dism")~ EXIT // ---> to the Island; Sime is joinable and moved to the Island
END

IF ~~ THEN BEGIN TS9
  SAY #9749
  IF ~Global("ThiefGroup","GLOBAL",2)~ THEN DO ~StartCutSceneMode() StartCutScene("vp41cn")~ EXIT // --->  to Brynnlaw with Bodhi
  IF ~Global("ThiefGroup","GLOBAL",1) InParty("vpsime")~ THEN DO ~StartCutSceneMode() StartCutScene("vp41dnsp")~ EXIT // --->  to Brynnlaw with Sime being in-party
  IF ~Global("ThiefGroup","GLOBAL",1) !InParty("vpsime") Global("Sime_Meet","GLOBAL",0)~ THEN DO ~StartCutSceneMode() StartCutScene("vp41dnsm")~ EXIT // --->  to Brynnlaw without Yoshimo/Kachiko; in-game Sime is destroyed and re-created
  IF ~Global("ThiefGroup","GLOBAL",1) !InParty("vpsime") Global("Sime_Meet","GLOBAL",1)~ THEN DO ~StartCutSceneMode() StartCutScene("vp41dnsc")~ EXIT  // ---> to Brynnlaw without Yoshimo/Kachiko; Sime is joinable and moved to Brynnlaw  
END

IF ~~ THEN BEGIN TS0
  SAY @13
  IF ~Global("ThiefGroup","GLOBAL",2)~ THEN EXTERN PPBODHI3 TS21
  IF ~Global("ThiefGroup","GLOBAL",1)~ THEN EXTERN PPARAN2 TS11
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
== PPSAEM @13
END
IF ~~ THEN EXTERN PPARAN2 TS11

CHAIN PPARAN2 TS11
@15
== PPSAEM @16
== PPARAN2 @17
== VPKACHIJ @3
END
  IF ~~ THEN EXTERN PPSAEM TS2

APPEND YOSHJ

IF ~~ THEN BEGIN TS166
  SAY @18
  IF ~~ THEN EXTERN PPSAEM TS8
END

IF ~~ THEN BEGIN TS167
  SAY @19
  IF ~~ THEN DO ~SetGlobal("Start_Island","GLOBAL",2)~ EXTERN VPKACHIJ sailoff3
END
END

APPEND KELDORJ

IF ~~ THEN BEGIN TS252
  SAY @20
  IF ~~ THEN REPLY @21 DO ~SetGlobal("VP_Pay_to_Saemon","GLOBAL",1)~ EXTERN PPSAEM TS81
  IF ~~ THEN REPLY @22 EXTERN YOSHJ TS167
END
END

APPEND JAHEIRAJ

IF ~~ THEN BEGIN TS531
  SAY @20
  IF ~~ THEN REPLY @21 DO ~SetGlobal("VP_Pay_to_Saemon","GLOBAL",1)~ EXTERN PPSAEM TS81
  IF ~~ THEN REPLY @22 EXTERN YOSHJ TS167
END
END

APPEND ANOMENJ

IF ~~ THEN BEGIN TS310
  SAY @20
  IF ~~ THEN REPLY @21 DO ~SetGlobal("VP_Pay_to_Saemon","GLOBAL",1)~ EXTERN PPSAEM TS81
  IF ~~ THEN REPLY @22 EXTERN YOSHJ TS167
END
END

APPEND VALYGARJ

IF ~~ THEN BEGIN TS122
  SAY @20
  IF ~~ THEN REPLY @21 DO ~SetGlobal("VP_Pay_to_Saemon","GLOBAL",1)~ EXTERN PPSAEM TS81
  IF ~~ THEN REPLY @22 EXTERN YOSHJ TS167
END
END
ALTER_TRANS PPIRENI1 // file name
BEGIN 32 END // state number (can be more than one)
BEGIN 0 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
  "TRIGGER" ~InParty("Yoshimo")
!Dead("Yoshimo")~
END

ALTER_TRANS PPIRENI1 // file name
BEGIN 32 END // state number (can be more than one)
BEGIN 1 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
  "TRIGGER" ~InParty("Yoshimo")
Dead("Yoshimo")~
END

ALTER_TRANS PPIRENI1 // file name
BEGIN 32 END // state number (can be more than one)
BEGIN 2 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
  "TRIGGER" ~!InParty("Yoshimo")~
END

ADD_TRANS_TRIGGER PPIRENI1 34
~OR(2)
!Global("Kachiko_Saved","GLOBAL",2)
Global("TT_Evil_Path","GLOBAL",3)~ DO 0

EXTEND_BOTTOM PPIRENI1 34
  IF ~Global("Kachiko_Saved","GLOBAL",2)~ THEN DO ~SetGlobal("AsylumPlot","GLOBAL",20)
DisplayString(Myself,50707)
Spell(Myself,DO_NOTHING)
StartCutSceneMode()
StartCutScene("Cut41gN")~ EXIT
END

ADD_TRANS_TRIGGER PPIRENI1 45
~OR(2)
Global("Kachiko_Saved","GLOBAL",3)
Global("TT_Evil_Path","GLOBAL",3)~ DO 0

EXTEND_BOTTOM PPIRENI1 45
  IF ~Global("Kachiko_Saved","GLOBAL",2)~ THEN EXTERN ~YOSHJ~ TS209
END

APPEND ~PPIRENI1~ 

IF ~~ THEN BEGIN 47
  SAY @0
  IF ~~ THEN EXTERN ~YOSHJ~ TS210
END

IF ~~ THEN BEGIN 48
  SAY @1
  IF ~~ THEN EXTERN ~YOSHJ~ TS211
END

IF ~~ THEN BEGIN 49
  SAY @2
  IF ~~ THEN REPLY @3 GOTO 50
  IF ~~ THEN REPLY @4 EXTERN ~YOSHJ~ TS212
  IF ~~ THEN REPLY @5 GOTO 50
END

IF ~~ THEN BEGIN 50
  SAY @6
  IF ~~ THEN EXTERN ~YOSHJ~ TS212
END

IF ~~ THEN BEGIN 51
  SAY @7
  IF ~~ THEN EXTERN ~YOSHJ~ TS213
END

IF ~~ THEN BEGIN 52
  SAY @8
= @9
= @10
= @11
= @12
= @13
= @14
= @15
= @16
= @17
= @18
= @19
  IF ~~ THEN REPLY @20 GOTO 69
  IF ~~ THEN REPLY @21 GOTO 70
  IF ~~ THEN REPLY @22 GOTO 71
END

IF ~~ THEN BEGIN 69
  SAY @23
  IF ~~ THEN GOTO 72
END

IF ~~ THEN BEGIN 70
  SAY @24
  IF ~~ THEN GOTO 72
END

IF ~~ THEN BEGIN 71
  SAY @25
  IF ~~ THEN GOTO 72
END

IF ~~ THEN BEGIN 72
  SAY @26
  IF ~~ THEN GOTO 34
END
END
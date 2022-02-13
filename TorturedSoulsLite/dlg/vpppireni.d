//Irenicus Spellhold Appends

//ppireni1.dlg

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
StartCutScene("vp41g")~ EXIT
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

//ppireni2.dlg

ALTER_TRANS PPIRENI2 // file name
BEGIN 19 END // state number (can be more than one)
BEGIN 0 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
  "TRIGGER" ~OR(2)
Global("Kachiko_Saved","GLOBAL",3)
Global("TT_Evil_Path","GLOBAL",3)
OR(2)
!InParty("Yoshimo")
Dead("Yoshimo")~
END

ALTER_TRANS PPIRENI2 // file name
BEGIN 19 END // state number (can be more than one)
BEGIN 1 2 3 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
  "TRIGGER" ~InParty("Yoshimo")
!Dead("Yoshimo")~
END

EXTEND_TOP PPIRENI2 19
	IF ~OR(2)
Global("Kachiko_Saved","GLOBAL",2)
Global("Kachiko_Saved","GLOBAL",0)
	OR(2)
!InParty("Yoshimo")
Dead("Yoshimo")~ THEN DO ~EraseJournalEntry(15751)
EraseJournalEntry(15752)
EraseJournalEntry(23407)
SetGlobal("AsylumPlot","GLOBAL",25)
StartCutSceneMode()
StartCutScene("cut41zh")~ SOLVED_JOURNAL #16535 EXIT
END

ALTER_TRANS PPIRENI2 // file name
BEGIN 20 22 END // state number (can be more than one)
BEGIN 3 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
  "TRIGGER" ~See("Yoshimo")
!Dead("Yoshimo")
!InParty("Yoshimo")~
END

ADD_TRANS_TRIGGER PPIRENI2 27
~OR(4)
Global("Kachiko_Saved","GLOBAL",3)
Global("TT_Evil_Path","GLOBAL",3)
!InParty("Yoshimo")
Dead("Yoshimo")~ DO 0

EXTEND_BOTTOM PPIRENI2 27
	IF ~Global("Kachiko_Saved","GLOBAL",2)~ THEN DO ~EraseJournalEntry(7252)
EraseJournalEntry(7253)
EraseJournalEntry(22952)
EraseJournalEntry(23306)
SetGlobal("AsylumPlot","GLOBAL",40)
StartCutSceneMode()
StartCutScene("vp41j")~ SOLVED_JOURNAL #7255 EXIT
END

ALTER_TRANS PPIRENI2 // file name
BEGIN 45 END // state number (can be more than one)
BEGIN 0 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
  "TRIGGER" ~InParty("Yoshimo")
!Dead("Yoshimo")~
END

ALTER_TRANS PPIRENI2 // file name
BEGIN 45 END // state number (can be more than one)
BEGIN 1 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
  "TRIGGER" ~InParty("Yoshimo")
Dead("Yoshimo")~
END

ALTER_TRANS PPIRENI2 // file name
BEGIN 45 END // state number (can be more than one)
BEGIN 2 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
  "TRIGGER" ~!InParty("Yoshimo")~
END

ADD_TRANS_TRIGGER PPIRENI2 47
~Global("Kachiko_Saved","GLOBAL",2)~ DO 0

ALTER_TRANS PPIRENI2 // file name
BEGIN 47 END // state number (can be more than one)
BEGIN 0 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
  "ACTION" ~SetGlobal("AsylumPlot","GLOBAL",20)
DisplayString(Myself,50707)
Spell(Myself,DO_NOTHING)
StartCutSceneMode()
StartCutScene("vp41g")~
END

EXTEND_BOTTOM PPIRENI2 47
  IF ~OR(2)
!Global("Kachiko_Saved","GLOBAL",2)
Global("TT_Evil_Path","GLOBAL",3)~ THEN DO ~SetGlobal("AsylumPlot","GLOBAL",20)
DisplayString(Myself,50707)
Spell(Myself,DO_NOTHING)
StartCutSceneMode()
StartCutScene("Cut41g")~ EXIT
END

ADD_TRANS_TRIGGER PPIRENI2 66
~OR(2)
Global("Kachiko_Saved","GLOBAL",3)
Global("TT_Evil_Path","GLOBAL",3)~ DO 0

EXTEND_BOTTOM PPIRENI2 66
  IF ~Global("Kachiko_Saved","GLOBAL",2)~ THEN EXTERN ~YOSHJ~ TS209
END

APPEND ~PPIRENI2~

IF ~~ THEN BEGIN N18
  SAY @0
  IF ~~ THEN EXTERN ~YOSHJ~ TS210
END

IF ~~ THEN BEGIN N68
  SAY @1
  IF ~~ THEN EXTERN ~YOSHJ~ TS211
END

IF ~~ THEN BEGIN N69
  SAY @2
  IF ~~ THEN REPLY @3 GOTO N71
  IF ~~ THEN REPLY @4 EXTERN ~YOSHJ~ TS212
  IF ~~ THEN REPLY @5 GOTO N71
END

IF ~~ THEN BEGIN N71
  SAY @6
  IF ~~ THEN EXTERN ~YOSHJ~ TS212
END

IF ~~ THEN BEGIN N72
  SAY @7
  IF ~~ THEN EXTERN ~YOSHJ~ TS213
END

IF ~~ THEN BEGIN N73
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
  IF ~~ THEN REPLY @20 GOTO N90
  IF ~~ THEN REPLY @21 GOTO N91
  IF ~~ THEN REPLY @22 GOTO N92
END

IF ~~ THEN BEGIN N90
  SAY @23
  IF ~~ THEN GOTO N93
END

IF ~~ THEN BEGIN N91
  SAY @24
  IF ~~ THEN GOTO N93
END

IF ~~ THEN BEGIN N92
  SAY @25
  IF ~~ THEN GOTO N93
END

IF ~~ THEN BEGIN N93
  SAY @26
  IF ~~ THEN GOTO 47
END
END

// Irenicus Additions

APPEND YOSHJ

IF ~~ THEN BEGIN TS209
  SAY @111
  IF ~Global("YoshimoAndHisBetrayal","GLOBAL",0)~ THEN EXTERN ~PPIRENI1~ 47
  IF ~Global("YoshimoAndHisBetrayal","GLOBAL",1)~ THEN EXTERN ~PPIRENI2~ N18
END

IF ~~ THEN BEGIN TS210
  SAY @112
  IF ~Global("YoshimoAndHisBetrayal","GLOBAL",0)~ THEN EXTERN ~PPIRENI1~ 48
  IF ~Global("YoshimoAndHisBetrayal","GLOBAL",1)~ THEN EXTERN ~PPIRENI2~ N68
END

IF ~~ THEN BEGIN TS211
  SAY @113
  IF ~Global("YoshimoAndHisBetrayal","GLOBAL",0)~ THEN EXTERN ~PPIRENI1~ 49
  IF ~Global("YoshimoAndHisBetrayal","GLOBAL",1)~ THEN EXTERN ~PPIRENI2~ N69
END

IF ~~ THEN BEGIN TS212
  SAY @114
  IF ~Global("YoshimoAndHisBetrayal","GLOBAL",0)~ THEN EXTERN ~PPIRENI1~ 51
  IF ~Global("YoshimoAndHisBetrayal","GLOBAL",1)~ THEN EXTERN ~PPIRENI2~ N72
END

IF ~~ THEN BEGIN TS213
  SAY @115
  IF ~Global("YoshimoAndHisBetrayal","GLOBAL",0)~ THEN EXTERN ~PPIRENI1~ 52
  IF ~Global("YoshimoAndHisBetrayal","GLOBAL",1)~ THEN EXTERN ~PPIRENI2~ N73
END
END

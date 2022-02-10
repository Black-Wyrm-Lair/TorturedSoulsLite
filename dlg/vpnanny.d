BEGIN VPNANNY

IF ~NumberOfTimesTalkedTo(0)
See("Yoshimo")~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN DO ~SetGlobal("Yoshimo_Meet","LOCALS",1)~ EXTERN ~YOSHJ~ TS183
END

IF ~~ THEN BEGIN 1
  SAY @1
  IF ~~ THEN EXIT
END

IF ~!NumberOfTimesTalkedTo(0)~ THEN BEGIN 2
  SAY @2
  IF ~~ THEN EXIT
END

IF ~NumberOfTimesTalkedTo(0)
OR(2)
!InPartySlot(LastTalkedToBy,0)
!Name("Yoshimo",LastTalkedToBy)~ THEN BEGIN 3
  SAY @3
  IF ~~ THEN EXIT
END

APPEND YOSHJ

IF ~~ THEN BEGIN TS183
  SAY @4
  IF ~~ THEN EXTERN ~VPNANNY~ 1
END
END

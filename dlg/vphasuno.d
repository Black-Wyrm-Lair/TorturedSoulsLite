BEGIN VPHASUNO

IF ~Name("Yoshimo",LastTalkedToBy)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN DO ~StartStore("vphasuno",LastTalkedToBy)~ EXIT
END

IF ~OR(2)
!InPartySlot(LastTalkedToBy,0)
!Name("Yoshimo",LastTalkedToBy)~ THEN BEGIN 1
  SAY @1
  IF ~~ THEN DO ~StartStore("vphasuno",LastTalkedToBy)~ EXIT
END

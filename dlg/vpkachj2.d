BEGIN VPKACHJ2

CHAIN IF ~Global("VP_Yoshimo_Dies","GLOBAL",2)
See(Player1)
!StateCheck(Player1,STATE_SLEEPING)~ THEN VPKACHJ2 0
@0 DO ~LeaveParty()
EscapeArea()~ 
EXIT

CHAIN VPKACHJ2 1
@1
EXIT

CHAIN VPKACHJ2 2
@2 DO ~LeaveParty()
EscapeArea()~ EXIT

// Solar

EXTEND_BOTTOM FINSOL01 27
  IF ~InParty("vpkachi")~ THEN EXTERN VPKACHJ2 KachiChoice
END

CHAIN VPKACHJ2 KachiChoice
@3
END
  IF ~Kit(Player1,KENSAI)~ THEN EXTERN VPKACHJ2 KachiChoiceKensai
  IF ~!Kit(Player1,KENSAI)~ THEN EXTERN VPKACHJ2 KachiChoiceNoKensai

CHAIN VPKACHJ2 KachiChoiceKensai
@4
END
COPY_TRANS FINSOL01 27

CHAIN VPKACHJ2 KachiChoiceNoKensai
@5
END
COPY_TRANS FINSOL01 27

//IF ~~ THEN BEGIN 6
//  SAY @1
//  IF ~~ THEN DO ~ActionOverride("Yoshimo",JoinParty())~ EXIT
//END

//IF ~~ THEN BEGIN 7
//  SAY @2
//  IF ~~ THEN DO ~ActionOverride("Yoshimo",EscapeArea())
//LeaveParty()
//EscapeArea())~ EXIT
//END
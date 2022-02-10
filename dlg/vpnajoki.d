BEGIN VPNAJOKI

CHAIN IF ~NumberOfTimesTalkedTo(0) GlobalLT("Kachiko_Saved","GLOBAL",2)~ THEN VPNAJOKI 0
@0
== YOSHJ @1
== VPNAJOKI @2
== YOSHJ @3
== VPNAJOKI @4
== YOSHJ @5
== VPNAJOKI @6
== YOSHJ @7
END
  IF ~~ THEN REPLY @8 EXTERN VPNAJOKI 4
  IF ~~ THEN REPLY @9 DO ~GiveItemCreate("SCRL63",Player1,0,0,0)~ EXIT
  IF ~~ THEN REPLY @10 EXTERN VPNAJOKI 7

CHAIN VPNAJOKI 4
@11
END
  IF ~~ THEN REPLY @12 EXTERN VPNAJOKI 5

CHAIN VPNAJOKI 5
@13
END
  IF ~~ THEN REPLY @14 EXTERN VPNAJOKI 6
  IF ~~ THEN REPLY @15 DO ~GiveItemCreate("SCRL63",Player1,0,0,0)~ EXIT
  IF ~~ THEN REPLY @10 EXTERN VPNAJOKI 7

CHAIN VPNAJOKI 6
@16
== VICONIJ IF ~InParty("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID)~ THEN @17
== KELDORJ IF ~InParty("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)~ THEN @18
== KORGANJ IF ~InParty("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @19
== AERIEJ IF ~InParty("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN @20
END
++ @21 EXTERN VPNAJOKI 7

CHAIN VPNAJOKI 7
@22
END
  IF ~~ THEN REPLY @23 DO ~GiveItemCreate("SCRL63",Player1,0,0,0)~ EXIT
  IF ~~ THEN REPLY @24 DO ~SetGlobal("TT_Evil_Path","GLOBAL",2) Enemy()~ EXIT

CHAIN IF ~NumTimesTalkedToGT(0) GlobalLT("Kachiko_Saved","GLOBAL",2)~ THEN VPNAJOKI 8
@25
END
  IF ~PartyHasItem("SCRL63")~ THEN EXIT
  IF ~!PartyHasItem("SCRL63")~ THEN DO ~GiveItemCreate("SCRL63",Player1,0,0,0)~ EXIT

CHAIN IF ~Global("Kachiko_Saved","GLOBAL",2)~ THEN VPNAJOKI 9
@26
== VPAINO @27 DO ~GiveItem("vpwardti",Player1)~
= @28
== VPNAJOKI @29 DO ~GiveItem("vpcharts",Player1) StartCutScene("TTcutFin")~ EXIT

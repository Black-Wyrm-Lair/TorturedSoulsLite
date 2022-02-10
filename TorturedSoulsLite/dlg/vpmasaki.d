BEGIN VPMASAKI

CHAIN IF ~NumberOfTimesTalkedTo(0)
Global("Kachiko_Kidnapped","GLOBAL",0)
Global("Masaki_Meet","GLOBAL",0)~ THEN VPMASAKI 0
@0 DO ~SetGlobal("Masaki_Meet","GLOBAL",1)~
== VPKACHIJ @1
== VPMASAKI @2
== VPKACHIJ @3
== VPMASAKI @4
== VPKACHIJ @5
== VPMASAKI @6
== VPKACHIJ @7
== VPMASAKI @8
== VPMASAKI @9
== VPKACHIJ @10
== VPMASAKI @11
END
  IF ~Global("Hashimoto_Visited","GLOBAL",0)~ THEN EXTERN VPMASAKI 6
  IF ~Global("Hashimoto_Visited","GLOBAL",1)~ THEN EXTERN VPMASAKI 7

CHAIN VPMASAKI 6
@12 DO ~EscapeArea()~
EXIT

CHAIN VPMASAKI 7
@13
== VPKACHIJ @14
== VPMASAKI @15 DO ~SetGlobal("Kachiko_Kidnapped","GLOBAL",1)
StartCutSceneMode()
StartCutScene("TSCutK01")~ EXIT

CHAIN IF ~Global("Kachiko_Kidnapped","GLOBAL",0)
Global("Masaki_Meet","GLOBAL",1)
Global("Hashimoto_Visited","GLOBAL",1)~ THEN VPMASAKI 9
@16
== VPKACHIJ @14
== VPMASAKI @15 DO ~SetGlobal("Kachiko_Kidnapped","GLOBAL",1)
StartCutSceneMode()
StartCutScene("TSCutK01")~ EXIT

CHAIN IF ~Global("Kachiko_Kidnapped","GLOBAL",3)
Global("Alome_Meet","GLOBAL",1)~ THEN VPMASAKI 10
@17
END
  IF ~Global("Kachiko_Hostile","GLOBAL",0) Global("TT_Evil_Path","GLOBAL",0)~ THEN DO ~SetGlobal("Kachiko_Kidnapped","GLOBAL",4)~ EXTERN ~YOSHJ~ TS193
  IF ~OR(2) Global("Kachiko_Hostile","GLOBAL",1) Global("TT_Evil_Path","GLOBAL",2)~ THEN DO ~SetGlobal("Kachiko_Kidnapped","GLOBAL",4)~ EXTERN ~YOSHJ~ TS194

CHAIN YOSHJ TS193
@18
END
IF ~~ THEN EXTERN VPMASAKI 11

CHAIN YOSHJ TS194
@19
END
IF ~~ THEN EXTERN VPMASAKI 11

CHAIN VPMASAKI 11
@20 DO ~StartCutSceneMode()
ActionOverride(Myself,ForceSpell(Myself,DRYAD_TELEPORT))
ActionOverride(Myself,EndCutSceneMode())~
EXIT

CHAIN IF ~Global("Kachiko_Kidnapped","GLOBAL",4)~ THEN VPMASAKI 12
@21 DO ~SetGlobal("Kachiko_Kidnapped","GLOBAL",5)~
== YOSHJ @22
== VPMASAKI @23 DO ~StartCutSceneMode()
ActionOverride(Myself,ForceSpell(Myself,DRYAD_TELEPORT))
ActionOverride(Myself,EndCutSceneMode())~
EXIT

CHAIN IF ~Global("Kachiko_Kidnapped","GLOBAL",5)~ THEN VPMASAKI 14
@24 DO ~SetGlobal("Kachiko_Kidnapped","GLOBAL",6)
Enemy()~
EXIT

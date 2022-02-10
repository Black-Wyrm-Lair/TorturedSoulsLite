REPLACE_STATE_TRIGGER YOSHIMO 14

~Global("MetYoshimo","GLOBAL",1)
!InParty("vpkachi")
!See("vpkachi")~

REPLACE_STATE_TRIGGER YOSHIMO 21

~Global("DishonorYoshimo","GLOBAL",1)
!InParty("vpkachi")
!See("vpkachi")~

CHAIN IF WEIGHT #-1 ~AreaCheck("AR0313")
Global("VP_OnIsland","GLOBAL",0)
GlobalLT("Chapter","GLOBAL",%bg2_chapter_4%)~ THEN YOSHIMO TS8
@0
END
  IF ~~ THEN REPLY @1 EXTERN YOSHIMO TS9
  IF ~~ THEN REPLY @2 EXTERN YOSHIMO TS10

CHAIN YOSHIMO TS9
@3
END
  IF ~~ THEN REPLY @4 EXTERN YOSHIMO TS10
  IF ~~ THEN REPLY @5 EXTERN YOSHIMO 2

CHAIN YOSHIMO TS10
@6
END
  IF ~OR(2) Global("VP_Kachiko_Joined","GLOBAL",0) Global("VP_YoshFollowsKach","GLOBAL",1)~ THEN DO ~SetGlobal("Kicked_Out","LOCALS",0)~ EXTERN VPKACHI 23
  IF ~Global("VP_Kachiko_Joined","GLOBAL",1)~ THEN DO ~SetGlobal("Kicked_Out","LOCALS",0)~ EXTERN VPKACHIP 0

/*CHAIN VPKACHIP 0
~I think it is a good idea! Better than staying in this barbaric tavern and listening to drunkard sailors!~ DO ~SetGlobal("Kicked_Out","LOCALS",0)
ActionOverride("Yoshimo",JoinParty())
JoinParty()~ EXIT*/

/*CHAIN VPKACHI 23
~I think it is a good idea! Better than staying in this barbaric tavern and listening to drunkard sailors!~ DO ~SetGlobal("Kicked_Out","LOCALS",0)
ActionOverride("Yoshimo",JoinParty())
JoinParty()~ EXIT
*/

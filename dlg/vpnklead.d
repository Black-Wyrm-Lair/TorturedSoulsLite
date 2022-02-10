BEGIN VPNKLEAD

IF ~NumTimesTalkedTo(0)
Global("Samurai_Meeting","GLOBAL",0)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN DO ~SetGlobal("Samurai_Meeting","GLOBAL",1)
Enemy()~ EXIT
END
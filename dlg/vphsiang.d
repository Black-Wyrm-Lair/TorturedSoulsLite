BEGIN VPHSIANG

CHAIN IF ~Global("VP_YoshimoExcuse","GLOBAL",3)~ THEN VPHSIANG 0
@0
== YOSHJ @1
== VPHSIANG @2
== YOSHJ @3
== VPHSIANG @4 DO ~SetGlobal("VP_YoshimoExcuse","GLOBAL",4) Enemy()~
EXIT

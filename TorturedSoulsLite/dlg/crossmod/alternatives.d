//Saemon Docks Dialogue - taken from the original mod 

/* Aster, Saemon, and Sime */ 

CHAIN 
IF WEIGHT #-1 ~InParty("vpkachi")~ THEN ~B!ASTER2~ a6.0TS
@0  
DO ~SetGlobal("B!Alternatives","GLOBAL",10)~ 
== PPSAEM @1  
== ~B!ASTER2~ @2  
== PPSAEM @3  
== ~B!ASTER2~ @4  
== PPSAEM @5 
= @6 
END
  IF ~~ THEN REPLY #43905 /* ~I am all ears, captain. Yours is the voice of experience and I will listen.~ */ EXTERN PPSAEM a6.2TS
  IF ~~ THEN REPLY #43906 /* ~Speak if you must but keep it brief! We should sat sail as soon as possible!~ */ EXTERN ~B!ASTER2~ a6.1TS
  IF ~~ THEN REPLY @7 EXTERN ~B!ASTER2~ a6.1TS

CHAIN ~B!ASTER2~ a6.1TS
@8 
EXTERN ~PPSAEM~ a6.2TS

CHAIN PPSAEM a6.2TS
@9
== ~B!ASTER2~ @10
== PPSAEM #43913 /* ~Protection? I was not aware of any such plans. The captain should be consulted on all such matters.~ */
== ~B!ASTER2~ @11 
== ~B!ASTER2~ #43915 /* ~This is Sime, and she will be staying very close to you, Saemon Havarian. For your safety, of course.~ */
== PPSAEM #43916 /* ~Of course.~ */
== PPSIME #43917 /* ~I shall make certain that, should we be surprised at sea, death will not come from a surprise source. Do I make myself clear?~ */
== PPSAEM #43918 /* ~As clear as clear could be, m'lady, though I am not sure I approve of your tone. I assure you, nothing untoward will happen during our crossing.~ */
== ~B!ASTER2~ #43919 /* ~Sime shall also advise you, <CHARNAME>. She is acquainted with a few of the inhabitants of the island.~ */
== PPSAEM @12 
= #43921 /* ~Hold fast, the journey begins.~ */
END
IF ~~ THEN EXTERN VPKACHIJ sailoff1_alt

/* Malficus, Saemon, and Sime */ 

CHAIN
IF WEIGHT #-1 ~InParty("vpkachi") GlobalLT("B!Tourist","GLOBAL",10)~ THEN ~B!MAL2~ M0.0TS
@13
DO ~SetGlobal("B!Tourist","GLOBAL",10)~
== PPSAEM @1
== ~B!MAL2~ @14
== PPSAEM @3
== ~B!MAL2~ @15
== PPSAEM @5
= @6
END
IF ~~ THEN REPLY #43905 /* ~I am all ears, captain. Yours is the voice of experience and I will listen.~ */ EXTERN PPSAEM m0.2TS
IF ~~ THEN REPLY #43906 /* ~Speak if you must but keep it brief! We should sat sail as soon as possible!~ */ EXTERN ~B!MAL2~ m0.1TS
IF ~~ THEN REPLY @7 EXTERN ~B!MAL2~ m0.1TS

CHAIN ~B!MAL2~ m0.1TS 
@16 
EXTERN ~PPSAEM~ m0.2TS 

CHAIN PPSAEM m0.2TS
@9
== ~B!MAL2~ @10
== PPSAEM #43913 /* ~Protection? I was not aware of any such plans. The captain should be consulted on all such matters.~ */
== ~B!MAL2~ @11 
== ~B!MAL2~ #43915 /* ~This is Sime, and she will be staying very close to you, Saemon Havarian. For your safety, of course.~ */
== PPSAEM #43916 /* ~Of course.~ */
== PPSIME #43917 /* ~I shall make certain that, should we be surprised at sea, death will not come from a surprise source. Do I make myself clear?~ */
== PPSAEM @17 
== ~B!MAL2~ @18 
== PPSAEM @12 
= #43921 /* ~Hold fast, the journey begins.~ */
END
IF ~~ THEN EXTERN VPKACHIJ sailoff1_alt

////////////////
//New lines
////////////////

APPEND VPKACHIJ

IF ~~ THEN BEGIN sailoff1_alt
  SAY @19
  IF ~~ THEN REPLY @20 EXTERN ~PPSAEM~ TS7_alt
END

IF ~~ THEN BEGIN sailoff3_alt
  SAY @21
  IF ~~ THEN EXTERN ~PPSAEM~ TS9_alt
END
END

APPEND ~PPSAEM~

IF ~~ THEN BEGIN TS7_alt
  SAY @22
  IF ~Global("B!Alternatives","GLOBAL",10)~ THEN REPLY @23 EXTERN ~YOSHJ~ TS166_alt
  IF ~Global("B!Tourist","GLOBAL",10)~ THEN REPLY @24 EXTERN ~YOSHJ~ TS166_alt
END

IF ~~ THEN BEGIN TS8_alt
  SAY @25
  IF ~True()~ THEN GOTO TS81_alt
  IF ~InParty("Valygar")~ THEN EXTERN ~VALYGARJ~ TS122_alt
  IF ~InParty("Anomen")~ THEN EXTERN ~ANOMENJ~ TS310_alt
  IF ~InParty("Jaheira")~ THEN EXTERN ~JAHEIRAJ~ TS531_alt
  IF ~InParty("Keldorn")~ THEN EXTERN ~KELDORJ~ TS252_alt
END

IF ~~ THEN BEGIN TS8_mal
  SAY @26
  IF ~True()~ THEN GOTO TS81_alt
  IF ~InParty("Valygar")~ THEN EXTERN ~VALYGARJ~ TS122_alt
  IF ~InParty("Anomen")~ THEN EXTERN ~ANOMENJ~ TS310_alt
  IF ~InParty("Jaheira")~ THEN EXTERN ~JAHEIRAJ~ TS531_alt
  IF ~InParty("Keldorn")~ THEN EXTERN ~KELDORJ~ TS252_alt
END

IF ~~ THEN BEGIN TS81_alt
  SAY @27
  IF ~~ THEN REPLY @28 GOTO TS0_alt
  IF ~PartyGoldLT(5000) Global("B!Tourist","GLOBAL",10)~ THEN REPLY @29 EXTERN ~B!MAL2~ TS20_alt // ---> ... TS2 ... ---> ... TS5
  IF ~PartyGoldLT(5000) Global("B!Alternatives","GLOBAL",10)~ THEN REPLY @29 EXTERN ~B!ASTER2~ TS10_alt
  IF ~Global("B!Tourist","GLOBAL",10)~ THEN REPLY @30 EXTERN ~YOSHJ~ TS167_mal
  IF ~Global("B!Alternatives","GLOBAL",10)~ THEN REPLY @31 EXTERN ~YOSHJ~ TS167_alt 
END

IF ~~ THEN BEGIN TS2_alt
  SAY @32
  IF ~Global("B!Tourist","GLOBAL",10)~ THEN DO ~SetGlobal("Start_Island","GLOBAL",1) StartCutSceneMode() StartCutScene("vpma41di")~ EXIT // --->  to the Island (Malficus)
  IF ~Global("B!Alternatives","GLOBAL",10)~ THEN DO ~SetGlobal("Start_Island","GLOBAL",1) StartCutSceneMode() StartCutScene("vpal41di")~ EXIT // --->  to the Island (Aster)
END

IF ~~ THEN BEGIN TS9_alt
  SAY #9749
  IF ~Global("B!Tourist","GLOBAL",10)~ THEN DO ~StartCutSceneMode() StartCutScene("vpma41dn")~ EXIT // --->  to Brynnlaw w/o Kachiko (Malficus)
  IF ~Global("B!Alternatives","GLOBAL",10)~ THEN DO ~StartCutSceneMode() StartCutScene("vpal41dn")~ EXIT // --->  to Brynnlaw w/o Kachiko (Aster)
END

IF ~~ THEN BEGIN TS0_alt
  SAY @33
  IF ~Global("B!Tourist","GLOBAL",10)~ THEN EXTERN ~B!MAL2~ TS21_alt
  IF ~Global("B!Alternatives","GLOBAL",10)~ THEN EXTERN ~B!ASTER2~ TS11_alt
END
END

// Guild Master Responses

CHAIN ~B!MAL2~ TS20_alt
@34
== PPSAEM @33
END
IF ~~ THEN EXTERN ~B!MAL2~ TS21_alt

CHAIN ~B!MAL2~ TS21_alt
@35
== PPSAEM @36
== ~B!MAL2~ @37
== VPKACHIJ @38
END
  IF ~~ THEN EXTERN PPSAEM TS2_alt

CHAIN ~B!ASTER2~ TS10_alt
@34
== PPSAEM @33
END
IF ~~ THEN EXTERN ~B!ASTER2~ TS11_alt

CHAIN ~B!ASTER2~ TS11_alt
@35
== PPSAEM @39
== ~B!ASTER2~ @37
== VPKACHIJ @38
END
  IF ~~ THEN EXTERN PPSAEM TS2_alt

APPEND ~YOSHJ~

IF ~~ THEN BEGIN TS166_alt
  SAY @40
  IF ~Global("B!Tourist","GLOBAL",10)~ THEN EXTERN ~PPSAEM~ TS8_mal
  IF ~Global("B!Alternatives","GLOBAL",10)~ THEN EXTERN ~PPSAEM~ TS8_alt
END

IF ~~ THEN BEGIN TS167_alt
  SAY @41
  IF ~~ THEN DO ~SetGlobal("Start_Island","GLOBAL",2)~ EXTERN ~VPKACHIJ~ sailoff3_alt
END

IF ~~ THEN BEGIN TS167_mal
  SAY @42
  IF ~~ THEN DO ~SetGlobal("Start_Island","GLOBAL",2)~ EXTERN ~VPKACHIJ~ sailoff3_alt
END
END

APPEND ~KELDORJ~

IF ~~ THEN BEGIN TS252_alt
  SAY @43
  IF ~Global("B!Tourist","GLOBAL",10)~ THEN REPLY @44 DO ~SetGlobal("VP_Pay_to_Saemon","GLOBAL",1)~ EXTERN ~PPSAEM~ TS81_alt
  IF ~Global("B!Tourist","GLOBAL",10)~ THEN REPLY @45 EXTERN ~YOSHJ~ TS167_mal
  IF ~Global("B!Alternatives","GLOBAL",10)~ THEN REPLY @46 DO ~SetGlobal("VP_Pay_to_Saemon","GLOBAL",1)~ EXTERN ~PPSAEM~ TS81_alt
  IF ~Global("B!Alternatives","GLOBAL",10)~ THEN REPLY @47 EXTERN ~YOSHJ~ TS167_alt
END
END

APPEND ~JAHEIRAJ~

IF ~~ THEN BEGIN TS531_alt
  SAY @43
  IF ~Global("B!Tourist","GLOBAL",10)~ THEN REPLY @44 DO ~SetGlobal("VP_Pay_to_Saemon","GLOBAL",1)~ EXTERN ~PPSAEM~ TS81_alt
  IF ~Global("B!Tourist","GLOBAL",10)~ THEN REPLY @45 EXTERN ~YOSHJ~ TS167_mal
  IF ~Global("B!Alternatives","GLOBAL",10)~ THEN REPLY @46 DO ~SetGlobal("VP_Pay_to_Saemon","GLOBAL",1)~ EXTERN ~PPSAEM~ TS81_alt
  IF ~Global("B!Alternatives","GLOBAL",10)~ THEN REPLY @47 EXTERN ~YOSHJ~ TS167_alt
END
END

APPEND ~ANOMENJ~

IF ~~ THEN BEGIN TS310_alt
  SAY @43
  IF ~Global("B!Tourist","GLOBAL",10)~ THEN REPLY @44 DO ~SetGlobal("VP_Pay_to_Saemon","GLOBAL",1)~ EXTERN ~PPSAEM~ TS81_alt
  IF ~Global("B!Tourist","GLOBAL",10)~ THEN REPLY @45 EXTERN ~YOSHJ~ TS167_mal
  IF ~Global("B!Alternatives","GLOBAL",10)~ THEN REPLY @46 DO ~SetGlobal("VP_Pay_to_Saemon","GLOBAL",1)~ EXTERN ~PPSAEM~ TS81_alt
  IF ~Global("B!Alternatives","GLOBAL",10)~ THEN REPLY @47 EXTERN ~YOSHJ~ TS167_alt
END
END

APPEND ~VALYGARJ~

IF ~~ THEN BEGIN TS122_alt
  SAY @43
  IF ~Global("B!Tourist","GLOBAL",10)~ THEN REPLY @44 DO ~SetGlobal("VP_Pay_to_Saemon","GLOBAL",1)~ EXTERN ~PPSAEM~ TS81_alt
  IF ~Global("B!Tourist","GLOBAL",10)~ THEN REPLY @45 EXTERN ~YOSHJ~ TS167_mal
  IF ~Global("B!Alternatives","GLOBAL",10)~ THEN REPLY @46 DO ~SetGlobal("VP_Pay_to_Saemon","GLOBAL",1)~ EXTERN ~PPSAEM~ TS81_alt
  IF ~Global("B!Alternatives","GLOBAL",10)~ THEN REPLY @47 EXTERN ~YOSHJ~ TS167_alt
END
END
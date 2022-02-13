//Saemon Docks Dialogue - taken from the original mod 

/* Aster, Saemon, and Sime */ 

CHAIN 
IF WEIGHT #-1 ~InParty("vpkachi")~ THEN ~B!ASTER2~ a6.0TS
~And here is your ship, as promised. Your gold purchased your passage, as well as the silence of the crew.~ [B!AST_25]  
DO ~SetGlobal("B!Alternatives","GLOBAL",10)~ 
== PPSAEM ~Though a silence more symbolic than anything, as you may well find my men a boisterous lot at all hours. I encourage general revelry.~ [PPSAEM07]  
== ~B!ASTER2~ ~I have no interest in the personal habits of your crew, Captain, so long as my people reach their destination safely and speedily.~ [B!AST_26]  
== PPSAEM ~Never a fear nor worry should cross your thoughts this eve, m'Lord. I have traveled this sea a good many times, and I foresee no troubles.~ [PPSAEM08]  
== ~B!ASTER2~ ~"M'Lord"? Oh, never mind. The "sir" always confuses people. <CHARNAME>, this is Captain Saemon Havarian. He and his ship will... Mr. Havarian, what is your ship called?~ [b!ast_18]  
== PPSAEM ~Ahh, the name changes as do the winds, mainly as I never seem to affix the plate with the proper resin. She is the Galante for now, until whim takes me elsewhere.~ 
= ~As for the voyage, heed my words, <CHARNAME>, as there are dangers to the sea you may not be aware of.~ 
END
  IF ~~ THEN REPLY #43905 /* ~I am all ears, captain. Yours is the voice of experience and I will listen.~ */ EXTERN PPSAEM a6.2TS
  IF ~~ THEN REPLY #43906 /* ~Speak if you must but keep it brief! We should sat sail as soon as possible!~ */ EXTERN ~B!ASTER2~ a6.1TS
  IF ~~ THEN REPLY ~Are you entrusting my safety to this foppish oaf? I do not trust his smile.~ EXTERN ~B!ASTER2~ a6.1TS

CHAIN ~B!ASTER2~ a6.1TS
~Do not anger the captain, <CHARNAME>, unless you feel like swimming to Spellhold.  No other ship would dare the crossing.~ 
EXTERN ~PPSAEM~ a6.2TS

CHAIN PPSAEM a6.2TS
~A sudden squall or hidden reef could prove deadly to the unwary, though we are more likely to encounter pirates of ill repute.~
== ~B!ASTER2~ ~That is why my associates and I have included some protection for this voyage.~
== PPSAEM #43913 /* ~Protection? I was not aware of any such plans. The captain should be consulted on all such matters.~ */
== ~B!ASTER2~ ~You may consider yourself consulted. We deemed it advisable to supply you with another crew member... for your own protection, of course.~ 
== ~B!ASTER2~ #43915 /* ~This is Sime, and she will be staying very close to you, Saemon Havarian. For your safety, of course.~ */
== PPSAEM #43916 /* ~Of course.~ */
== PPSIME #43917 /* ~I shall make certain that, should we be surprised at sea, death will not come from a surprise source. Do I make myself clear?~ */
== PPSAEM #43918 /* ~As clear as clear could be, m'lady, though I am not sure I approve of your tone. I assure you, nothing untoward will happen during our crossing.~ */
== ~B!ASTER2~ #43919 /* ~Sime shall also advise you, <CHARNAME>. She is acquainted with a few of the inhabitants of the island.~ */
== PPSAEM ~Then we are fully staffed and ready to sail. Best that we get underway as soon as possible. Once you're all aboard, we shall away.~ 
= #43921 /* ~Hold fast, the journey begins.~ */
END
IF ~~ THEN EXTERN VPKACHIJ sailoff1_alt

/* Malficus, Saemon, and Sime */ 

CHAIN
IF WEIGHT #-1 ~InParty("vpkachi") GlobalLT("B!Tourist","GLOBAL",10)~ THEN ~B!MAL2~ M0.0TS
~And here is your ship, as promised. Your gold purchased your passage, as well as the silence of the crew.~ [b!mal_09]
DO ~SetGlobal("B!Tourist","GLOBAL",10)~
== PPSAEM ~Though a silence more symbolic than anything, as you may well find my men a boisterous lot at all hours. I encourage general revelry.~ [PPSAEM07]
== ~B!MAL2~ ~I have no interest in the personal habits of your crew, Captain, so long as my people reach their destination safely and speedily.~ [B!MAL_08]
== PPSAEM ~Never a fear nor worry should cross your thoughts this eve, m'Lord. I have traveled this sea a good many times, and I foresee no troubles.~ [PPSAEM08]
== ~B!MAL2~ ~<CHARNAME>, this is Captain Saemon Havarian. He and his ship will... Mr. Havarian, I seem to recall that your ship was called the Pearl.~
== PPSAEM ~Ahh, the name changes as do the winds, mainly as I never seem to affix the plate with the proper resin. She is the Galante for now, until whim takes me elsewhere.~
= ~As for the voyage, heed my words, <CHARNAME>, as there are dangers to the sea you may not be aware of.~
END
IF ~~ THEN REPLY #43905 /* ~I am all ears, captain. Yours is the voice of experience and I will listen.~ */ EXTERN PPSAEM m0.2TS
IF ~~ THEN REPLY #43906 /* ~Speak if you must but keep it brief! We should sat sail as soon as possible!~ */ EXTERN ~B!MAL2~ m0.1TS
IF ~~ THEN REPLY ~Are you entrusting my safety to this foppish oaf? I do not trust his smile.~ EXTERN ~B!MAL2~ m0.1TS

CHAIN ~B!MAL2~ m0.1TS 
~Please, <CHARNAME>, let's not antagonize the good captain.  Not many captains are willing to make the long voyage to Maztica.~ 
EXTERN ~PPSAEM~ m0.2TS 

CHAIN PPSAEM m0.2TS
~A sudden squall or hidden reef could prove deadly to the unwary, though we are more likely to encounter pirates of ill repute.~
== ~B!MAL2~ ~That is why my associates and I have included some protection for this voyage.~
== PPSAEM #43913 /* ~Protection? I was not aware of any such plans. The captain should be consulted on all such matters.~ */
== ~B!MAL2~ ~You may consider yourself consulted. We deemed it advisable to supply you with another crew member... for your own protection, of course.~ 
== ~B!MAL2~ #43915 /* ~This is Sime, and she will be staying very close to you, Saemon Havarian. For your safety, of course.~ */
== PPSAEM #43916 /* ~Of course.~ */
== PPSIME #43917 /* ~I shall make certain that, should we be surprised at sea, death will not come from a surprise source. Do I make myself clear?~ */
== PPSAEM ~As clear as clear could be, m'lord, though I am not sure I approve of your tone. I assure you, nothing untoward will happen during our crossing.~ 
== ~B!MAL2~ ~Sime shall also advise you, <CHARNAME>. She is acquainted with a few of the inhabitants.~ 
== PPSAEM ~Then we are fully staffed and ready to sail. Best that we get underway as soon as possible. Once you're all aboard, we shall away.~ 
= #43921 /* ~Hold fast, the journey begins.~ */
END
IF ~~ THEN EXTERN VPKACHIJ sailoff1_alt

////////////////
//New lines
////////////////

APPEND VPKACHIJ

IF ~~ THEN BEGIN sailoff1_alt
  SAY ~Wait a minute! The ship is ours to take anywhere, right? <CHARNAME>, can we go to Kara-Tur now?~
  IF ~~ THEN REPLY ~Saemon, I have little knowledge of the sea travel. Can you tell me how long will it take us to get to Kara-Tur by sea?~ EXTERN ~PPSAEM~ TS7_alt
END

IF ~~ THEN BEGIN sailoff3_alt
  SAY ~Good luck to you, <CHARNAME>. Farewell.~
  IF ~~ THEN EXTERN ~PPSAEM~ TS9_alt
END
END

APPEND ~PPSAEM~

IF ~~ THEN BEGIN TS7_alt
  SAY ~Half a year, may be a year... It is a long and dangerous route. Not many ships go that far away, and of those that do few return back.~
  IF ~Global("B!Alternatives","GLOBAL",10)~ THEN REPLY ~Yoshimo, Kachiko, I am sorry, but I have to haste to Imoen's rescue, her life is at stake! May be after we find Imoen I will go to Kara-Tur with you...~ EXTERN ~YOSHJ~ TS166_alt
  IF ~Global("B!Tourist","GLOBAL",10)~ THEN REPLY ~Yoshimo, Kachiko, I am sorry, but the route to Maztica is safer. You have to find another ship.~ EXTERN ~YOSHJ~ TS166_alt
END

IF ~~ THEN BEGIN TS8_alt
  SAY ~Ahem, if I may interrupt... I think I have a solution for your problem. Recently I run into a... mmh... an arch-mage of great renown, Harkle Harpel. For a minor service, he gave me this scroll. It's called the Harpel's Fog of Fate. If I cast it, my "Gallante" will carry you to the place you destined to be in mere hours, be it Kara-Tur or Spellhold.~
  IF ~True()~ THEN GOTO TS81_alt
  IF ~InParty("Valygar")~ THEN EXTERN ~VALYGARJ~ TS122_alt
  IF ~InParty("Anomen")~ THEN EXTERN ~ANOMENJ~ TS310_alt
  IF ~InParty("Jaheira")~ THEN EXTERN ~JAHEIRAJ~ TS531_alt
  IF ~InParty("Keldorn")~ THEN EXTERN ~KELDORJ~ TS252_alt
END

IF ~~ THEN BEGIN TS8_mal
  SAY ~Ahem, if I may interrupt... I think I have a solution for your problem. Recently I run into a... mmh... an arch-mage of great renown, Harkle Harpel. For a minor service, he gave me this scroll. It's called the Harpel's Fog of Fate. If I cast it, my "Gallante" will carry you to the place you destined to be in mere hours, be it Maztica or Spellhold.~
  IF ~True()~ THEN GOTO TS81_alt
  IF ~InParty("Valygar")~ THEN EXTERN ~VALYGARJ~ TS122_alt
  IF ~InParty("Anomen")~ THEN EXTERN ~ANOMENJ~ TS310_alt
  IF ~InParty("Jaheira")~ THEN EXTERN ~JAHEIRAJ~ TS531_alt
  IF ~InParty("Keldorn")~ THEN EXTERN ~KELDORJ~ TS252_alt
END

IF ~~ THEN BEGIN TS81_alt
  SAY ~Of course, I would not part with this scroll for less then 5,000 gold.~
  IF ~~ THEN REPLY ~We will pay you, Saemon... if we are to survive this spell.~ GOTO TS0_alt
  IF ~PartyGoldLT(5000) Global("B!Tourist","GLOBAL",10)~ THEN REPLY ~Saemon, it sounds good, but I have not got enough coin.~ EXTERN ~B!MAL2~ TS20_alt // ---> ... TS2 ... ---> ... TS5
  IF ~PartyGoldLT(5000) Global("B!Alternatives","GLOBAL",10)~ THEN REPLY ~Saemon, it sounds good, but I have not got enough coin.~ EXTERN ~B!ASTER2~ TS10_alt
  IF ~Global("B!Tourist","GLOBAL",10)~ THEN REPLY ~On the second thought, this spell seems a way suspicious to trust it. We are sailing to Maztica.~ EXTERN ~YOSHJ~ TS167_mal
  IF ~Global("B!Alternatives","GLOBAL",10)~ THEN REPLY ~On the second thought, this spell seems a way suspicious to trust it. We are sailing to Spellhold.~ EXTERN ~YOSHJ~ TS167_alt 
END

IF ~~ THEN BEGIN TS2_alt
  SAY ~With pleasure. Well, then everything is settled. Here is the scroll.~
  IF ~Global("B!Tourist","GLOBAL",10)~ THEN DO ~SetGlobal("Start_Island","GLOBAL",1) StartCutSceneMode() StartCutScene("vpma41di")~ EXIT // --->  to the Island (Malficus)
  IF ~Global("B!Alternatives","GLOBAL",10)~ THEN DO ~SetGlobal("Start_Island","GLOBAL",1) StartCutSceneMode() StartCutScene("vpal41di")~ EXIT // --->  to the Island (Aster)
END

IF ~~ THEN BEGIN TS9_alt
  SAY #9749
  IF ~Global("B!Tourist","GLOBAL",10)~ THEN DO ~StartCutSceneMode() StartCutScene("vpma41dn")~ EXIT // --->  to Brynnlaw w/o Kachiko (Malficus)
  IF ~Global("B!Alternatives","GLOBAL",10)~ THEN DO ~StartCutSceneMode() StartCutScene("vpal41dn")~ EXIT // --->  to Brynnlaw w/o Kachiko (Aster)
END

IF ~~ THEN BEGIN TS0_alt
  SAY ~That is why I would like to get my payment before I cast the spell.~
  IF ~Global("B!Tourist","GLOBAL",10)~ THEN EXTERN ~B!MAL2~ TS21_alt
  IF ~Global("B!Alternatives","GLOBAL",10)~ THEN EXTERN ~B!ASTER2~ TS11_alt
END
END

// Guild Master Responses

CHAIN ~B!MAL2~ TS20_alt
~My guild will pay you, Saemon... if we are to survive this spell...~
== PPSAEM ~That is why I would like to get my payment before I cast the spell.~
END
IF ~~ THEN EXTERN ~B!MAL2~ TS21_alt

CHAIN ~B!MAL2~ TS21_alt
~Watch you tongue, Saemon. We have already paid you enough!~
== PPSAEM ~You have paid me only for one way to Maztica... Sorry to say, but business is business.~
== ~B!MAL2~ ~Okay, take this money, and try to do your best.~
== VPKACHIJ ~Oh, we will see Kara-Turian shores and prove that Yoshimo is innocent and restore peace between our families. I agree with you, <CHARNAME>, let the fate decide! Cast the spell captain Havarian!~
END
  IF ~~ THEN EXTERN PPSAEM TS2_alt

CHAIN ~B!ASTER2~ TS10_alt
~My guild will pay you, Saemon... if we are to survive this spell...~
== PPSAEM ~That is why I would like to get my payment before I cast the spell.~
END
IF ~~ THEN EXTERN ~B!ASTER2~ TS11_alt

CHAIN ~B!ASTER2~ TS11_alt
~Watch you tongue, Saemon. We have already paid you enough!~
== PPSAEM ~You have paid me only for one way to Brynnlaw... Sorry to say, but business is business.~
== ~B!ASTER2~ ~Okay, take this money, and try to do your best.~
== VPKACHIJ ~Oh, we will see Kara-Turian shores and prove that Yoshimo is innocent and restore peace between our families. I agree with you, <CHARNAME>, let the fate decide! Cast the spell captain Havarian!~
END
  IF ~~ THEN EXTERN PPSAEM TS2_alt

APPEND ~YOSHJ~

IF ~~ THEN BEGIN TS166_alt
  SAY ~No! This is impossible! Eh, no, I'd rather part our ways right now.~
  IF ~Global("B!Tourist","GLOBAL",10)~ THEN EXTERN ~PPSAEM~ TS8_mal
  IF ~Global("B!Alternatives","GLOBAL",10)~ THEN EXTERN ~PPSAEM~ TS8_alt
END

IF ~~ THEN BEGIN TS167_alt
  SAY ~I understand. I wish you good luck in your dealings with Irenicus and rescuing Imoen. Farewell and do not think ill of us.~
  IF ~~ THEN DO ~SetGlobal("Start_Island","GLOBAL",2)~ EXTERN ~VPKACHIJ~ sailoff3_alt
END

IF ~~ THEN BEGIN TS167_mal
  SAY ~I understand. I wish you good luck in your dealings. Farewell and do not think ill of us.~
  IF ~~ THEN DO ~SetGlobal("Start_Island","GLOBAL",2)~ EXTERN ~VPKACHIJ~ sailoff3_alt
END
END

APPEND ~KELDORJ~

IF ~~ THEN BEGIN TS252_alt
  SAY ~<CHARNAME>, Harkle Harpel is no arch-mage, he belongs to a family of lunatics! For what I know of Harpels we might be turned into frogs or some such if you allow Saemon to cast the spell! Be careful!~
  IF ~Global("B!Tourist","GLOBAL",10)~ THEN REPLY ~Well, what's life if not one big gamble! Cast your spell, Saemon, and if it fails I will see good old Harkle turned into a frog himself. But if it works, my friends prepare to see Maztica shores this afternoon!~ DO ~SetGlobal("VP_Pay_to_Saemon","GLOBAL",1)~ EXTERN ~PPSAEM~ TS81_alt
  IF ~Global("B!Tourist","GLOBAL",10)~ THEN REPLY ~That's exactly what I heard about Harpells. Imoen is too dear to me to trust that this spell is an exception from their customary failures. We are sailing to Maztica.~ EXTERN ~YOSHJ~ TS167_mal
  IF ~Global("B!Alternatives","GLOBAL",10)~ THEN REPLY ~Well, what's life if not one big gamble! Cast your spell, Saemon, and if it fails I will see good old Harkle turned into a frog himself. But if it works, my friends prepare to storm Spellhold this afternoon!~ DO ~SetGlobal("VP_Pay_to_Saemon","GLOBAL",1)~ EXTERN ~PPSAEM~ TS81_alt
  IF ~Global("B!Alternatives","GLOBAL",10)~ THEN REPLY ~That's exactly what I heard about Harpells. Imoen is too dear to me to trust that this spell is an exception from their customary failures. We are sailing to Spellhold.~ EXTERN ~YOSHJ~ TS167_alt
END
END

APPEND ~JAHEIRAJ~

IF ~~ THEN BEGIN TS531_alt
  SAY ~<CHARNAME>, Harkle Harpel is no arch-mage, he belongs to a family of lunatics! For what I know of Harpels we might be turned into frogs or some such if you allow Saemon to cast the spell! Be careful!~
  IF ~Global("B!Tourist","GLOBAL",10)~ THEN REPLY ~Well, what's life if not one big gamble! Cast your spell, Saemon, and if it fails I will see good old Harkle turned into a frog himself. But if it works, my friends prepare to see Maztica shores this afternoon!~ DO ~SetGlobal("VP_Pay_to_Saemon","GLOBAL",1)~ EXTERN ~PPSAEM~ TS81_alt
  IF ~Global("B!Tourist","GLOBAL",10)~ THEN REPLY ~That's exactly what I heard about Harpells. Imoen is too dear to me to trust that this spell is an exception from their customary failures. We are sailing to Maztica.~ EXTERN ~YOSHJ~ TS167_mal
  IF ~Global("B!Alternatives","GLOBAL",10)~ THEN REPLY ~Well, what's life if not one big gamble! Cast your spell, Saemon, and if it fails I will see good old Harkle turned into a frog himself. But if it works, my friends prepare to storm Spellhold this afternoon!~ DO ~SetGlobal("VP_Pay_to_Saemon","GLOBAL",1)~ EXTERN ~PPSAEM~ TS81_alt
  IF ~Global("B!Alternatives","GLOBAL",10)~ THEN REPLY ~That's exactly what I heard about Harpells. Imoen is too dear to me to trust that this spell is an exception from their customary failures. We are sailing to Spellhold.~ EXTERN ~YOSHJ~ TS167_alt
END
END

APPEND ~ANOMENJ~

IF ~~ THEN BEGIN TS310_alt
  SAY ~<CHARNAME>, Harkle Harpel is no arch-mage, he belongs to a family of lunatics! For what I know of Harpels we might be turned into frogs or some such if you allow Saemon to cast the spell! Be careful!~
  IF ~Global("B!Tourist","GLOBAL",10)~ THEN REPLY ~Well, what's life if not one big gamble! Cast your spell, Saemon, and if it fails I will see good old Harkle turned into a frog himself. But if it works, my friends prepare to see Maztica shores this afternoon!~ DO ~SetGlobal("VP_Pay_to_Saemon","GLOBAL",1)~ EXTERN ~PPSAEM~ TS81_alt
  IF ~Global("B!Tourist","GLOBAL",10)~ THEN REPLY ~That's exactly what I heard about Harpells. Imoen is too dear to me to trust that this spell is an exception from their customary failures. We are sailing to Maztica.~ EXTERN ~YOSHJ~ TS167_mal
  IF ~Global("B!Alternatives","GLOBAL",10)~ THEN REPLY ~Well, what's life if not one big gamble! Cast your spell, Saemon, and if it fails I will see good old Harkle turned into a frog himself. But if it works, my friends prepare to storm Spellhold this afternoon!~ DO ~SetGlobal("VP_Pay_to_Saemon","GLOBAL",1)~ EXTERN ~PPSAEM~ TS81_alt
  IF ~Global("B!Alternatives","GLOBAL",10)~ THEN REPLY ~That's exactly what I heard about Harpells. Imoen is too dear to me to trust that this spell is an exception from their customary failures. We are sailing to Spellhold.~ EXTERN ~YOSHJ~ TS167_alt
END
END

APPEND ~VALYGARJ~

IF ~~ THEN BEGIN TS122_alt
  SAY ~<CHARNAME>, Harkle Harpel is no arch-mage, he belongs to a family of lunatics! For what I know of Harpels we might be turned into frogs or some such if you allow Saemon to cast the spell! Be careful!~
  IF ~Global("B!Tourist","GLOBAL",10)~ THEN REPLY ~Well, what's life if not one big gamble! Cast your spell, Saemon, and if it fails I will see good old Harkle turned into a frog himself. But if it works, my friends prepare to see Maztica shores this afternoon!~ DO ~SetGlobal("VP_Pay_to_Saemon","GLOBAL",1)~ EXTERN ~PPSAEM~ TS81_alt
  IF ~Global("B!Tourist","GLOBAL",10)~ THEN REPLY ~That's exactly what I heard about Harpells. Imoen is too dear to me to trust that this spell is an exception from their customary failures. We are sailing to Maztica.~ EXTERN ~YOSHJ~ TS167_mal
  IF ~Global("B!Alternatives","GLOBAL",10)~ THEN REPLY ~Well, what's life if not one big gamble! Cast your spell, Saemon, and if it fails I will see good old Harkle turned into a frog himself. But if it works, my friends prepare to storm Spellhold this afternoon!~ DO ~SetGlobal("VP_Pay_to_Saemon","GLOBAL",1)~ EXTERN ~PPSAEM~ TS81_alt
  IF ~Global("B!Alternatives","GLOBAL",10)~ THEN REPLY ~That's exactly what I heard about Harpells. Imoen is too dear to me to trust that this spell is an exception from their customary failures. We are sailing to Spellhold.~ EXTERN ~YOSHJ~ TS167_alt
END
END
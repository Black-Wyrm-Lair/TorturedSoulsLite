BEGIN VPKACHB2

//Lovetalks ToB

CHAIN
IF ~Global("ExpLoveTalk","LOCALS",2)~ THEN VPKACHB2 YoshiKachiLoveTalk1TOB
@0
== BYOSHIM @1
== VPKACHB2 @2
== BYOSHIM @3
== VPKACHB2 @4
EXIT

CHAIN
IF ~Global("ExpLoveTalk","LOCALS",4)~ THEN VPKACHB2 YoshiKachiLoveTalk2TOB
@5
== BYOSHIM @6
== VPKACHB2 @7
== BYOSHIM @8
== VPKACHB2 @9
== BYOSHIM @10
== VPKACHB2 @11
== BYOSHIM @12
== VPKACHB2 @13
EXIT

CHAIN
IF ~Global("ExpLoveTalk","LOCALS",6)~ THEN VPKACHB2 YoshiKachiLoveTalk3TOB
@14
== BYOSHIM @15
== VPKACHB2 @16
== BYOSHIM @17
== VPKACHB2 @18
== BYOSHIM @19
== VPKACHB2 @20
== BYOSHIM @21
== VPKACHB2 @22
EXIT

//Valygar Romance

/*
CHAIN
IF ~InParty("vpkachi")
See("vpkachi")
!StateCheck("Valygar",CD_STATE_NOTVALID)
!StateCheck("vpkachi",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("VPKachiValygar1TOB","GLOBAL",0)~ THEN BVALYG25 KachiValygarTalk1TOB
~Is that true? You two are getting married?~
DO ~SetGlobal("VPKachiValygar1TOB","GLOBAL",1)~
== VPKACHB2 ~Eventually. Well, will you come?~
== BVALYG25 ~My congratulations! Of course I will.~
== VPKACHB2 ~And you will bring <CHARNAME> along?~
== BVALYG25 ~Ahem... Aren't you going to invite <CHARNAME>?~
== VPKACHB2 ~(*Smiles*)~
== BVALYG25 ~Kachiko?~
== VPKACHB2 ~Valygar, of course! You know well enough that Yoshimo's soul was redeemed with her help and we cannot imagine our wedding without <CHARNAME> as our most honored guest, but I was hoping you would come together...~
== BVALYG25 ~The sweet matchmaker is at work again?~
== VPKACHB2 ~How long can I watch you sighing? How long can I watch her giving you secret glances?~
== BVALYG25 ~I am afraid your own happiness makes you see the world in rose, Kachiko. Look at  <CHARNAME>! She may join the pantheon soon. We are on a mission of meticulously killing her blood relatives. It's just not the right time!~
== VPKACHB2 ~When will she need support and love more than now? Valygar, you are taming your heart needlessly.~
== BVALYG25 ~(*sighs*)~
EXIT

CHAIN
IF ~InParty("vpkachi")
See("vpkachi")
!StateCheck("Valygar",CD_STATE_NOTVALID)
!StateCheck("vpkachi",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("VPKachiValygar2TOB","GLOBAL",0)~ THEN BVALYG25 KachiValygarTalk2TOB
~And what makes you so merry, Kachiko?~
DO ~SetGlobal("VPKachiValygar2TOB","GLOBAL",1)~
== VPKACHB2 ~(*Hugs Valygar*)~
== BVALYG25 ~Kachiko, the Kara-Turians are supposed to be a reserved people. Besides, Yoshimo is going to cut my throat shortly.~
== BYOSHIM ~I'll spare you this time, ranger. Cherry Blossom, you embarrass Valygar.~
== VPKACHB2 ~Of course I do not!~
== BYOSHIM ~Yes you do. After all, it is a private matter.~
== VPKACHB2 ~Oh, you are right, Dragon Tongue.~
== BVALYG25 ~What this is all about, lovebirds?~
== BYOSHIM ~(*sighs*) You and <CHARNAME> of course.~
== BVALYG25 ~I did not think the City Crier's had announced that yet.~
== VPKACHB2 ~Sorry, Valygar. It is impossible not to notice.~
== BVALYG25 ~If something goes wrong I know whom to blame, don't I?~
== VPKACHB2 ~One, who does not take risk, will never win.~
EXIT
*/

//Yoshimo-Valygar

CHAIN
IF ~InParty("Yoshimo")
See("Yoshimo")
!StateCheck("Yoshimo",CD_STATE_NOTVALID)
!StateCheck("Valygar",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("VPYoshiValygar1TOB","GLOBAL",0)~ THEN BVALYG25 YoshiValygar1TOB
@23
DO ~SetGlobal("VPYoshiValygar1TOB","GLOBAL",1)~
== BYOSHIM @24
== BVALYG25 @25
== BYOSHIM @26
== BVALYG25 @27
== BYOSHIM @28
== BVALYG25 @29
== BYOSHIM @30
== BVALYG25 @31
EXIT

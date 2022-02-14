BEGIN VPKACHIB

//Aerie

CHAIN
IF ~InParty("Aerie")
See("Aerie")
!StateCheck("Aerie",CD_STATE_NOTVALID)
!StateCheck("vpkachi",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("VPKachiAerie1","GLOBAL",0)~ THEN VPKACHIB KachiAerie1
@0
DO ~SetGlobal("VPKachiAerie1","GLOBAL",1)~
== BAERIE @1
== VPKACHIB @2
== BAERIE @3
== VPKACHIB @4
== BAERIE @5
== VPKACHIB @6
== BAERIE @7
EXIT

// Anomen

CHAIN
IF ~InParty("Anomen")
See("Anomen")
!StateCheck("Anomen",CD_STATE_NOTVALID)
InParty("Yoshimo")
See("Yoshimo")
!StateCheck("Yoshimo",CD_STATE_NOTVALID)
!StateCheck("vpkachi",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("VPKachiAnomen1","GLOBAL",0)~ THEN VPKACHIB KachiAnomen1
@8
DO ~SetGlobal("VPKachiAnomen1","GLOBAL",1)~
== BANOMEN @9
== BYOSHIM @10
== BANOMEN @11
== BYOSHIM @12
== BANOMEN @13
== VPKACHIB @14
== BYOSHIM @15
== BANOMEN @16
== VPKACHIB @17
END
IF ~Global("AnomenMatch","GLOBAL",1) !Global("AnomenRomanceActive","GLOBAL",0) !Global("AnomenRomanceActive","GLOBAL",3)~ THEN EXTERN ~BANOMEN~ TS591
IF ~OR(3) !Global("AnomenMatch","GLOBAL",1) Global("AnomenRomanceActive","GLOBAL",0) Global("AnomenRomanceActive","GLOBAL",3)~ THEN EXIT

CHAIN BANOMEN TS591
@18
END
IF ~~ THEN REPLY @19 EXTERN BANOMEN TS592

CHAIN BANOMEN TS592
@20
END
IF ~~ THEN REPLY @21 EXTERN ~VPKACHIB~ 18

CHAIN VPKACHIB 18
@22
== BANOMEN @23
== BYOSHIM @24
EXIT

//No banters for Cernd :(

// Edwin

CHAIN
IF ~InParty("Edwin")
See("Edwin")
!StateCheck("Edwin",CD_STATE_NOTVALID)
!StateCheck("vpkachi",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("VPKachiEdwin1","GLOBAL",0)~ THEN VPKACHIB KachiEdwin1
@25
DO ~SetGlobal("VPKachiEdwin1","GLOBAL",1)~
== BEDWIN @26
== VPKACHIB @27
== BEDWIN @28
== VPKACHIB @29
END
  IF ~InParty("Minsc") See("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN EXTERN ~BMINSC~ TS103
  IF ~OR(3) !InParty("Minsc") !See("Minsc") StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN REPLY @30 EXIT
  IF ~OR(3) !InParty("Minsc") !See("Minsc") StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN REPLY @31 EXTERN ~BEDWIN~ TS108
  IF ~OR(3) !InParty("Minsc") !See("Minsc") StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN REPLY @32 EXTERN ~BEDWIN~ TS109

CHAIN BMINSC TS103
@33
END
  IF ~~ THEN REPLY @30 EXIT
  IF ~~ THEN REPLY @31 EXTERN ~BEDWIN~ TS108
  IF ~~ THEN REPLY @32 EXTERN ~BEDWIN~ TS109

CHAIN BEDWIN TS108
@34 DO ~LeaveParty() EscapeArea()~ EXIT

CHAIN BEDWIN TS109
@35 DO ~LeaveParty() Enemy()~ EXIT

// Haer'Dalis

CHAIN
IF ~InParty("HaerDalis")
See("HaerDalis")
InParty("Yoshimo")
See("Yoshimo")
!StateCheck("HaerDalis",CD_STATE_NOTVALID)
!StateCheck("Yoshimo",CD_STATE_NOTVALID)
!StateCheck("vpkachi",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("VPKachiHaerDalis1","GLOBAL",0)~ THEN VPKACHIB KachiEdwin1
@36
DO ~SetGlobal("VPKachiHaerDalis1","GLOBAL",1)~
== BHAERDA @37
== VPKACHIB @38
== BHAERDA @39
== BYOSHIM @40
== BHAERDA @41
== VPKACHIB @42
== BHAERDA @43
EXIT

// Imoen

CHAIN
IF ~InParty("Imoen")
See("Imoen")
!StateCheck("Imoen",CD_STATE_NOTVALID)
!StateCheck("vpkachi",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("VPKachiImoen1","GLOBAL",0)~ THEN VPKACHIB KachiImoen1
@44
DO ~SetGlobal("VPKachiImoen1","GLOBAL",1)~
== BIMOEN2 @45
== VPKACHIB @46
== BIMOEN2 @47
== VPKACHIB @48
EXIT

// Jaheira

CHAIN
IF ~InParty("Jaheira")
See("Jaheira")
!StateCheck("Jaheira",CD_STATE_NOTVALID)
!StateCheck("vpkachi",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("VPKachiJaheira1","GLOBAL",0)~ THEN VPKACHIB KachiImoen1
@49
DO ~SetGlobal("VPKachiJaheira1","GLOBAL",1)~
== BJAHEIR @50
== VPKACHIB @51
== BJAHEIR @52
== VPKACHIB @53
== BJAHEIR @54
== VPKACHIB @55
== BJAHEIR @56
== VPKACHIB @55
== BYOSHIM @57
== VPKACHIB @58
== BJAHEIR @59
EXIT

// Jan

CHAIN
IF ~InParty("Jan")
See("Jan")
!StateCheck("Jan",CD_STATE_NOTVALID)
!StateCheck("vpkachi",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
!Global("End_Island","GLOBAL",0)
Global("VPKachiJan1","GLOBAL",0)~ THEN VPKACHIB KachiJan1
@60
DO ~SetGlobal("VPKachiJan1","GLOBAL",1)~
== BJAN @61
== VPKACHIB @62
== BJAN @63
== VPKACHIB @64
== BJAN @65
== VPKACHIB @66
== BJAN @67
== VPKACHIB @68
EXIT

// Keldorn

CHAIN
IF ~InParty("Keldorn")
See("Keldorn")
!StateCheck("Keldorn",CD_STATE_NOTVALID)
!StateCheck("vpkachi",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("VPKachiKeldorn1","GLOBAL",0)~ THEN VPKACHIB KachiKeldorn1
@69
DO ~SetGlobal("VPKachiKeldorn1","GLOBAL",1)~
== BKELDOR @70
== VPKACHIB @71
== BKELDOR @72
== VPKACHIB @73
== BKELDOR @74
== VPKACHIB @75
== BKELDOR @76
== VPKACHIB @77
== BKELDOR @78
== VPKACHIB @79
EXIT

// Mazzy

CHAIN
IF ~InParty("Mazzy")
See("Mazzy")
!StateCheck("Mazzy",CD_STATE_NOTVALID)
!StateCheck("vpkachi",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("VPKachiMazzy1","GLOBAL",0)~ THEN VPKACHIB KachiMazzy1
@80
DO ~SetGlobal("VPKachiMazzy1","GLOBAL",1)~
== BMAZZY @81
== VPKACHIB @82
== BMAZZY @83
== VPKACHIB @84
== BMAZZY @85
== BVALYGA IF ~InParty("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)~ THEN @86
== VPKACHIB @87
== BMAZZY @88
END
IF ~OR(2) !InParty("Valygar") StateCheck("Valygar",CD_STATE_NOTVALID)~ THEN EXIT
IF ~InParty("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)~ THEN EXTERN BMAZZY KachiMazzy1.1

CHAIN BMAZZY KachiMazzy1.1
@89
== BVALYGA @90
== VPKACHIB  @91
== BVALYGA @92
== VPKACHIB @93
EXIT

// Minsc

CHAIN
IF ~InParty("Minsc")
See("Minsc")
!StateCheck("Minsc",CD_STATE_NOTVALID)
!StateCheck("vpkachi",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("VPKachiMinsc1","GLOBAL",0)~ THEN VPKACHIB KachiMinsc1
@94
DO ~SetGlobal("VPKachiMinsc1","GLOBAL",1)~
== BMINSC @95
== VPKACHIB @96
== BMINSC @97
== VPKACHIB @98
== BMINSC @99
== VPKACHIB @100
== BMINSC @101
== VPKACHIB @102
EXIT

// Nalia

CHAIN
IF ~InParty("Nalia")
See("Nalia")
!StateCheck("Nalia",CD_STATE_NOTVALID)
InParty("Yoshimo")
See("Yoshimo")
!StateCheck("Yoshimo",CD_STATE_NOTVALID)
!StateCheck("vpkachi",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("VPKachiNalia1","GLOBAL",0)~ THEN VPKACHIB KachiNalia1
@103
DO ~SetGlobal("VPKachiNalia1","GLOBAL",1)~
== BNALIA @104
== BYOSHIM @105
== BNALIA @106
== VPKACHIB @107
== BNALIA @108
EXIT

// Valygar

CHAIN
IF ~InParty("Valygar")
See("Valygar")
!StateCheck("Valygar",CD_STATE_NOTVALID)
!StateCheck("vpkachi",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("VPKachiValygar1","GLOBAL",0)~ THEN VPKACHIB KachiValygar1
@109
DO ~SetGlobal("VPKachiValygar1","GLOBAL",1)~
== BVALYGA @110
== VPKACHIB @111
== BVALYGA @112
== VPKACHIB @113
== BVALYGA @114
== VPKACHIB @115
== BVALYGA @116
EXIT

CHAIN
IF ~InParty("vpkachi")
See("vpkachi")
!StateCheck("vpkachi",CD_STATE_NOTVALID)
!StateCheck("Valygar",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("VPKachiValygar3","GLOBAL",0)~ THEN BVALYGA KachiValygar2
@117
DO ~SetGlobal("VPKachiValygar2","GLOBAL",1)~
== VPKACHIB @118
== BVALYGA @119
== VPKACHIB @120
== BVALYGA @121
== VPKACHIB @122
== BVALYGA @123
== VPKACHIB @124
== BVALYGA @125
== VPKACHIB @126
== BVALYGA @127
EXIT

CHAIN
IF ~InParty("vpkachi")
See("vpkachi")
!StateCheck("vpkachi",CD_STATE_NOTVALID)
InParty("Yoshimo")
See("Yoshimo")
!StateCheck("Yoshimo",CD_STATE_NOTVALID)
!StateCheck("Valygar",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("VPKachiValygar3","GLOBAL",0)~ THEN BVALYGA KachiValygar3
@128
DO ~SetGlobal("VPKachiValygar3","GLOBAL",1)~
== VPKACHIB @129
== BVALYGA @130
== VPKACHIB @131
== BVALYGA @132
== VPKACHIB @133
== BVALYGA @134
== BYOSHIM @135
== BVALYGA @136
== BYOSHIM @137
== VPKACHIB @138
== BYOSHIM  @139
== VPKACHIB @140
== BYOSHIM @141
== VPKACHIB @142
EXIT

// Viconia

CHAIN
IF ~InParty("Viconia")
See("Viconia")
!StateCheck("Viconia",CD_STATE_NOTVALID)
!StateCheck("vpkachi",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("VPKachiViconia1","GLOBAL",0)~ THEN VPKACHIB KachiViconia1
@143
DO ~SetGlobal("VPKachiViconia1","GLOBAL",1)~
== BVICONI @144
== VPKACHIB @145
== BVICONI @146
== VPKACHIB @147
== BVICONI @148
== VPKACHIB @149
== BVICONI @150
== VPKACHIB @151
EXIT

// Lovetalks

CHAIN IF ~Global("LoveTalk","LOCALS",1)~ THEN VPKACHIB YoshiKachiLoveTalk1
@152 DO ~SetGlobal("LoveTalk","LOCALS",2)~
== BYOSHIM @153
== VPKACHIB @154
== BYOSHIM @155
== VPKACHIB @156
== BYOSHIM @157 DO ~RestParty()~
EXIT

CHAIN IF ~Global("LoveTalk","LOCALS",3)~ THEN VPKACHIB YoshiKachiLoveTalk2
@158 DO ~SetGlobal("LoveTalk","LOCALS",4)~
== BYOSHIM @159
== VPKACHIB @160
== BYOSHIM @161 DO ~RestParty()~
EXIT

CHAIN IF ~Global("LoveTalk","LOCALS",5)~ THEN VPKACHIB YoshiKachiLoveTalk3
@162 DO ~SetGlobal("LoveTalk","LOCALS",6)~
== BYOSHIM @163
== VPKACHIB @164
== BYOSHIM @165
== VPKACHIB @166
== BYOSHIM @167
== VPKACHIB @168
== BYOSHIM @169
EXIT

CHAIN IF ~Global("LoveTalk","LOCALS",7)~ THEN VPKACHIB YoshiKachiLoveTalk4
@170 DO ~SetGlobal("LoveTalk","LOCALS",8)~
== BYOSHIM @171
== VPKACHIB @172
== BYOSHIM @173
== VPKACHIB @174
== BYOSHIM @175
== VPKACHIB @176
== BYOSHIM @177 DO ~SetGlobalTimer("VP_KachikoRomance","GLOBAL",ONE_DAY)~
EXIT

CHAIN IF ~Global("LoveTalk","LOCALS",9)~ THEN VPKACHIB YoshiKachiLoveTalk5
@178 DO ~SetGlobal("LoveTalk","LOCALS",10)~
== BYOSHIM @179
== VPKACHIB @180
== BYOSHIM @181
== VPKACHIB @182
== BYOSHIM @183 DO ~RestParty()~
EXIT

CHAIN IF ~Global("VP_YoshimoExcuse","GLOBAL",6)~ THEN VPKACHIB YoshiKachiLoveTalk6
@184 DO ~SetGlobal("VP_YoshimoExcuse","GLOBAL",7)~
== BYOSHIM  @185
== VPKACHIB @186
== BYOSHIM @187
== VPKACHIB @188
== BYOSHIM @189
== VPKACHIB @190
== BYOSHIM @191
EXIT

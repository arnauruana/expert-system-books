; ============================================================================ ;
; ================================= ONTOLOGY ================================= ;
; ============================================================================ ;

; Default created class
(defclass %3ACLIPS_TOP_LEVEL_SLOT_CLASS "Fake class to save top-level slot information"
	(is-a USER)
	(role abstract)
	(single-slot title
		(type STRING)
	;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot year
		(type INTEGER)
	;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot pages
		(type INTEGER)
	;+		(cardinality 1 1)
		(create-accessor read-write))
	(multislot books
		(type INSTANCE)
	;+		(allowed-classes Book)
		(create-accessor read-write))
	(single-slot frequency
		(type SYMBOL)
		(allowed-values rarely occasionaly normaly frequently)
	;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot age
		(type INTEGER)
	;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot rating
		(type FLOAT)
	;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot name_
		(type STRING)
	;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot genre
		(type STRING)
	;+		(cardinality 1 1)
		(create-accessor read-write))
	(multislot author
		(type INSTANCE)
	;+		(allowed-classes Author)
		(cardinality 1 ?VARIABLE)
		(create-accessor read-write))
	(single-slot gender
		(type SYMBOL)
		(allowed-values male female)
	;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot popularity
		(type SYMBOL)
		(allowed-values low medium high)
	;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot available_time
		(type SYMBOL)
		(allowed-values little medium much)
	;+		(cardinality 0 1)
		(create-accessor read-write))
)

; Author class declaration
(defclass Author
	(is-a USER)
	(role concrete)
	(single-slot gender
		(type SYMBOL)
		(allowed-values male female)
	;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot popularity
		(type SYMBOL)
		(allowed-values low medium high)
	;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot rating
		(type FLOAT)
	;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot name_
		(type STRING)
	;+		(cardinality 1 1)
		(create-accessor read-write))
)

; Book class declaration
(defclass Book
	(is-a USER)
	(role concrete)
	(single-slot popularity
		(type SYMBOL)
		(allowed-values low medium high)
	;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot title
		(type STRING)
	;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot rating
		(type FLOAT)
	;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot year
		(type INTEGER)
	;+		(cardinality 1 1)
		(create-accessor read-write))
	(multislot author
		(type INSTANCE)
	;+		(allowed-classes Author)
		(cardinality 1 ?VARIABLE)
		(create-accessor read-write))
	(single-slot genre
		(type STRING)
	;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot pages
		(type INTEGER)
	;+		(cardinality 1 1)
		(create-accessor read-write))
)

; ============================================================================ ;
; ================================ INSTANCES ================================= ;
; ============================================================================ ;

; Instances declaration
(definstances instances

	([ontology_Class10000] of  Author

		(gender female)
		(name "NancyBaker")
		(popularity low)
		(rating 3.78))

	([ontology_Class10001] of  Author

		(gender male)
		(name "AldousHuxley")
		(popularity high)
		(rating 3.99))

	([ontology_Class10002] of  Author

		(gender male)
		(name "FranzKafka")
		(popularity high)
		(rating 3.89))

	([ontology_Class10003] of  Author

		(gender female)
		(name "AynRand")
		(popularity high)
		(rating 3.75))

	([ontology_Class10004] of  Author

		(gender female)
		(name "CorneliaFunke")
		(popularity high)
		(rating 3.91))

	([ontology_Class10005] of  Author

		(gender female)
		(name "DaphneduMaurier")
		(popularity high)
		(rating 4.13))

	([ontology_Class10006] of  Author

		(gender female)
		(name "JaneAusten")
		(popularity high)
		(rating 4.11))

	([ontology_Class10007] of  Author

		(gender female)
		(name "LouisaMayAlcott")
		(popularity high)
		(rating 4.04))

	([ontology_Class10008] of  Author

		(gender female)
		(name "BettySmith")
		(popularity high)
		(rating 4.25))

	([ontology_Class10009] of  Author

		(gender female)
		(name "SylviaPlath")
		(popularity high)
		(rating 4.03))

	([ontology_Class10010] of  Author

		(gender male)
		(name "BernhardSchlink")
		(popularity high)
		(rating 3.72))

	([ontology_Class10011] of  Author

		(gender male)
		(name "J.R.R.Tolkien")
		(popularity high)
		(rating 4.32))

	([ontology_Class10012] of  Author

		(gender male)
		(name "HelenFielding")
		(popularity high)
		(rating 3.71))

	([ontology_Class10013] of  Author

		(gender male)
		(name "J.D.Robb")
		(popularity high)
		(rating 4.29))

	([ontology_Class10014] of  Author

		(gender male)
		(name "ArthurGolden")
		(popularity high)
		(rating 4.1))

	([ontology_Class10015] of  Author

		(gender male)
		(name "NicholasSparks")
		(popularity high)
		(rating 4.07))

	([ontology_Class10016] of  Author

		(gender female)
		(name "MargaretMitchell")
		(popularity high)
		(rating 4.29))

	([ontology_Class10017] of  Author

		(gender male)
		(name "C.S.Lewis")
		(popularity high)
		(rating 4.14))

	([ontology_Class10018] of  Author

		(gender female)
		(name "GailCarsonLevine")
		(popularity high)
		(rating 3.92))

	([ontology_Class10019] of  Author

		(gender male)
		(name "TheodoreSturgeon")
		(popularity medium)
		(rating 4.05))

	([ontology_Class10020] of  Author

		(gender female)
		(name "LaurellK.Hamilton")
		(popularity high)
		(rating 3.99))

	([ontology_Class10021] of  Author

		(gender male)
		(name "FredSaberhagen")
		(popularity medium)
		(rating 3.81))

	([ontology_Class10022] of  Author

		(gender female)
		(name "TanithLee")
		(popularity high)
		(rating 3.89))

	([ontology_Class10023] of  Author

		(gender male)
		(name "DanSimmons")
		(popularity high)
		(rating 4.07))

	([ontology_Class10024] of  Author

		(gender female)
		(name "JeanneKalogridis")
		(popularity medium)
		(rating 3.84))

	([ontology_Class10025] of  Author

		(gender male)
		(name "KimNewman")
		(popularity medium)
		(rating 3.94))

	([ontology_Class10026] of  Author

		(gender male)
		(name "PoppyZ.Brite")
		(popularity medium)
		(rating 3.91))

	([ontology_Class10027] of  Author

		(gender male)
		(name "J.SheridanLeFanu")
		(popularity medium)
		(rating 3.84))

	([ontology_Class10028] of  Author

		(gender male)
		(name "BramStoker")
		(popularity high)
		(rating 3.98))

	([ontology_Class10029] of  Author

		(gender male)
		(name "PeterS.Beagle")
		(popularity high)
		(rating 4.07))

	([ontology_Class10030] of  Author

		(gender male)
		(name "TamoraPierce")
		(popularity high)
		(rating 4.23))

	([ontology_Class10031] of  Author

		(gender male)
		(name "T.A.Barron")
		(popularity medium)
		(rating 4.05))

	([ontology_Class10032] of  Author

		(gender male)
		(name "NatalieBabbitt")
		(popularity high)
		(rating 3.86))

	([ontology_Class10033] of  Author

		(gender male)
		(name "T.H.White")
		(popularity high)
		(rating 4.03))

	([ontology_Class10034] of  Author

		(gender male)
		(name "LemonySnicket")
		(popularity high)
		(rating 3.96))

	([ontology_Class10035] of  Author

		(gender male)
		(name "MeganWhalenTurner")
		(popularity high)
		(rating 4.1))

	([ontology_Class10036] of  Author

		(gender male)
		(name "MichaelEnde")
		(popularity high)
		(rating 4.21))

	([ontology_Class10037] of  Author

		(gender male)
		(name "LloydAlexander")
		(popularity high)
		(rating 4.06))

	([ontology_Class10038] of  Author

		(gender male)
		(name "WilliamGoldman")
		(popularity high)
		(rating 4.25))

	([ontology_Class10039] of  Author

		(gender female)
		(name "KatherinePaterson")
		(popularity high)
		(rating 3.95))

	([ontology_Class10040] of  Author

		(gender female)
		(name "MadeleineL'Engle")
		(popularity high)
		(rating 4.02))

	([ontology_Class10041] of  Author

		(gender female)
		(name "EllenWittlinger")
		(popularity medium)
		(rating 3.68))

	([ontology_Class10042] of  Author

		(gender male)
		(name "AliceHoffman")
		(popularity high)
		(rating 3.81))

	([ontology_Class10043] of  Author

		(gender female)
		(name "AngelaCarter")
		(popularity medium)
		(rating 3.95))

	([ontology_Class10044] of  Author

		(gender female)
		(name "ChitraBanerjeeDivakaruni")
		(popularity medium)
		(rating 3.82))

	([ontology_Class10045] of  Author

		(gender male)
		(name "HermannHesse")
		(popularity high)
		(rating 4.03))

	([ontology_Class10046] of  Author

		(gender male)
		(name "JorgeAmado")
		(popularity medium)
		(rating 4.01))

	([ontology_Class10047] of  Author

		(gender male)
		(name "JohnNichols")
		(popularity medium)
		(rating 4.01))

	([ontology_Class10048] of  Author

		(gender male)
		(name "RudolfoAnaya")
		(popularity medium)
		(rating 3.77))

	([ontology_Class10049] of  Author

		(gender male)
		(name "ItaloCalvino")
		(popularity high)
		(rating 4.04))

	([ontology_Class10050] of  Author

		(gender male)
		(name "JorgeLuisBorges")
		(popularity high)
		(rating 4.32))

	([ontology_Class10051] of  Author

		(gender male)
		(name "MikhailBulgakov")
		(popularity high)
		(rating 4.25))

	([ontology_Class10052] of  Author

		(gender male)
		(name "SharonCreech")
		(popularity high)
		(rating 3.95))

	([ontology_Class10053] of  Author

		(gender male)
		(name "AnthonyBurgess")
		(popularity high)
		(rating 4.0))

	([ontology_Class10054] of  Author

		(gender male)
		(name "ThomasHardy")
		(popularity high)
		(rating 3.84))

	([ontology_Class10055] of  Author

		(gender male)
		(name "CharlesDickens")
		(popularity high)
		(rating 3.88))

	([ontology_Class10056] of  Author

		(gender male)
		(name "RalphEllison")
		(popularity high)
		(rating 3.86))

	([ontology_Class10057] of  Author

		(gender female)
		(name "EllenRaskin")
		(popularity high)
		(rating 4.02))

	([ontology_Class10058] of  Author

		(gender female)
		(name "ZoraNealeHurston")
		(popularity high)
		(rating 3.92))

	([ontology_Class10059] of  Author

		(gender male)
		(name "GustaveFlaubert")
		(popularity high)
		(rating 3.68))

	([ontology_Class10060] of  Author

		(gender male)
		(name "JohnSteinbeck")
		(popularity high)
		(rating 3.92))

	([ontology_Class10061] of  Author

		(gender male)
		(name "MarkTwain")
		(popularity high)
		(rating 3.86))

	([ontology_Class10062] of  Author

		(gender male)
		(name "JosephConrad")
		(popularity high)
		(rating 3.5))

	([ontology_Class10063] of  Author

		(gender male)
		(name "DianaGabaldon")
		(popularity high)
		(rating 4.27))

	([ontology_Class10064] of  Author

		(gender male)
		(name "ChinuaAchebe")
		(popularity high)
		(rating 3.66))

	([ontology_Class10065] of  Author

		(gender male)
		(name "KenKesey")
		(popularity high)
		(rating 4.19))

	([ontology_Class10066] of  Author

		(gender male)
		(name "ErnestHemingway")
		(popularity high)
		(rating 3.83))

	([ontology_Class10067] of  Author

		(gender male)
		(name "PhilipPullman")
		(popularity high)
		(rating 4.01))

	([ontology_Class10068] of  Author

		(gender male)
		(name "RichardAdams")
		(popularity high)
		(rating 4.04))

	([ontology_Class10069] of  Author

		(gender male)
		(name "FyodorDostoyevsky")
		(popularity high)
		(rating 4.18))

	([ontology_Class10070] of  Author

		(gender male)
		(name "AlbertCamus")
		(popularity high)
		(rating 3.99))

	([ontology_Class10071] of  Author

		(gender female)
		(name "MaryWollstonecraftShelley")
		(popularity high)
		(rating 3.78))

	([ontology_Class10072] of  Author

		(gender male)
		(name "DanielKeyes")
		(popularity high)
		(rating 4.11))

	([ontology_Class10073] of  Author

		(gender male)
		(name "GeorgeOrwell")
		(popularity high)
		(rating 4.05))

	([ontology_Class10074] of  Author

		(gender male)
		(name "J.D.Salinger")
		(popularity high)
		(rating 3.83))

	([ontology_Class10075] of  Author

		(gender male)
		(name "WilliamGolding")
		(popularity high)
		(rating 3.66))

	([ontology_Class10076] of  Author

		(gender female)
		(name "S.E.Hinton")
		(popularity high)
		(rating 4.06))

	([ontology_Class10077] of  Author

		(gender male)
		(name "F.ScottFitzgerald")
		(popularity high)
		(rating 3.89))

	([ontology_Class10078] of  Author

		(gender male)
		(name "WilkieCollins")
		(popularity high)
		(rating 3.92))

	([ontology_Class10079] of  Author

		(gender male)
		(name "PeterTremayne")
		(popularity medium)
		(rating 4.18))

	([ontology_Class10080] of  Author

		(gender male)
		(name "MargaretFrazer")
		(popularity medium)
		(rating 4.01))

	([ontology_Class10081] of  Author

		(gender female)
		(name "DorothyDunnett")
		(popularity medium)
		(rating 4.41))

	([ontology_Class10082] of  Author

		(gender male)
		(name "BruceAlexander")
		(popularity medium)
		(rating 4.04))

	([ontology_Class10083] of  Author

		(gender male)
		(name "KateRoss")
		(popularity medium)
		(rating 4.09))

	([ontology_Class10084] of  Author

		(gender female)
		(name "SharonKayPenman")
		(popularity high)
		(rating 4.22))

	([ontology_Class10085] of  Author

		(gender male)
		(name "StevenSaylor")
		(popularity medium)
		(rating 3.92))

	([ontology_Class10086] of  Author

		(gender male)
		(name "CharlesTodd")
		(popularity high)
		(rating 3.94))

	([ontology_Class10087] of  Author

		(gender male)
		(name "IainPears")
		(popularity medium)
		(rating 3.83))

	([ontology_Class10088] of  Author

		(gender female)
		(name "JosephineTey")
		(popularity medium)
		(rating 3.95))

	([ontology_Class10089] of  Author

		(gender male)
		(name "JudithGuest")
		(popularity medium)
		(rating 3.87))

	([ontology_Class10090] of  Author

		(gender male)
		(name "JohnUpdike")
		(popularity high)
		(rating 3.8))

	([ontology_Class10091] of  Author

		(gender male)
		(name "JamesA.Michener")
		(popularity high)
		(rating 4.13))

	([ontology_Class10092] of  Author

		(gender female)
		(name "M.M.Kaye")
		(popularity medium)
		(rating 4.16))

	([ontology_Class10093] of  Author

		(gender male)
		(name "PatrickO'Brian")
		(popularity high)
		(rating 4.31))

	([ontology_Class10094] of  Author

		(gender male)
		(name "EdwardRutherfurd")
		(popularity high)
		(rating 4.05))

	([ontology_Class10095] of  Author

		(gender male)
		(name "JohnFowles")
		(popularity high)
		(rating 3.94))

	([ontology_Class10096] of  Author

		(gender female)
		(name "KathleenWinsor")
		(popularity medium)
		(rating 3.98))

	([ontology_Class10097] of  Author

		(gender male)
		(name "JamesClavell")
		(popularity high)
		(rating 4.29))

	([ontology_Class10098] of  Author

		(gender male)
		(name "WalterScott")
		(popularity high)
		(rating 3.74))

	([ontology_Class10099] of  Author

		(gender male)
		(name "IrvingStone")
		(popularity high)
		(rating 4.09))

	([ontology_Class10100] of  Author

		(gender female)
		(name "DonnaWoolfolkCross")
		(popularity medium)
		(rating 4.07))

	([ontology_Class10101] of  Author

		(gender male)
		(name "LeonUris")
		(popularity high)
		(rating 4.22))

	([ontology_Class10102] of  Author

		(gender female)
		(name "AnyaSeton")
		(popularity medium)
		(rating 4.05))

	([ontology_Class10103] of  Author

		(gender male)
		(name "MichaelOndaatje")
		(popularity high)
		(rating 3.8))

	([ontology_Class10104] of  Author

		(gender male)
		(name "RobertGraves")
		(popularity high)
		(rating 4.13))

	([ontology_Class10105] of  Author

		(gender male)
		(name "AlexandreDumas")
		(popularity high)
		(rating 4.16))

	([ontology_Class10106] of  Author

		(gender male)
		(name "CharlesFrazier")
		(popularity high)
		(rating 3.82))

	([ontology_Class10107] of  Author

		(gender female)
		(name "AnitaDiamant")
		(popularity high)
		(rating 4.09))

	([ontology_Class10108] of  Author

		(gender male)
		(name "HarrietBeecherStowe")
		(popularity high)
		(rating 3.86))

	([ontology_Class10109] of  Author

		(gender male)
		(name "ErichMariaRemarque")
		(popularity high)
		(rating 4.04))

	([ontology_Class10110] of  Author

		(gender male)
		(name "LeoTolstoy")
		(popularity high)
		(rating 4.04))

	([ontology_Class10111] of  Author

		(gender male)
		(name "VladimirNabokov")
		(popularity high)
		(rating 3.88))

	([ontology_Class10112] of  Author

		(gender male)
		(name "JosephHeller")
		(popularity high)
		(rating 3.96))

	([ontology_Class10113] of  Author

		(gender male)
		(name "LewisCarroll")
		(popularity high)
		(rating 4.06))

	([ontology_Class10114] of  Author

		(gender male)
		(name "NortonJuster")
		(popularity high)
		(rating 4.2))

	([ontology_Class10115] of  Author

		(gender male)
		(name "PeterStraub")
		(popularity high)
		(rating 4.02))

	([ontology_Class10116] of  Author

		(gender female)
		(name "MildredD.Taylor")
		(popularity high)
		(rating 3.85))

	([ontology_Class10117] of  Author

		(gender male)
		(name "SidneySheldon")
		(popularity high)
		(rating 3.82))

	([ontology_Class10118] of  Author

		(gender male)
		(name "HermanWouk")
		(popularity high)
		(rating 4.28))

	([ontology_Class10119] of  Author

		(gender male)
		(name "ChaimPotok")
		(popularity high)
		(rating 4.08))

	([ontology_Class10120] of  Author

		(gender male)
		(name "TerryBrooks")
		(popularity high)
		(rating 3.96))

	([ontology_Class10121] of  Author

		(gender male)
		(name "WallaceStegner")
		(popularity high)
		(rating 4.16))

	([ontology_Class10122] of  Author

		(gender female)
		(name "SusanCooper")
		(popularity high)
		(rating 4.04))

	([ontology_Class10123] of  Author

		(gender male)
		(name "JeffreyArcher")
		(popularity high)
		(rating 4.01))

	([ontology_Class10124] of  Author

		(gender male)
		(name "ThomasPynchon")
		(popularity high)
		(rating 3.85))

	([ontology_Class10125] of  Author

		(gender male)
		(name "FrederickForsyth")
		(popularity high)
		(rating 4.07))

	([ontology_Class10126] of  Author

		(gender male)
		(name "MichaelShaara")
		(popularity medium)
		(rating 4.31))

	([ontology_Class10127] of  Author

		(gender male)
		(name "E.L.Doctorow")
		(popularity medium)
		(rating 3.77))

	([ontology_Class10128] of  Author

		(gender female)
		(name "IrisMurdoch")
		(popularity medium)
		(rating 3.82))

	([ontology_Class10129] of  Author

		(gender male)
		(name "WilliamPeterBlatty")
		(popularity high)
		(rating 4.12))

	([ontology_Class10130] of  Author

		(gender male)
		(name "HunterS.Thompson")
		(popularity high)
		(rating 4.03))

	([ontology_Class10131] of  Author

		(gender female)
		(name "PatriciaA.McKillip")
		(popularity high)
		(rating 3.99))

	([ontology_Class10132] of  Author

		(gender male)
		(name "RandMiller")
		(popularity medium)
		(rating 4.05))

	([ontology_Class10133] of  Author

		(gender male)
		(name "MervynPeake")
		(popularity high)
		(rating 3.82))

	([ontology_Class10134] of  Author

		(gender male)
		(name "RobertLudlum")
		(popularity high)
		(rating 3.99))

	([ontology_Class10135] of  Author

		(gender male)
		(name "JohnGalsworthy")
		(popularity medium)
		(rating 4.11))

	([ontology_Class10136] of  Author

		(gender male)
		(name "ArthurConanDoyle")
		(popularity high)
		(rating 4.2))

	([ontology_Class10137] of  Author

		(gender male)
		(name "GaryPaulsen")
		(popularity high)
		(rating 3.77))

	([ontology_Class10138] of  Author

		(gender male)
		(name "AlexHaley")
		(popularity high)
		(rating 4.42))

	([ontology_Class10139] of  Author

		(gender male)
		(name "HermanMelville")
		(popularity high)
		(rating 3.53))

	([ontology_Class10140] of  Author

		(gender female)
		(name "AnnaSewell")
		(popularity high)
		(rating 3.96))

	([ontology_Class10141] of  Author

		(gender male)
		(name "DaltonTrumbo")
		(popularity medium)
		(rating 4.16))

	([ontology_Class10142] of  Author

		(gender male)
		(name "JohannDavidWyss")
		(popularity medium)
		(rating 3.92))

	([ontology_Class10143] of  Author

		(gender male)
		(name "WilliamStyron")
		(popularity high)
		(rating 4.12))

	([ontology_Class10144] of  Author

		(gender female)
		(name "JeanCraigheadGeorge")
		(popularity high)
		(rating 3.92))

	([ontology_Class10145] of  Author

		(gender female)
		(name "CatherineAnderson")
		(popularity high)
		(rating 4.08))

	([ontology_Class10146] of  Author

		(gender male)
		(name "WilliamH.Armstrong")
		(popularity medium)
		(rating 3.96))

	([ontology_Class10147] of  Author

		(gender male)
		(name "MarjorieKinnanRawlings")
		(popularity medium)
		(rating 4.0))

	([ontology_Class10148] of  Author

		(gender male)
		(name "FredGipson")
		(popularity medium)
		(rating 4.07))

	([ontology_Class10149] of  Author

		(gender male)
		(name "WilsonRawls")
		(popularity high)
		(rating 4.06))

	([ontology_Class10150] of  Author

		(gender male)
		(name "AndrzejSapkowski")
		(popularity high)
		(rating 4.25))

	([ontology_Class10151] of  Author

		(gender male)
		(name "L.E.ModesittJr.")
		(popularity high)
		(rating 3.99))

	([ontology_Class10152] of  Author

		(gender female)
		(name "MercedesLackey")
		(popularity high)
		(rating 4.01))

	([ontology_Class10153] of  Author

		(gender male)
		(name "SherwoodSmith")
		(popularity medium)
		(rating 4.01))

	([ontology_Class10154] of  Author

		(gender male)
		(name "AndreDubusIII")
		(popularity high)
		(rating 3.82))

	([ontology_Class10155] of  Author

		(gender female)
		(name "AnnieProulx")
		(popularity high)
		(rating 3.88))

	([ontology_Class10156] of  Author

		(gender male)
		(name "GregoryMaguire")
		(popularity high)
		(rating 3.52))

	([ontology_Class10157] of  Author

		(gender male)
		(name "StephenCrane")
		(popularity high)
		(rating 3.4))

	([ontology_Class10158] of  Author

		(gender male)
		(name "CandaceBushnell")
		(popularity high)
		(rating 3.34))

	([ontology_Class10159] of  Author

		(gender female)
		(name "VirginiaWoolf")
		(popularity high)
		(rating 3.82))

	([ontology_Class10160] of  Author

		(gender male)
		(name "JamesJoyce")
		(popularity high)
		(rating 3.74))

	([ontology_Class10161] of  Author

		(gender male)
		(name "WilliamFaulkner")
		(popularity high)
		(rating 3.85))

	([ontology_Class10162] of  Author

		(gender female)
		(name "PearlS.Buck")
		(popularity high)
		(rating 3.98))

	([ontology_Class10163] of  Author

		(gender male)
		(name "JackKerouac")
		(popularity high)
		(rating 3.72))

	([ontology_Class10164] of  Author

		(gender male)
		(name "GuyGavrielKay")
		(popularity high)
		(rating 4.11))

	([ontology_Class10165] of  Author

		(gender male)
		(name "ElizabethHaydon")
		(popularity medium)
		(rating 4.03))

	([ontology_Class10166] of  Author

		(gender male)
		(name "ElizabethMoon")
		(popularity high)
		(rating 4.05))

	([ontology_Class10167] of  Author

		(gender male)
		(name "StephenR.Donaldson")
		(popularity high)
		(rating 3.91))

	([ontology_Class10168] of  Author

		(gender male)
		(name "StevenErikson")
		(popularity high)
		(rating 4.23))

	([ontology_Class10169] of  Author

		(gender male)
		(name "JimThompson")
		(popularity medium)
		(rating 3.88))

	([ontology_Class10170] of  Author

		(gender male)
		(name "IrvineWelsh")
		(popularity high)
		(rating 3.92))

	([ontology_Class10171] of  Author

		(gender male)
		(name "W.SomersetMaugham")
		(popularity high)
		(rating 4.04))

	([ontology_Class10172] of  Author

		(gender male)
		(name "ChristopherPriest")
		(popularity medium)
		(rating 3.81))

	([ontology_Class10173] of  Author

		(gender male)
		(name "RobertJamesWaller")
		(popularity medium)
		(rating 3.57))

	([ontology_Class10174] of  Author

		(gender male)
		(name "IanFleming")
		(popularity high)
		(rating 3.74))

	([ontology_Class10175] of  Author

		(gender female)
		(name "P.L.Travers")
		(popularity high)
		(rating 4.05))

	([ontology_Class10176] of  Author

		(gender male)
		(name "JamesFenimoreCooper")
		(popularity high)
		(rating 3.7))

	([ontology_Class10177] of  Author

		(gender male)
		(name "PeterBenchley")
		(popularity high)
		(rating 3.92))

	([ontology_Class10178] of  Author

		(gender female)
		(name "ValMcDermid")
		(popularity high)
		(rating 3.92))

	([ontology_Class10179] of  Author

		(gender female)
		(name "MaryHigginsClark")
		(popularity high)
		(rating 3.82))

	([ontology_Class10180] of  Author

		(gender male)
		(name "HenningMankell")
		(popularity high)
		(rating 3.83))

	([ontology_Class10181] of  Author

		(gender female)
		(name "DorothyL.Sayers")
		(popularity high)
		(rating 4.06))

	([ontology_Class10182] of  Author

		(gender female)
		(name "AgathaChristie")
		(popularity high)
		(rating 3.99))

	([ontology_Class10183] of  Author

		(gender male)
		(name "JamesM.Cain")
		(popularity medium)
		(rating 3.92))

	([ontology_Class10184] of  Author

		(gender female)
		(name "DonnaTartt")
		(popularity high)
		(rating 3.93))

	([ontology_Class10185] of  Author

		(gender male)
		(name "DavidGuterson")
		(popularity high)
		(rating 3.79))

	([ontology_Class10186] of  Author

		(gender male)
		(name "MichaelConnelly")
		(popularity high)
		(rating 4.13))

	([ontology_Class10187] of  Author

		(gender male)
		(name "DashiellHammett")
		(popularity high)
		(rating 3.95))

	([ontology_Class10188] of  Author

		(gender female)
		(name "PatriciaHighsmith")
		(popularity high)
		(rating 3.87))

	([ontology_Class10189] of  Author

		(gender male)
		(name "LeeChild")
		(popularity high)
		(rating 4.07))

	([ontology_Class10190] of  Author

		(gender male)
		(name "JohnGrisham")
		(popularity high)
		(rating 3.89))

	([ontology_Class10191] of  Author

		(gender male)
		(name "RobertLouisStevenson")
		(popularity high)
		(rating 3.84))

	([ontology_Class10192] of  Author

		(gender male)
		(name "RaymondChandler")
		(popularity high)
		(rating 4.06))

	([ontology_Class10193] of  Author

		(gender male)
		(name "MarioPuzo")
		(popularity high)
		(rating 4.25))

	([ontology_Class10194] of  Author

		(gender male)
		(name "D.H.Lawrence")
		(popularity high)
		(rating 3.59))

	([ontology_Class10195] of  Author

		(gender male)
		(name "MarcelProust")
		(popularity medium)
		(rating 4.22))

	([ontology_Class10196] of  Author

		(gender male)
		(name "WilliamMakepeaceThackeray")
		(popularity high)
		(rating 3.77))

	([ontology_Class10197] of  Author

		(gender male)
		(name "WilliamS.Burroughs")
		(popularity high)
		(rating 3.69))

	([ontology_Class10198] of  Author

		(gender male)
		(name "DavidFosterWallace")
		(popularity high)
		(rating 4.14))

	([ontology_Class10199] of  Author

		(gender male)
		(name "TimLaHaye")
		(popularity high)
		(rating 3.95))

	([ontology_Class10200] of  Author

		(gender male)
		(name "BillieLetts")
		(popularity high)
		(rating 3.98))

	([ontology_Class10201] of  Author

		(gender female)
		(name "RebeccaWells")
		(popularity high)
		(rating 3.79))

	([ontology_Class10202] of  Author

		(gender male)
		(name "BorisPasternak")
		(popularity medium)
		(rating 4.03))

	([ontology_Class10203] of  Author

		(gender female)
		(name "FrancineRivers")
		(popularity high)
		(rating 4.39))

	([ontology_Class10204] of  Author

		(gender female)
		(name "ElizabethGaskell")
		(popularity high)
		(rating 4.01))

	([ontology_Class10205] of  Author

		(gender male)
		(name "JohnMarsden")
		(popularity high)
		(rating 4.06))

	([ontology_Class10206] of  Author

		(gender male)
		(name "GeorgeMacDonald")
		(popularity medium)
		(rating 4.05))

	([ontology_Class10207] of  Author

		(gender male)
		(name "GeorgesBataille")
		(popularity medium)
		(rating 3.85))

	([ontology_Class10208] of  Author

		(gender male)
		(name "DorothyAllison")
		(popularity medium)
		(rating 4.07))

	([ontology_Class10209] of  Author

		(gender male)
		(name "HubertSelbyJr.")
		(popularity medium)
		(rating 4.02))

	([ontology_Class10210] of  Author

		(gender male)
		(name "JayAnson")
		(popularity medium)
		(rating 3.83))

	([ontology_Class10211] of  Author

		(gender female)
		(name "A.M.Homes")
		(popularity medium)
		(rating 3.64))

	([ontology_Class10212] of  Author

		(gender female)
		(name "CharlottePerkinsGilman")
		(popularity high)
		(rating 4.02))

	([ontology_Class10213] of  Author

		(gender male)
		(name "HansChristianAndersen")
		(popularity high)
		(rating 4.13))

	([ontology_Class10214] of  Author

		(gender female)
		(name "ElizabethMariePope")
		(popularity medium)
		(rating 4.1))

	([ontology_Class10215] of  Author

		(gender male)
		(name "PamelaDean")
		(popularity medium)
		(rating 3.81))

	([ontology_Class10216] of  Author

		(gender male)
		(name "JacobGrimm")
		(popularity high)
		(rating 4.18))

	([ontology_Class10217] of  Author

		(gender male)
		(name "KingsleyAmis")
		(popularity medium)
		(rating 3.67))

	([ontology_Class10218] of  Author

		(gender male)
		(name "StellaGibbons")
		(popularity medium)
		(rating 3.87))

	([ontology_Class10219] of  Author

		(gender male)
		(name "JeromeK.Jerome")
		(popularity medium)
		(rating 3.89))

	([ontology_Class10220] of  Author

		(gender male)
		(name "ThomasMann")
		(popularity high)
		(rating 3.94))

	([ontology_Class10221] of  Author

		(gender female)
		(name "GeorgeEliot")
		(popularity high)
		(rating 3.83))

	([ontology_Class10222] of  Author

		(gender female)
		(name "AmandaQuick")
		(popularity high)
		(rating 3.9))

	([ontology_Class10223] of  Author

		(gender female)
		(name "GeorgetteHeyer")
		(popularity high)
		(rating 3.91))

	([ontology_Class10224] of  Author

		(gender female)
		(name "KathleenE.Woodiwiss")
		(popularity medium)
		(rating 4.03))

	([ontology_Class10225] of  Author

		(gender female)
		(name "LauraKinsale")
		(popularity medium)
		(rating 3.93))

	([ontology_Class10226] of  Author

		(gender male)
		(name "IvanTurgenev")
		(popularity high)
		(rating 3.91))

	([ontology_Class10227] of  Author

		(gender male)
		(name "HenryJames")
		(popularity high)
		(rating 3.63))

	([ontology_Class10228] of  Author

		(gender male)
		(name "NikolaiGogol")
		(popularity high)
		(rating 4.05))

	([ontology_Class10229] of  Author

		(gender female)
		(name "KateChopin")
		(popularity high)
		(rating 3.71))

	([ontology_Class10230] of  Author

		(gender male)
		(name "JimHarrison")
		(popularity medium)
		(rating 3.99))

	([ontology_Class10231] of  Author

		(gender male)
		(name "CatherineRyanHyde")
		(popularity high)
		(rating 4.09))

	([ontology_Class10232] of  Author

		(gender male)
		(name "RobertBloch")
		(popularity high)
		(rating 4.1))

	([ontology_Class10233] of  Author

		(gender male)
		(name "FelixSalten")
		(popularity medium)
		(rating 4.1))

	([ontology_Class10234] of  Author

		(gender female)
		(name "AnitaLoos")
		(popularity low)
		(rating 3.66))

	([ontology_Class10235] of  Author

		(gender male)
		(name "JamesHerbert")
		(popularity high)
		(rating 3.83))

	([ontology_Class10236] of  Author

		(gender male)
		(name "ThomasTryon")
		(popularity medium)
		(rating 3.94))

	([ontology_Class10237] of  Author

		(gender male)
		(name "DouglasPreston")
		(popularity high)
		(rating 4.0))

	([ontology_Class10238] of  Author

		(gender male)
		(name "IraLevin")
		(popularity high)
		(rating 3.93))

	([ontology_Class10239] of  Author

		(gender male)
		(name "DavidSeltzer")
		(popularity medium)
		(rating 4.0))

	([ontology_Class10240] of  Author

		(gender female)
		(name "ShirleyJackson")
		(popularity high)
		(rating 3.98))

	([ontology_Class10241] of  Author

		(gender female)
		(name "DodieSmith")
		(popularity high)
		(rating 4.02))

	([ontology_Class10242] of  Author

		(gender female)
		(name "JaneGreen")
		(popularity high)
		(rating 3.59))

	([ontology_Class10243] of  Author

		(gender female)
		(name "VivianVandeVelde")
		(popularity medium)
		(rating 3.78))

	([ontology_Class10244] of  Author

		(gender male)
		(name "AlanLightman")
		(popularity medium)
		(rating 3.93))

	([ontology_Class10245] of  Author

		(gender female)
		(name "AlexandraRipley")
		(popularity medium)
		(rating 3.49))

	([ontology_Class10246] of  Author

		(gender female)
		(name "MaryDowningHahn")
		(popularity medium)
		(rating 4.05))

	([ontology_Class10247] of  Author

		(gender male)
		(name "WilliamDiehl")
		(popularity medium)
		(rating 4.01))

	([ontology_Class10248] of  Author

		(gender female)
		(name "FlanneryO'Connor")
		(popularity high)
		(rating 4.18))

	([ontology_Class10249] of  Author

		(gender female)
		(name "SherrylJordan")
		(popularity medium)
		(rating 4.11))

	([ontology_Class10250] of  Author

		(gender female)
		(name "FrannyBillingsley")
		(popularity medium)
		(rating 3.67))

	([ontology_Class10251] of  Author

		(gender female)
		(name "CarolineStevermer")
		(popularity medium)
		(rating 3.82))

	([ontology_Class10252] of  Author

		(gender male)
		(name "Trevanian")
		(popularity medium)
		(rating 4.06))

	([ontology_Class10253] of  Author

		(gender male)
		(name "GeorgeA.Romero")
		(popularity low)
		(rating 3.77))

	([ontology_Class10254] of  Author

		(gender male)
		(name "JoanW.Blos")
		(popularity low)
		(rating 3.59))

	([ontology_Class10255] of  Author

		(gender male)
		(name "DhanGopalMukerji")
		(popularity low)
		(rating 3.31))

	([ontology_Class10256] of  Author

		(gender male)
		(name "JosephKrumgold")
		(popularity low)
		(rating 3.47))

	([ontology_Class10257] of  Author

		(gender male)
		(name "ElizabethForemanLewis")
		(popularity low)
		(rating 3.73))

	([ontology_Class10258] of  Author

		(gender female)
		(name "EmilyCheneyNeville")
		(popularity low)
		(rating 3.62))

	([ontology_Class10259] of  Author

		(gender female)
		(name "MaiaWojciechowska")
		(popularity low)
		(rating 3.55))

	([ontology_Class10260] of  Author

		(gender female)
		(name "KateSeredy")
		(popularity medium)
		(rating 3.95))

	([ontology_Class10261] of  Author

		(gender male)
		(name "RayBradbury")
		(popularity high)
		(rating 4.01))

	([ontology_Class10262] of  Author

		(gender female)
		(name "ElizabethGrayVining")
		(popularity low)
		(rating 3.76))

	([ontology_Class10263] of  Author

		(gender male)
		(name "EricP.Kelly")
		(popularity low)
		(rating 3.76))

	([ontology_Class10264] of  Author

		(gender female)
		(name "PaulaFox")
		(popularity medium)
		(rating 3.66))

	([ontology_Class10265] of  Author

		(gender female)
		(name "FrancesHodgsonBurnett")
		(popularity high)
		(rating 4.13))

	([ontology_Class10266] of  Author

		(gender male)
		(name "HaroldKeith")
		(popularity low)
		(rating 3.91))

	([ontology_Class10267] of  Author

		(gender female)
		(name "CynthiaRylant")
		(popularity high)
		(rating 4.06))

	([ontology_Class10268] of  Author

		(gender male)
		(name "EdwardBloor")
		(popularity medium)
		(rating 3.6))

	([ontology_Class10269] of  Author

		(gender female)
		(name "RachelField")
		(popularity medium)
		(rating 3.85))

	([ontology_Class10270] of  Author

		(gender male)
		(name "HughLofting")
		(popularity medium)
		(rating 3.98))

	([ontology_Class10271] of  Author

		(gender female)
		(name "IreneHunt")
		(popularity medium)
		(rating 3.69))

	([ontology_Class10272] of  Author

		(gender female)
		(name "MargueritedeAngeli")
		(popularity medium)
		(rating 3.78))

	([ontology_Class10273] of  Author

		(gender male)
		(name "RodmanPhilbrick")
		(popularity medium)
		(rating 3.93))

	([ontology_Class10274] of  Author

		(gender female)
		(name "JeanLeeLatham")
		(popularity medium)
		(rating 4.11))

	([ontology_Class10275] of  Author

		(gender female)
		(name "KarenCushman")
		(popularity medium)
		(rating 3.71))

	([ontology_Class10276] of  Author

		(gender female)
		(name "EstherForbes")
		(popularity medium)
		(rating 3.64))

	([ontology_Class10277] of  Author

		(gender female)
		(name "E.L.Konigsburg")
		(popularity high)
		(rating 4.03))

	([ontology_Class10278] of  Author

		(gender male)
		(name "KarenHesse")
		(popularity medium)
		(rating 3.76))

	([ontology_Class10279] of  Author

		(gender male)
		(name "ChristopherPaulCurtis")
		(popularity high)
		(rating 3.94))

	([ontology_Class10280] of  Author

		(gender female)
		(name "J.K.Rowling")
		(popularity high)
		(rating 4.45))

	([ontology_Class10281] of  Author

		(gender female)
		(name "BarbaraKingsolver")
		(popularity high)
		(rating 4.0))

	([ontology_Class10282] of  Author

		(gender female)
		(name "JoanneHarris")
		(popularity high)
		(rating 3.84))

	([ontology_Class10283] of  Author

		(gender female)
		(name "JaneSmiley")
		(popularity high)
		(rating 3.72))

	([ontology_Class10284] of  Author

		(gender female)
		(name "AnaCastillo")
		(popularity low)
		(rating 3.82))

	([ontology_Class10285] of  Author

		(gender female)
		(name "JulietMarillier")
		(popularity high)
		(rating 4.14))

	([ontology_Class10286] of  Author

		(gender male)
		(name "RichardYates")
		(popularity high)
		(rating 3.91))

	([ontology_Class10287] of  Author

		(gender female)
		(name "ToniMorrison")
		(popularity high)
		(rating 3.88))

	([ontology_Class10288] of  Author

		(gender female)
		(name "AmyTan")
		(popularity high)
		(rating 3.9))

	([ontology_Class10289] of  Author

		(gender female)
		(name "DorisLessing")
		(popularity high)
		(rating 3.65))

	([ontology_Class10290] of  Author

		(gender female)
		(name "JeanRhys")
		(popularity medium)
		(rating 3.64))

	([ontology_Class10291] of  Author

		(gender male)
		(name "TerryGoodkind")
		(popularity high)
		(rating 4.01))

	([ontology_Class10292] of  Author

		(gender male)
		(name "StephenKing")
		(popularity high)
		(rating 4.03))

	([ontology_Class10293] of  Author

		(gender female)
		(name "AnnaLeeWaldo")
		(popularity medium)
		(rating 4.21))

	([ontology_Class10294] of  Author

		(gender male)
		(name "RobertJordan")
		(popularity high)
		(rating 4.18))

	([ontology_Class10295] of  Author

		(gender female)
		(name "AnneMichaels")
		(popularity medium)
		(rating 3.9))

	([ontology_Class10296] of  Author

		(gender female)
		(name "ColleenMcCullough")
		(popularity high)
		(rating 4.17))

	([ontology_Class10297] of  Author

		(gender female)
		(name "BetteGreene")
		(popularity medium)
		(rating 3.66))

	([ontology_Class10298] of  Author

		(gender female)
		(name "HanNolan")
		(popularity medium)
		(rating 3.91))

	([ontology_Class10299] of  Author

		(gender female)
		(name "JohannaReiss")
		(popularity medium)
		(rating 3.85))

	([ontology_Class10300] of  Author

		(gender male)
		(name "HansFallada")
		(popularity medium)
		(rating 4.16))

	([ontology_Class10301] of  Author

		(gender male)
		(name "UrsulaHegi")
		(popularity high)
		(rating 4.01))

	([ontology_Class10302] of  Author

		(gender female)
		(name "JudithKerr")
		(popularity medium)
		(rating 4.12))

	([ontology_Class10303] of  Author

		(gender male)
		(name "RabindranathTagore")
		(popularity medium)
		(rating 4.14))

	([ontology_Class10304] of  Author

		(gender male)
		(name "J.G.Farrell")
		(popularity medium)
		(rating 3.86))

	([ontology_Class10305] of  Author

		(gender male)
		(name "V.S.Naipaul")
		(popularity medium)
		(rating 3.7))

	([ontology_Class10306] of  Author

		(gender male)
		(name "KurtVonnegut")
		(popularity high)
		(rating 4.06))

	([ontology_Class10307] of  Author

		(gender male)
		(name "TrumanCapote")
		(popularity high)
		(rating 4.01))

	([ontology_Class10308] of  Author

		(gender male)
		(name "JohnDunning")
		(popularity medium)
		(rating 3.87))

	([ontology_Class10309] of  Author

		(gender male)
		(name "JohnIrving")
		(popularity high)
		(rating 3.99))

	([ontology_Class10310] of  Author

		(gender female)
		(name "JudithMcNaught")
		(popularity high)
		(rating 4.16))

	([ontology_Class10311] of  Author

		(gender male)
		(name "JanetEvanovich")
		(popularity high)
		(rating 4.0))

	([ontology_Class10312] of  Author

		(gender male)
		(name "JonathanLethem")
		(popularity high)
		(rating 3.77))

	([ontology_Class10313] of  Author

		(gender male)
		(name "ThomasHarris")
		(popularity high)
		(rating 4.05))

	([ontology_Class10314] of  Author

		(gender female)
		(name "JoyceCarolOates")
		(popularity high)
		(rating 3.69))

	([ontology_Class10315] of  Author

		(gender male)
		(name "PatBarker")
		(popularity medium)
		(rating 3.96))

	([ontology_Class10316] of  Author

		(gender male)
		(name "PhilipRoth")
		(popularity high)
		(rating 3.81))

	([ontology_Class10317] of  Author

		(gender male)
		(name "GarthNix")
		(popularity high)
		(rating 4.05))

	([ontology_Class10318] of  Author

		(gender male)
		(name "HarukiMurakami")
		(popularity high)
		(rating 3.95))

	([ontology_Class10319] of  Author

		(gender male)
		(name "ChuckPalahniuk")
		(popularity high)
		(rating 3.83))

	([ontology_Class10320] of  Author

		(gender female)
		(name "LindaHoward")
		(popularity high)
		(rating 3.92))

	([ontology_Class10321] of  Author

		(gender female)
		(name "RobinHobb")
		(popularity high)
		(rating 4.19))

	([ontology_Class10322] of  Author

		(gender male)
		(name "AleksandrSolzhenitsyn")
		(popularity high)
		(rating 4.04))

	([ontology_Class10323] of  Author

		(gender male)
		(name "JohnKnowles")
		(popularity high)
		(rating 3.57))

	([ontology_Class10324] of  Author

		(gender female)
		(name "Starhawk")
		(popularity medium)
		(rating 4.12))

	([ontology_Class10325] of  Author

		(gender male)
		(name "ElizabethChandler")
		(popularity medium)
		(rating 4.06))

	([ontology_Class10326] of  Author

		(gender female)
		(name "JeanHegland")
		(popularity medium)
		(rating 3.78))

	([ontology_Class10327] of  Author

		(gender male)
		(name "LloydC.Douglas")
		(popularity medium)
		(rating 4.17))

	([ontology_Class10328] of  Author

		(gender male)
		(name "CharlesM.Sheldon")
		(popularity medium)
		(rating 4.16))

	([ontology_Class10329] of  Author

		(gender female)
		(name "HannahHurnard")
		(popularity medium)
		(rating 4.3))

	([ontology_Class10330] of  Author

		(gender male)
		(name "JohnBunyan")
		(popularity medium)
		(rating 4.0))

	([ontology_Class10331] of  Author

		(gender male)
		(name "ChesterHimes")
		(popularity medium)
		(rating 3.9))

	([ontology_Class10332] of  Author

		(gender male)
		(name "ThorntonWilder")
		(popularity medium)
		(rating 3.74))

	([ontology_Class10333] of  Author

		(gender female)
		(name "MaryRenault")
		(popularity medium)
		(rating 4.06))

	([ontology_Class10334] of  Author

		(gender male)
		(name "HenrykSienkiewicz")
		(popularity medium)
		(rating 3.83))

	([ontology_Class10335] of  Author

		(gender female)
		(name "EllisPeters")
		(popularity high)
		(rating 4.05))

	([ontology_Class10336] of  Author

		(gender male)
		(name "RobertCarter")
		(popularity low)
		(rating 3.69))

	([ontology_Class10337] of  Author

		(gender male)
		(name "CharlesBernardNordhoff")
		(popularity medium)
		(rating 4.02))

	([ontology_Class10338] of  Author

		(gender female)
		(name "LaurieR.King")
		(popularity high)
		(rating 4.04))

	([ontology_Class10339] of  Author

		(gender female)
		(name "EllenEmersonWhite")
		(popularity medium)
		(rating 3.95))

	([ontology_Class10340] of  Author

		(gender male)
		(name "EricAmbler")
		(popularity medium)
		(rating 3.86))

	([ontology_Class10341] of  Author

		(gender male)
		(name "TonyHillerman")
		(popularity high)
		(rating 4.04))

	([ontology_Class10342] of  Author

		(gender male)
		(name "GrahamGreene")
		(popularity high)
		(rating 3.89))

	([ontology_Class10343] of  Author

		(gender male)
		(name "EdgarAllanPoe")
		(popularity high)
		(rating 4.17))

	([ontology_Class10344] of  Author

		(gender male)
		(name "RexStout")
		(popularity high)
		(rating 4.09))

	([ontology_Class10345] of  Author

		(gender male)
		(name "CalebCarr")
		(popularity high)
		(rating 3.99))

	([ontology_Class10346] of  Author

		(gender male)
		(name "JefferyDeaver")
		(popularity high)
		(rating 4.0))

	([ontology_Class10347] of  Author

		(gender female)
		(name "AnnRinaldi")
		(popularity medium)
		(rating 3.78))

	([ontology_Class10348] of  Author

		(gender female)
		(name "JenniferCrusie")
		(popularity high)
		(rating 3.8))

	([ontology_Class10349] of  Author

		(gender male)
		(name "DeborahMcClatchey")
		(popularity low)
		(rating 4.44))

	([ontology_Class10350] of  Author

		(gender male)
		(name "NikosKazantzakis")
		(popularity medium)
		(rating 4.12))

	([ontology_Class10351] of  Author

		(gender female)
		(name "TracyBarrett")
		(popularity low)
		(rating 3.62))

	([ontology_Class10352] of  Author

		(gender male)
		(name "JamesLincolnCollier")
		(popularity medium)
		(rating 3.44))

	([ontology_Class10353] of  Author

		(gender female)
		(name "EvaIbbotson")
		(popularity high)
		(rating 3.93))

	([ontology_Class10354] of  Author

		(gender female)
		(name "KathrynLasky")
		(popularity high)
		(rating 4.0))

	([ontology_Class10355] of  Author

		(gender female)
		(name "EloiseJarvisMcGraw")
		(popularity medium)
		(rating 3.99))

	([ontology_Class10356] of  Author

		(gender female)
		(name "SarahShankman")
		(popularity low)
		(rating 3.62))

	([ontology_Class10357] of  Author

		(gender female)
		(name "MinetteWalters")
		(popularity medium)
		(rating 3.77))

	([ontology_Class10358] of  Author

		(gender female)
		(name "ElizabethPeters")
		(popularity high)
		(rating 4.05))

	([ontology_Class10359] of  Author

		(gender female)
		(name "VictoriaHolt")
		(popularity medium)
		(rating 3.83))

	([ontology_Class10360] of  Author

		(gender male)
		(name "RichardConnell")
		(popularity medium)
		(rating 3.93))

	([ontology_Class10361] of  Author

		(gender male)
		(name "JohnWilliamPolidori")
		(popularity low)
		(rating 3.54))

	([ontology_Class10362] of  Author

		(gender male)
		(name "PatrickMcGrath")
		(popularity medium)
		(rating 3.69))

	([ontology_Class10363] of  Author

		(gender male)
		(name "JamesHogg")
		(popularity low)
		(rating 3.7))

	([ontology_Class10364] of  Author

		(gender female)
		(name "MaryElizabethBraddon")
		(popularity medium)
		(rating 3.75))

	([ontology_Class10365] of  Author

		(gender male)
		(name "M.R.James")
		(popularity medium)
		(rating 4.02))

	([ontology_Class10366] of  Author

		(gender male)
		(name "FedericoMoccia")
		(popularity medium)
		(rating 3.36))

	([ontology_Class10367] of  Author

		(gender female)
		(name "BananaYoshimoto")
		(popularity medium)
		(rating 3.7))

	([ontology_Class10368] of  Author

		(gender male)
		(name "RampoEdogawa")
		(popularity low)
		(rating 3.94))

	([ontology_Class10369] of  Author

		(gender male)
		(name "GailTsukiyama")
		(popularity medium)
		(rating 4.0))

	([ontology_Class10370] of  Author

		(gender male)
		(name "EijiYoshikawa")
		(popularity medium)
		(rating 4.36))

	([ontology_Class10371] of  Author

		(gender male)
		(name "RobinSchone")
		(popularity medium)
		(rating 3.83))

	([ontology_Class10372] of  Author

		(gender male)
		(name "JamesBaldwin")
		(popularity high)
		(rating 4.26))

	([ontology_Class10373] of  Author

		(gender female)
		(name "MargueriteYourcenar")
		(popularity medium)
		(rating 4.11))

	([ontology_Class10374] of  Author

		(gender male)
		(name "EvelynWaugh")
		(popularity high)
		(rating 3.93))

	([ontology_Class10375] of  Author

		(gender female)
		(name "SharynMcCrumb")
		(popularity medium)
		(rating 3.94))

	([ontology_Class10376] of  Author

		(gender male)
		(name "AlanGarner")
		(popularity medium)
		(rating 3.86))

	([ontology_Class10377] of  Author

		(gender male)
		(name "BoothTarkington")
		(popularity medium)
		(rating 3.75))

	([ontology_Class10378] of  Author

		(gender male)
		(name "JohnMyersMyers")
		(popularity low)
		(rating 3.82))

	([ontology_Class10379] of  Author

		(gender male)
		(name "KurbanSaid")
		(popularity low)
		(rating 3.91))

	([ontology_Class10380] of  Author

		(gender female)
		(name "ElizabethvonArnim")
		(popularity medium)
		(rating 3.91))

	([ontology_Class10381] of  Author

		(gender male)
		(name "StevenBrust")
		(popularity high)
		(rating 4.08))

	([ontology_Class10382] of  Author

		(gender male)
		(name "AustinTappanWright")
		(popularity low)
		(rating 4.31))

	([ontology_Class10383] of  Author

		(gender male)
		(name "LutherBlissett")
		(popularity low)
		(rating 4.14))

	([ontology_Class10384] of  Author

		(gender female)
		(name "JoanLindsay")
		(popularity medium)
		(rating 3.71))

	([ontology_Class10385] of  Author

		(gender male)
		(name "RafaelSabatini")
		(popularity medium)
		(rating 4.08))

	([ontology_Class10386] of  Author

		(gender male)
		(name "Thucydides")
		(popularity medium)
		(rating 3.89))

	([ontology_Class10387] of  Author

		(gender female)
		(name "LoriWick")
		(popularity high)
		(rating 4.08))

	([ontology_Class10388] of  Author

		(gender female)
		(name "JanKaron")
		(popularity high)
		(rating 4.21))

	([ontology_Class10389] of  Author

		(gender female)
		(name "CatherineMarshall")
		(popularity medium)
		(rating 4.21))

	([ontology_Class10390] of  Author

		(gender female)
		(name "EudoraWelty")
		(popularity medium)
		(rating 3.87))

	([ontology_Class10391] of  Author

		(gender male)
		(name "ErskineCaldwell")
		(popularity medium)
		(rating 3.72))

	([ontology_Class10392] of  Author

		(gender female)
		(name "KayeGibbons")
		(popularity medium)
		(rating 3.76))

	([ontology_Class10393] of  Author

		(gender male)
		(name "WalkerPercy")
		(popularity high)
		(rating 3.87))

	([ontology_Class10394] of  Author

		(gender male)
		(name "ErnestJ.Gaines")
		(popularity medium)
		(rating 3.99))

	([ontology_Class10395] of  Author

		(gender male)
		(name "ThomasWolfe")
		(popularity medium)
		(rating 3.97))

	([ontology_Class10396] of  Author

		(gender male)
		(name "RobertPennWarren")
		(popularity medium)
		(rating 4.08))

	([ontology_Class10397] of  Author

		(gender female)
		(name "MaryStewart")
		(popularity high)
		(rating 4.05))

	([ontology_Class10398] of  Author

		(gender male)
		(name "WallyLamb")
		(popularity high)
		(rating 3.97))

	([ontology_Class10399] of  Author

		(gender female)
		(name "RobinMcKinley")
		(popularity high)
		(rating 3.97))

	([ontology_Class10400] of  Author

		(gender male)
		(name "KenFollett")
		(popularity high)
		(rating 4.19))

	([ontology_Class10401] of  Author

		(gender male)
		(name "GeorgeR.R.Martin")
		(popularity high)
		(rating 4.37))

	([ontology_Class10402] of  Author

		(gender female)
		(name "AnneRice")
		(popularity high)
		(rating 3.88))

	([ontology_Class10403] of  Author

		(gender female)
		(name "BrigidLowry")
		(popularity low)
		(rating 3.73))

	([ontology_Class10404] of  Author

		(gender female)
		(name "TriciaLynne")
		(popularity low)
		(rating 4.38))

	([ontology_Class10405] of  Author

		(gender female)
		(name "JohannaLindsey")
		(popularity high)
		(rating 3.99))

	([ontology_Class10406] of  Author

		(gender female)
		(name "DeborahSmith")
		(popularity medium)
		(rating 3.89))

	([ontology_Class10407] of  Author

		(gender female)
		(name "JuliaQuinn")
		(popularity high)
		(rating 3.98))

	([ontology_Class10408] of  Author

		(gender female)
		(name "MarianKeyes")
		(popularity high)
		(rating 3.77))

	([ontology_Class10409] of  Author

		(gender male)
		(name "SalmanRushdie")
		(popularity high)
		(rating 3.83))

	([ontology_Class10410] of  Author

		(gender male)
		(name "CatherineAtkins")
		(popularity low)
		(rating 3.71))

	([ontology_Class10411] of  Author

		(gender male)
		(name "PaulScott")
		(popularity medium)
		(rating 4.16))

	([ontology_Class10412] of  Author

		(gender female)
		(name "JacquelynMitchard")
		(popularity high)
		(rating 3.77))

	([ontology_Class10413] of  Author

		(gender male)
		(name "RudyardKipling")
		(popularity high)
		(rating 3.94))

	([ontology_Class10414] of  Author

		(gender male)
		(name "H.P.Lovecraft")
		(popularity high)
		(rating 4.08))

	([ontology_Class10415] of  Author

		(gender male)
		(name "E.M.Forster")
		(popularity high)
		(rating 3.87))

	([ontology_Class10416] of  Author

		(gender male)
		(name "TeresaDenys")
		(popularity low)
		(rating 3.77))

	([ontology_Class10417] of  Author

		(gender female)
		(name "JulieGarwood")
		(popularity high)
		(rating 4.11))

	([ontology_Class10418] of  Author

		(gender male)
		(name "StanleyMiddleton")
		(popularity low)
		(rating 3.36))

	([ontology_Class10419] of  Author

		(gender male)
		(name "DavidStorey")
		(popularity low)
		(rating 3.48))

	([ontology_Class10420] of  Author

		(gender female)
		(name "BerniceRubens")
		(popularity low)
		(rating 3.81))

	([ontology_Class10421] of  Author

		(gender male)
		(name "JohnBerger")
		(popularity high)
		(rating 3.79))

	([ontology_Class10422] of  Author

		(gender male)
		(name "JamesKelman")
		(popularity low)
		(rating 3.61))

	([ontology_Class10423] of  Author

		(gender male)
		(name "BarryUnsworth")
		(popularity medium)
		(rating 3.82))

	([ontology_Class10424] of  Author

		(gender female)
		(name "BarbaraMichaels")
		(popularity medium)
		(rating 3.79))

	([ontology_Class10425] of  Author

		(gender female)
		(name "LoisDuncan")
		(popularity medium)
		(rating 3.72))

	([ontology_Class10426] of  Author

		(gender male)
		(name "RichardPeck")
		(popularity medium)
		(rating 3.92))

	([ontology_Class10427] of  Author

		(gender male)
		(name "GiovanniBoccaccio")
		(popularity medium)
		(rating 3.85))

	([ontology_Class10428] of  Author

		(gender male)
		(name "ThomasMalory")
		(popularity medium)
		(rating 3.98))

	([ontology_Class10429] of  Author

		(gender male)
		(name "DavidEddings")
		(popularity high)
		(rating 4.08))

	([ontology_Class10430] of  Author

		(gender male)
		(name "FrankDeFelitta")
		(popularity medium)
		(rating 3.86))

	([ontology_Class10431] of  Author

		(gender female)
		(name "EdithWharton")
		(popularity high)
		(rating 3.77))

	([ontology_Class10432] of  Author

		(gender male)
		(name "RichardMatheson")
		(popularity high)
		(rating 3.97))

	([ontology_Class10433] of  Author

		(gender male)
		(name "VictorHugo")
		(popularity high)
		(rating 4.12))

	([ontology_Class10434] of  Author

		(gender male)
		(name "OscarWilde")
		(popularity high)
		(rating 4.09))

	([ontology_Class10435] of  Author

		(gender female)
		(name "P.D.James")
		(popularity high)
		(rating 3.72))

	([ontology_Class10436] of  Author

		(gender male)
		(name "RobinCook")
		(popularity high)
		(rating 3.79))

	([ontology_Class10437] of  Author

		(gender male)
		(name "TessaBailey")
		(popularity high)
		(rating 3.98))

	([ontology_Class10438] of  Author

		(gender female)
		(name "PennyReid")
		(popularity high)
		(rating 4.12))

	([ontology_Class10439] of  Author

		(gender female)
		(name "HelenSmith")
		(popularity low)
		(rating 2.97))

	([ontology_Class10440] of  Author

		(gender female)
		(name "VictoriaLynne")
		(popularity low)
		(rating 3.66))

	([ontology_Class10441] of  Author

		(gender female)
		(name "KarenRanney")
		(popularity medium)
		(rating 3.78))

	([ontology_Class10442] of  Author

		(gender female)
		(name "TeresaMedeiros")
		(popularity medium)
		(rating 3.88))

	([ontology_Class10443] of  Author

		(gender female)
		(name "MaryBalogh")
		(popularity high)
		(rating 3.88))

	([ontology_Class10444] of  Author

		(gender female)
		(name "HannahHowell")
		(popularity high)
		(rating 4.13))

	([ontology_Class10445] of  Author

		(gender female)
		(name "DonnaJoNapoli")
		(popularity medium)
		(rating 3.67))

	([ontology_Class10446] of  Author

		(gender female)
		(name "JudithIvory")
		(popularity medium)
		(rating 3.78))

	([ontology_Class10447] of  Author

		(gender female)
		(name "LorraineHeath")
		(popularity high)
		(rating 3.93))

	([ontology_Class10448] of  Author

		(gender male)
		(name "RichardLaymon")
		(popularity high)
		(rating 3.8))

	([ontology_Class10449] of  Author

		(gender male)
		(name "RichardBachman")
		(popularity high)
		(rating 3.84))

	([ontology_Class10450] of  Author

		(gender female)
		(name "KarenRobards")
		(popularity high)
		(rating 3.85))

	([ontology_Class10451] of  Author

		(gender female)
		(name "JacquieGordon")
		(popularity low)
		(rating 4.14))

	([ontology_Class10452] of  Author

		(gender male)
		(name "ItaloSvevo")
		(popularity medium)
		(rating 3.75))

	([ontology_Class10453] of  Author

		(gender male)
		(name "SamuelBeckett")
		(popularity high)
		(rating 3.88))

	([ontology_Class10454] of  Author

		(gender male)
		(name "WilliHeinrich")
		(popularity low)
		(rating 4.1))

	([ontology_Class10455] of  Author

		(gender male)
		(name "AlistairMacLean")
		(popularity high)
		(rating 3.92))

	([ontology_Class10456] of  Author

		(gender male)
		(name "JamesJones")
		(popularity medium)
		(rating 4.03))

	([ontology_Class10457] of  Author

		(gender male)
		(name "IrwinShaw")
		(popularity medium)
		(rating 4.09))

	([ontology_Class10458] of  Author

		(gender male)
		(name "EdwardL.Beach")
		(popularity low)
		(rating 4.16))

	([ontology_Class10459] of  Author

		(gender male)
		(name "NicholasMonsarrat")
		(popularity low)
		(rating 4.12))

	([ontology_Class10460] of  Author

		(gender male)
		(name "RobertHarris")
		(popularity high)
		(rating 3.92))

	([ontology_Class10461] of  Author

		(gender male)
		(name "JackHiggins")
		(popularity high)
		(rating 3.94))

	([ontology_Class10462] of  Author

		(gender female)
		(name "LilianJacksonBraun")
		(popularity high)
		(rating 3.86))

	([ontology_Class10463] of  Author

		(gender female)
		(name "SusanWittigAlbert")
		(popularity medium)
		(rating 3.91))

	([ontology_Class10464] of  Author

		(gender male)
		(name "JoDereske")
		(popularity low)
		(rating 3.82))

	([ontology_Class10465] of  Author

		(gender female)
		(name "MonicaFerris")
		(popularity medium)
		(rating 3.76))

	([ontology_Class10466] of  Author

		(gender male)
		(name "EdmundCrispin")
		(popularity medium)
		(rating 3.8))

	([ontology_Class10467] of  Author

		(gender female)
		(name "G.A.McKevett")
		(popularity medium)
		(rating 4.01))

	([ontology_Class10468] of  Author

		(gender male)
		(name "JeanneM.Dams")
		(popularity low)
		(rating 3.69))

	([ontology_Class10469] of  Author

		(gender female)
		(name "CarolaDunn")
		(popularity medium)
		(rating 3.74))

	([ontology_Class10470] of  Author

		(gender male)
		(name "LawrenceBlock")
		(popularity high)
		(rating 3.87))

	([ontology_Class10471] of  Author

		(gender female)
		(name "VictoriaThompson")
		(popularity medium)
		(rating 4.01))

	([ontology_Class10472] of  Author

		(gender male)
		(name "LordDunsany")
		(popularity medium)
		(rating 3.89))

	([ontology_Class10473] of  Author

		(gender male)
		(name "RobinPaige")
		(popularity medium)
		(rating 3.83))

	([ontology_Class10474] of  Author

		(gender female)
		(name "CarolynHaines")
		(popularity medium)
		(rating 3.96))

	([ontology_Class10475] of  Author

		(gender female)
		(name "EarleneFowler")
		(popularity medium)
		(rating 3.98))

	([ontology_Class10476] of  Author

		(gender male)
		(name "HarlanCoben")
		(popularity high)
		(rating 3.99))

	([ontology_Class10477] of  Author

		(gender male)
		(name "AnneGeorge")
		(popularity medium)
		(rating 4.21))

	([ontology_Class10478] of  Author

		(gender female)
		(name "NancyAtherton")
		(popularity medium)
		(rating 3.94))

	([ontology_Class10479] of  Author

		(gender female)
		(name "DonnaAndrews")
		(popularity medium)
		(rating 3.93))

	([ontology_Class10480] of  Author

		(gender female)
		(name "DorothyGilman")
		(popularity medium)
		(rating 4.07))

	([ontology_Class10481] of  Author

		(gender male)
		(name "AlanPaton")
		(popularity medium)
		(rating 3.89))

	([ontology_Class10482] of  Author

		(gender female)
		(name "MargaretLandon")
		(popularity low)
		(rating 3.76))

	([ontology_Class10483] of  Author

		(gender male)
		(name "CharlesBukowski")
		(popularity high)
		(rating 4.01))

	([ontology_Class10484] of  Author

		(gender female)
		(name "NahokoUehashi")
		(popularity low)
		(rating 4.1))

	([ontology_Class10485] of  Author

		(gender male)
		(name "Sethu")
		(popularity low)
		(rating 3.61))

	([ontology_Class10486] of  Author

		(gender female)
		(name "ElizabethKerner")
		(popularity low)
		(rating 4.0))

	([ontology_Class10487] of  Author

		(gender male)
		(name "O.ChanduMenon")
		(popularity low)
		(rating 3.81))

	([ontology_Class10488] of  Author

		(gender male)
		(name "PunathilKunjabdulla")
		(popularity low)
		(rating 3.63))

	([ontology_Class10489] of  Author

		(gender female)
		(name "LalithambikaAntharjanam")
		(popularity low)
		(rating 4.05))

	([ontology_Class10490] of  Author

		(gender male)
		(name "BruceCoville")
		(popularity high)
		(rating 3.96))

	([ontology_Class10491] of  Author

		(gender female)
		(name "AndreNorton")
		(popularity high)
		(rating 3.87))

	([ontology_Class10492] of  Author

		(gender female)
		(name "FuyumiOno")
		(popularity medium)
		(rating 4.26))

	([ontology_Class10493] of  Author

		(gender female)
		(name "TananariveDue")
		(popularity medium)
		(rating 3.96))

	([ontology_Class10494] of  Author

		(gender male)
		(name "TomClancy")
		(popularity high)
		(rating 4.02))

	([ontology_Class10495] of  Author

		(gender male)
		(name "BreenaClarke")
		(popularity medium)
		(rating 3.48))

	([ontology_Class10496] of  Author

		(gender female)
		(name "MelindaHaynes")
		(popularity medium)
		(rating 3.67))

	([ontology_Class10497] of  Author

		(gender female)
		(name "MaryMcGarryMorris")
		(popularity medium)
		(rating 3.67))

	([ontology_Class10498] of  Author

		(gender female)
		(name "A.ManetteAnsay")
		(popularity medium)
		(rating 3.39))

	([ontology_Class10499] of  Author

		(gender male)
		(name "BretLott")
		(popularity medium)
		(rating 3.64))

	([ontology_Class10500] of  Author

		(gender female)
		(name "TawniO'Dell")
		(popularity medium)
		(rating 3.76))

	([ontology_Class10501] of  Author

		(gender female)
		(name "EdwidgeDanticat")
		(popularity medium)
		(rating 3.92))

	([ontology_Class10502] of  Author

		(gender female)
		(name "SueMiller")
		(popularity high)
		(rating 3.6))

	([ontology_Class10503] of  Author

		(gender female)
		(name "JaneHamilton")
		(popularity high)
		(rating 3.77))

	([ontology_Class10504] of  Author

		(gender male)
		(name "RobertMorgan")
		(popularity medium)
		(rating 3.73))

	([ontology_Class10505] of  Author

		(gender female)
		(name "Ann-MarieMacDonald")
		(popularity medium)
		(rating 3.94))

	([ontology_Class10506] of  Author

		(gender female)
		(name "SuzanneBrockmann")
		(popularity high)
		(rating 4.07))

	([ontology_Class10507] of  Author

		(gender male)
		(name "CliveCussler")
		(popularity high)
		(rating 3.96))

	([ontology_Class10508] of  Author

		(gender female)
		(name "PenelopeWilliamson")
		(popularity low)
		(rating 3.95))

	([ontology_Class10509] of  Author

		(gender male)
		(name "FritzLeiber")
		(popularity medium)
		(rating 3.96))

	([ontology_Class10510] of  Author

		(gender male)
		(name "BobWoodward")
		(popularity high)
		(rating 3.97))

	([ontology_Class10511] of  Author

		(gender male)
		(name "SeanStewart")
		(popularity medium)
		(rating 3.73))

	([ontology_Class10512] of  Author

		(gender male)
		(name "HopeMirrlees")
		(popularity low)
		(rating 3.87))

	([ontology_Class10513] of  Author

		(gender female)
		(name "AnneGolon")
		(popularity medium)
		(rating 4.17))

	([ontology_Class10514] of  Author

		(gender female)
		(name "CatherineDrinkerBowen")
		(popularity low)
		(rating 4.02))

	([ontology_Class10515] of  Author

		(gender female)
		(name "MaggieFurey")
		(popularity medium)
		(rating 3.86))

	([ontology_Class10516] of  Author

		(gender male)
		(name "MelanieRawn")
		(popularity medium)
		(rating 4.0))

	([ontology_Class10517] of  Author

		(gender female)
		(name "PaulaVolsky")
		(popularity low)
		(rating 3.83))

	([ontology_Class10518] of  Author

		(gender female)
		(name "MargaretPetersonHaddix")
		(popularity high)
		(rating 3.98))

	([ontology_Class10519] of  Author

		(gender male)
		(name "EdgarRiceBurroughs")
		(popularity high)
		(rating 3.83))

	([ontology_Class10520] of  Author

		(gender male)
		(name "RobertCormier")
		(popularity medium)
		(rating 3.59))

	([ontology_Class10521] of  Author

		(gender male)
		(name "PeterRobinson")
		(popularity high)
		(rating 3.94))

	([ontology_Class10522] of  Author

		(gender male)
		(name "LauraLippman")
		(popularity high)
		(rating 3.54))

	([ontology_Class10523] of  Author

		(gender male)
		(name "GregIles")
		(popularity high)
		(rating 4.1))

	([ontology_Class10524] of  Author

		(gender female)
		(name "SaraParetsky")
		(popularity high)
		(rating 3.93))

	([ontology_Class10525] of  Author

		(gender male)
		(name "CarolO'Connell")
		(popularity medium)
		(rating 3.99))

	([ontology_Class10526] of  Author

		(gender male)
		(name "JohnD.MacDonald")
		(popularity high)
		(rating 4.0))

	([ontology_Class10527] of  Author

		(gender male)
		(name "RobertB.Parker")
		(popularity high)
		(rating 3.93))

	([ontology_Class10528] of  Author

		(gender female)
		(name "DonnaLeon")
		(popularity high)
		(rating 3.86))

	([ontology_Class10529] of  Author

		(gender male)
		(name "GoreVidal")
		(popularity medium)
		(rating 3.91))

	([ontology_Class10530] of  Author

		(gender male)
		(name "WilburSmith")
		(popularity high)
		(rating 4.04))

	([ontology_Class10531] of  Author

		(gender male)
		(name "GeorgeMacDonaldFraser")
		(popularity medium)
		(rating 4.14))

	([ontology_Class10532] of  Author

		(gender female)
		(name "TanyaHuff")
		(popularity high)
		(rating 3.87))

	([ontology_Class10533] of  Author

		(gender male)
		(name "MikhailSholokhov")
		(popularity medium)
		(rating 4.06))

	([ontology_Class10534] of  Author

		(gender male)
		(name "IvanGoncharov")
		(popularity medium)
		(rating 4.03))

	([ontology_Class10535] of  Author

		(gender female)
		(name "EdithHamilton")
		(popularity medium)
		(rating 3.99))

	([ontology_Class10536] of  Author

		(gender male)
		(name "WilliamGaddis")
		(popularity medium)
		(rating 4.08))

	([ontology_Class10537] of  Author

		(gender male)
		(name "MalcolmLowry")
		(popularity medium)
		(rating 3.8))

	([ontology_Class10538] of  Author

		(gender male)
		(name "HenryMiller")
		(popularity high)
		(rating 3.8))

	([ontology_Class10539] of  Author

		(gender female)
		(name "KatherineMansfield")
		(popularity medium)
		(rating 3.78))

	([ontology_Class10540] of  Author

		(gender male)
		(name "WilliamTrevor")
		(popularity medium)
		(rating 3.81))

	([ontology_Class10541] of  Author

		(gender male)
		(name "AlanFurst")
		(popularity medium)
		(rating 3.9))

	([ontology_Class10542] of  Author

		(gender male)
		(name "O.Henry")
		(popularity high)
		(rating 4.08))

	([ontology_Class10543] of  Author

		(gender male)
		(name "DenisJohnson")
		(popularity medium)
		(rating 3.86))

	([ontology_Class10544] of  Author

		(gender male)
		(name "SherwoodAnderson")
		(popularity medium)
		(rating 3.84))

	([ontology_Class10545] of  Author

		(gender male)
		(name "JohnCheever")
		(popularity medium)
		(rating 3.97))

	([ontology_Class10546] of  Author

		(gender female)
		(name "Ingrid'Aulaire")
		(popularity medium)
		(rating 4.32))

	([ontology_Class10547] of  Author

		(gender female)
		(name "ZeldaFitzgerald")
		(popularity low)
		(rating 3.78))

	([ontology_Class10548] of  Author

		(gender female)
		(name "KathleenMorgan")
		(popularity medium)
		(rating 3.94))

	([ontology_Class10549] of  Author

		(gender male)
		(name "JeffreyEugenides")
		(popularity high)
		(rating 3.97))

	([ontology_Class10550] of  Author

		(gender female)
		(name "NoraRoberts")
		(popularity high)
		(rating 4.08))

	([ontology_Class10551] of  Author

		(gender male)
		(name "LangstonHughes")
		(popularity medium)
		(rating 4.25))

	([ontology_Class10552] of  Author

		(gender female)
		(name "LauraIngallsWilder")
		(popularity high)
		(rating 4.18))

	([ontology_Class10553] of  Author

		(gender female)
		(name "MichelleSagaraWest")
		(popularity medium)
		(rating 4.0))

	([ontology_Class10554] of  Author

		(gender male)
		(name "ArthurNersesian")
		(popularity medium)
		(rating 3.6))

	([ontology_Class10555] of  Author

		(gender male)
		(name "DamonRunyon")
		(popularity low)
		(rating 4.16))

	([ontology_Class10556] of  Author

		(gender male)
		(name "NathanaelWest")
		(popularity medium)
		(rating 3.79))

	([ontology_Class10557] of  Author

		(gender female)
		(name "SusannaGregory")
		(popularity medium)
		(rating 3.98))

	([ontology_Class10558] of  Author

		(gender female)
		(name "JoBeverley")
		(popularity medium)
		(rating 3.76))

	([ontology_Class10559] of  Author

		(gender male)
		(name "CandaceRobb")
		(popularity medium)
		(rating 3.95))

	([ontology_Class10560] of  Author

		(gender male)
		(name "BarbaraHambly")
		(popularity high)
		(rating 3.94))

	([ontology_Class10561] of  Author

		(gender female)
		(name "LauraJohRowland")
		(popularity medium)
		(rating 3.84))

	([ontology_Class10562] of  Author

		(gender male)
		(name "RogerZelazny")
		(popularity high)
		(rating 4.07))

	([ontology_Class10563] of  Author

		(gender male)
		(name "RobertLynnAsprin")
		(popularity high)
		(rating 3.95))

	([ontology_Class10564] of  Author

		(gender female)
		(name "SusanElizabethPhillips")
		(popularity high)
		(rating 4.03))

	([ontology_Class10565] of  Author

		(gender female)
		(name "LornaLandvik")
		(popularity medium)
		(rating 3.76))

	([ontology_Class10566] of  Author

		(gender male)
		(name "HaroldSchechter")
		(popularity medium)
		(rating 3.71))

	([ontology_Class10567] of  Author

		(gender female)
		(name "MaryMcCarthy")
		(popularity medium)
		(rating 3.71))

	([ontology_Class10568] of  Author

		(gender female)
		(name "GraceMetalious")
		(popularity medium)
		(rating 3.72))

	([ontology_Class10569] of  Author

		(gender male)
		(name "OlafOlafsson")
		(popularity low)
		(rating 3.52))

	([ontology_Class10570] of  Author

		(gender female)
		(name "WhitneyOtto")
		(popularity low)
		(rating 3.56))

	([ontology_Class10571] of  Author

		(gender male)
		(name "MelvinBurgess")
		(popularity medium)
		(rating 3.69))

	([ontology_Class10572] of  Author

		(gender male)
		(name "JacquelineSusann")
		(popularity medium)
		(rating 3.72))

	([ontology_Class10573] of  Author

		(gender female)
		(name "OliviaGoldsmith")
		(popularity medium)
		(rating 3.74))

	([ontology_Class10574] of  Author

		(gender female)
		(name "PatriciaGaffney")
		(popularity medium)
		(rating 3.81))

	([ontology_Class10575] of  Author

		(gender male)
		(name "OrsonScottCard")
		(popularity high)
		(rating 4.08))

	([ontology_Class10576] of  Author

		(gender female)
		(name "ElizabethJaneHoward")
		(popularity medium)
		(rating 4.03))

	([ontology_Class10577] of  Author

		(gender male)
		(name "PhillipRock")
		(popularity low)
		(rating 3.77))

	([ontology_Class10578] of  Author

		(gender male)
		(name "HenryGreen")
		(popularity low)
		(rating 3.6))

	([ontology_Class10579] of  Author

		(gender male)
		(name "AnthonyTrollope")
		(popularity medium)
		(rating 3.94))

	([ontology_Class10580] of  Author

		(gender male)
		(name "K.M.Peyton")
		(popularity low)
		(rating 4.01))

	([ontology_Class10581] of  Author

		(gender male)
		(name "L.P.Hartley")
		(popularity medium)
		(rating 3.87))

	([ontology_Class10582] of  Author

		(gender male)
		(name "SebastianFaulks")
		(popularity high)
		(rating 3.84))

	([ontology_Class10583] of  Author

		(gender male)
		(name "SharonShinn")
		(popularity high)
		(rating 3.91))

	([ontology_Class10584] of  Author

		(gender female)
		(name "DonnaGillespie")
		(popularity low)
		(rating 4.16))

	([ontology_Class10585] of  Author

		(gender female)
		(name "CelesteDeBlasis")
		(popularity low)
		(rating 4.29))

	([ontology_Class10586] of  Author

		(gender female)
		(name "GwenBristow")
		(popularity medium)
		(rating 4.06))

	([ontology_Class10587] of  Author

		(gender male)
		(name "KarleenKoen")
		(popularity medium)
		(rating 3.93))

	([ontology_Class10588] of  Author

		(gender female)
		(name "RobertaGellis")
		(popularity medium)
		(rating 3.98))

	([ontology_Class10589] of  Author

		(gender female)
		(name "SusanHowatch")
		(popularity medium)
		(rating 4.07))

	([ontology_Class10590] of  Author

		(gender male)
		(name "WinstonGraham")
		(popularity medium)
		(rating 4.2))

	([ontology_Class10591] of  Author

		(gender male)
		(name "SandraGulland")
		(popularity medium)
		(rating 4.14))

	([ontology_Class10592] of  Author

		(gender female)
		(name "EdnaFerber")
		(popularity medium)
		(rating 3.95))

	([ontology_Class10593] of  Author

		(gender female)
		(name "L.M.Montgomery")
		(popularity high)
		(rating 4.2))

	([ontology_Class10594] of  Author

		(gender female)
		(name "WillaCather")
		(popularity high)
		(rating 3.82))

	([ontology_Class10595] of  Author

		(gender male)
		(name "SarahDessen")
		(popularity high)
		(rating 4.0))

	([ontology_Class10596] of  Author

		(gender female)
		(name "JodiPicoult")
		(popularity high)
		(rating 3.97))

	([ontology_Class10597] of  Author

		(gender male)
		(name "ChrisBohjalian")
		(popularity high)
		(rating 3.78))

	([ontology_Class10598] of  Author

		(gender male)
		(name "PaulZindel")
		(popularity medium)
		(rating 3.64))

	([ontology_Class10599] of  Author

		(gender female)
		(name "AnnaQuindlen")
		(popularity high)
		(rating 4.19))

	([ontology_Class10600] of  Author

		(gender male)
		(name "PatConroy")
		(popularity high)
		(rating 4.15))

	([ontology_Class10601] of  Author

		(gender male)
		(name "JamesPatterson")
		(popularity high)
		(rating 3.97))

	([ontology_Class10602] of  Author

		(gender male)
		(name "TomSavage")
		(popularity low)
		(rating 3.91))

	([ontology_Class10603] of  Author

		(gender female)
		(name "MaryJoPutney")
		(popularity medium)
		(rating 3.82))

	([ontology_Class10604] of  Author

		(gender female)
		(name "LisaKleypas")
		(popularity high)
		(rating 4.03))

	([ontology_Class10605] of  Author

		(gender male)
		(name "LoisLowry")
		(popularity high)
		(rating 4.08))

	([ontology_Class10606] of  Author

		(gender male)
		(name "NormanMaclean")
		(popularity medium)
		(rating 4.16))

	([ontology_Class10607] of  Author

		(gender female)
		(name "MavisGallant")
		(popularity low)
		(rating 3.91))

	([ontology_Class10608] of  Author

		(gender male)
		(name "ElmoreLeonard")
		(popularity high)
		(rating 3.76))

	([ontology_Class10609] of  Author

		(gender female)
		(name "SuzanneEnoch")
		(popularity high)
		(rating 3.91))

	([ontology_Class10610] of  Author

		(gender male)
		(name "ShermanAlexie")
		(popularity high)
		(rating 4.07))

	([ontology_Class10611] of  Author

		(gender male)
		(name "ForrestCarter")
		(popularity medium)
		(rating 4.11))

	([ontology_Class10612] of  Author

		(gender male)
		(name "W.MichaelGear")
		(popularity medium)
		(rating 4.11))

	([ontology_Class10613] of  Author

		(gender male)
		(name "KathleenO'NealGear")
		(popularity medium)
		(rating 4.11))

	([ontology_Class10614] of  Author

		(gender male)
		(name "ScottO'Dell")
		(popularity high)
		(rating 3.8))

	([ontology_Class10615] of  Author

		(gender male)
		(name "OliverLaFarge")
		(popularity low)
		(rating 3.75))

	([ontology_Class10616] of  Author

		(gender female)
		(name "LindaHogan")
		(popularity low)
		(rating 4.02))

	([ontology_Class10617] of  Author

		(gender male)
		(name "JamesWelch")
		(popularity medium)
		(rating 3.94))

	([ontology_Class10618] of  Author

		(gender female)
		(name "VelmaWallis")
		(popularity low)
		(rating 3.98))

	([ontology_Class10619] of  Author

		(gender female)
		(name "SusanPower")
		(popularity low)
		(rating 3.96))

	([ontology_Class10620] of  Author

		(gender male)
		(name "ThomasBerger")
		(popularity medium)
		(rating 3.95))

	([ontology_Class10621] of  Author

		(gender male)
		(name "N.ScottMomaday")
		(popularity medium)
		(rating 3.76))

	([ontology_Class10622] of  Author

		(gender male)
		(name "JohnBellairs")
		(popularity medium)
		(rating 3.9))

	([ontology_Class10623] of  Author

		(gender male)
		(name "DeanKoontz")
		(popularity high)
		(rating 3.92))

	([ontology_Class10624] of  Author

		(gender male)
		(name "CliveBarker")
		(popularity high)
		(rating 4.09))

	([ontology_Class10625] of  Author

		(gender female)
		(name "DianaPalmer")
		(popularity high)
		(rating 3.96))

	([ontology_Class10626] of  Author

		(gender male)
		(name "CathleenSchine")
		(popularity medium)
		(rating 3.26))

	([ontology_Class10627] of  Author

		(gender female)
		(name "L.J.Smith")
		(popularity high)
		(rating 3.89))

	([ontology_Class10628] of  Author

		(gender female)
		(name "LizaMarklund")
		(popularity medium)
		(rating 3.64))

	([ontology_Class10629] of  Author

		(gender female)
		(name "SandraScoppettone")
		(popularity low)
		(rating 3.76))

	([ontology_Class10630] of  Author

		(gender female)
		(name "KerstinEkman")
		(popularity low)
		(rating 3.62))

	([ontology_Class10631] of  Author

		(gender male)
		(name "KarlEdwardWagner")
		(popularity medium)
		(rating 4.02))

	([ontology_Class10632] of  Author

		(gender female)
		(name "CharlotteMacLeod")
		(popularity medium)
		(rating 3.87))

	([ontology_Class10633] of  Author

		(gender female)
		(name "SarahGraves")
		(popularity medium)
		(rating 3.7))

	([ontology_Class10634] of  Author

		(gender female)
		(name "MarciaMuller")
		(popularity medium)
		(rating 3.82))

	([ontology_Class10635] of  Author

		(gender female)
		(name "MaryDaheim")
		(popularity medium)
		(rating 3.78))

	([ontology_Class10636] of  Author

		(gender female)
		(name "TamarMyers")
		(popularity medium)
		(rating 3.64))

	([ontology_Class10637] of  Author

		(gender male)
		(name "MichaelMoorcock")
		(popularity high)
		(rating 3.94))

	([ontology_Class10638] of  Author

		(gender male)
		(name "JohnWhite")
		(popularity low)
		(rating 3.94))

	([ontology_Class10639] of  Author

		(gender male)
		(name "TimothyFindley")
		(popularity medium)
		(rating 3.86))

	([ontology_Class10640] of  Author

		(gender male)
		(name "JohnBuchan")
		(popularity medium)
		(rating 3.66))

	([ontology_Class10641] of  Author

		(gender male)
		(name "FrankE.Peretti")
		(popularity high)
		(rating 4.07))

	([ontology_Class10642] of  Author

		(gender male)
		(name "JohnDosPassos")
		(popularity medium)
		(rating 3.88))

	([ontology_Class10643] of  Author

		(gender female)
		(name "RebeccaWest")
		(popularity medium)
		(rating 3.88))

	([ontology_Class10644] of  Author

		(gender male)
		(name "R.F.Delderfield")
		(popularity medium)
		(rating 4.15))

	([ontology_Class10645] of  Author

		(gender male)
		(name "JosephRoth")
		(popularity medium)
		(rating 3.89))

	([ontology_Class10646] of  Author

		(gender male)
		(name "KateFenton")
		(popularity low)
		(rating 3.27))

	([ontology_Class10647] of  Author

		(gender female)
		(name "JanetAylmer")
		(popularity low)
		(rating 3.4))

	([ontology_Class10648] of  Author

		(gender male)
		(name "DouglasCoupland")
		(popularity high)
		(rating 3.67))

	([ontology_Class10649] of  Author

		(gender female)
		(name "PamelaMorsi")
		(popularity medium)
		(rating 3.78))

	([ontology_Class10650] of  Author

		(gender female)
		(name "SamanthaJames")
		(popularity medium)
		(rating 3.81))

	([ontology_Class10651] of  Author

		(gender female)
		(name "MargaretCavendish")
		(popularity low)
		(rating 3.24))

	([ontology_Class10652] of  Author

		(gender female)
		(name "AphraBehn")
		(popularity medium)
		(rating 3.14))

	([ontology_Class10653] of  Author

		(gender female)
		(name "ElswythThane")
		(popularity low)
		(rating 4.26))

	([ontology_Class10654] of  Author

		(gender female)
		(name "PatriciaCornwell")
		(popularity high)
		(rating 3.88))

	([ontology_Class10655] of  Author

		(gender male)
		(name "JohnLescroart")
		(popularity medium)
		(rating 3.9))

	([ontology_Class10656] of  Author

		(gender male)
		(name "TimVicary")
		(popularity low)
		(rating 3.7))

	([ontology_Class10657] of  Author

		(gender male)
		(name "EdMcBain")
		(popularity medium)
		(rating 3.8))

	([ontology_Class10658] of  Author

		(gender male)
		(name "RennieAirth")
		(popularity medium)
		(rating 3.94))

	([ontology_Class10659] of  Author

		(gender male)
		(name "PaulAnthony")
		(popularity low)
		(rating 4.41))

	([ontology_Class10660] of  Author

		(gender male)
		(name "ThomasKeneally")
		(popularity high)
		(rating 4.27))

	([ontology_Class10661] of  Author

		(gender male)
		(name "MacKinlayKantor")
		(popularity low)
		(rating 4.06))

	([ontology_Class10662] of  Author

		(gender female)
		(name "AnnetteCurtisKlause")
		(popularity medium)
		(rating 3.75))

	([ontology_Class10663] of  Author

		(gender male)
		(name "IvanaTrump")
		(popularity low)
		(rating 3.48))

	([ontology_Class10664] of  Author

		(gender female)
		(name "JillianMedoff")
		(popularity low)
		(rating 3.5))

	([ontology_Class10665] of  Author

		(gender male)
		(name "RickMoody")
		(popularity medium)
		(rating 3.61))

	([ontology_Class10666] of  Author

		(gender female)
		(name "BarbaraTaylorBradford")
		(popularity medium)
		(rating 3.91))

	([ontology_Class10667] of  Author

		(gender male)
		(name "LouisL'Amour")
		(popularity high)
		(rating 4.02))

	([ontology_Class10668] of  Author

		(gender female)
		(name "ReginaDoman")
		(popularity low)
		(rating 4.2))

	([ontology_Class10669] of  Author

		(gender female)
		(name "ChristaWolf")
		(popularity low)
		(rating 3.75))

	([ontology_Class10670] of  Author

		(gender female)
		(name "JenniferRoberson")
		(popularity medium)
		(rating 3.93))

	([ontology_Class10671] of  Author

		(gender male)
		(name "H.RiderHaggard")
		(popularity medium)
		(rating 3.78))

	([ontology_Class10672] of  Author

		(gender male)
		(name "ThomasLigotti")
		(popularity medium)
		(rating 4.0))

	([ontology_Class10673] of  Author

		(gender male)
		(name "ArthurMachen")
		(popularity medium)
		(rating 3.9))

	([ontology_Class10674] of  Author

		(gender male)
		(name "SuzanneBarclay")
		(popularity low)
		(rating 3.75))

	([ontology_Class10675] of  Author

		(gender male)
		(name "DavidGemmell")
		(popularity high)
		(rating 4.22))

	([ontology_Class10676] of  Author

		(gender male)
		(name "J.V.Jones")
		(popularity medium)
		(rating 3.91))

	([ontology_Class10677] of  Author

		(gender female)
		(name "JannyWurts")
		(popularity high)
		(rating 4.18))

	([ontology_Class10678] of  Author

		(gender male)
		(name "PaulBowles")
		(popularity medium)
		(rating 3.95))

	([ontology_Class10679] of  Author

		(gender male)
		(name "ChingizAitmatov")
		(popularity medium)
		(rating 4.12))

	([ontology_Class10680] of  Author

		(gender male)
		(name "PaulGallico")
		(popularity medium)
		(rating 3.99))

	([ontology_Class10681] of  Author

		(gender male)
		(name "MariusGabriel")
		(popularity medium)
		(rating 4.07))

	([ontology_Class10682] of  Author

		(gender female)
		(name "CijiWare")
		(popularity low)
		(rating 3.7))

	([ontology_Class10683] of  Author

		(gender male)
		(name "CharlesPortis")
		(popularity medium)
		(rating 4.08))

	([ontology_Class10684] of  Author

		(gender male)
		(name "HansKeilson")
		(popularity low)
		(rating 3.66))

	([ontology_Class10685] of  Author

		(gender male)
		(name "ClareDarcy")
		(popularity low)
		(rating 3.71))

	([ontology_Class10686] of  Author

		(gender male)
		(name "EdwardLee")
		(popularity medium)
		(rating 3.76))

	([ontology_Class10687] of  Author

		(gender female)
		(name "KatheKoja")
		(popularity medium)
		(rating 3.72))

	([ontology_Class10688] of  Author

		(gender male)
		(name "GrahamMasterton")
		(popularity medium)
		(rating 3.78))

	([ontology_Class10689] of  Author

		(gender male)
		(name "JackKetchum")
		(popularity medium)
		(rating 3.84))

	([ontology_Class10690] of  Author

		(gender male)
		(name "MendalW.Johnson")
		(popularity low)
		(rating 3.63))

	([ontology_Class10691] of  Author

		(gender male)
		(name "ElizabethBright")
		(popularity low)
		(rating 4.03))

	([ontology_Class10692] of  Author

		(gender male)
		(name "DanaStabenow")
		(popularity high)
		(rating 4.01))

	([ontology_Class10693] of  Author

		(gender female)
		(name "AminahMaeSafi")
		(popularity low)
		(rating 3.72))

	([ontology_Class10694] of  Author

		(gender male)
		(name "DanStout")
		(popularity low)
		(rating 4.31))

	([ontology_Class10695] of  Author

		(gender male)
		(name "RobertE.Howard")
		(popularity high)
		(rating 4.09))

	([ontology_Class10696] of  Author

		(gender male)
		(name "C.L.Moore")
		(popularity medium)
		(rating 4.02))

	([ontology_Class10697] of  Author

		(gender male)
		(name "NelsonDeMille")
		(popularity high)
		(rating 4.02))

	([ontology_Class10698] of  Author

		(gender female)
		(name "AnnaFienberg")
		(popularity low)
		(rating 3.89))

	([ontology_Class10699] of  Author

		(gender male)
		(name "AnnHead")
		(popularity low)
		(rating 3.79))

	([ontology_Class10700] of  Author

		(gender female)
		(name "ConnieRosePorter")
		(popularity medium)
		(rating 4.04))

	([ontology_Class10701] of  Author

		(gender female)
		(name "BerlieDoherty")
		(popularity low)
		(rating 3.7))

	([ontology_Class10702] of  Author

		(gender male)
		(name "ThorneSmith")
		(popularity low)
		(rating 3.78))

	([ontology_Class10703] of  Author

		(gender female)
		(name "RosemarySutcliff")
		(popularity medium)
		(rating 3.93))

	([ontology_Class10704] of  Author

		(gender male)
		(name "PoulAnderson")
		(popularity high)
		(rating 3.84))

	([ontology_Class10705] of  Author

		(gender male)
		(name "FrankO'Connor")
		(popularity low)
		(rating 4.05))

	([ontology_Class10706] of  Author

		(gender male)
		(name "J.P.Donleavy")
		(popularity medium)
		(rating 3.71))

	([ontology_Class10707] of  Author

		(gender male)
		(name "RobertR.McCammon")
		(popularity high)
		(rating 4.1))

	([ontology_Class10708] of  Author

		(gender male)
		(name "MarthaR.Carr")
		(popularity medium)
		(rating 4.41))

	([ontology_Class10709] of  Author

		(gender male)
		(name "BrunoSchulz")
		(popularity medium)
		(rating 4.14))

	([ontology_Class10710] of  Author

		(gender male)
		(name "CharlesG.Finney")
		(popularity low)
		(rating 3.85))

	([ontology_Class10711] of  Author

		(gender male)
		(name "E.R.Eddison")
		(popularity low)
		(rating 3.7))

	([ontology_Class10712] of  Author

		(gender male)
		(name "BarryHughart")
		(popularity medium)
		(rating 4.24))

	([ontology_Class10713] of  Author

		(gender male)
		(name "ColinDexter")
		(popularity medium)
		(rating 3.99))

	([ontology_Class10714] of  Author

		(gender male)
		(name "JamesHilton")
		(popularity medium)
		(rating 3.93))

	([ontology_Class10715] of  Author

		(gender male)
		(name "JosephWambaugh")
		(popularity medium)
		(rating 3.95))

	([ontology_Class10716] of  Author

		(gender female)
		(name "ElizabethGoudge")
		(popularity medium)
		(rating 4.12))

	([ontology_Class10717] of  Author

		(gender male)
		(name "EnidBagnold")
		(popularity medium)
		(rating 4.09))

	([ontology_Class10718] of  Author

		(gender female)
		(name "NorahLofts")
		(popularity medium)
		(rating 3.94))

	([ontology_Class10719] of  Author

		(gender female)
		(name "EstherHautzig")
		(popularity low)
		(rating 3.96))

	([ontology_Class10720] of  Author

		(gender male)
		(name "AngelaHuth")
		(popularity low)
		(rating 3.63))

	([ontology_Class10721] of  Author

		(gender male)
		(name "SinclairLewis")
		(popularity medium)
		(rating 3.75))

	([ontology_Class10722] of  Author

		(gender female)
		(name "MaudHartLovelace")
		(popularity medium)
		(rating 4.18))

	([ontology_Class10723] of  Author

		(gender female)
		(name "EleanorH.Porter")
		(popularity medium)
		(rating 3.94))

	([ontology_Class10724] of  Author

		(gender male)
		(name "SaulBellow")
		(popularity medium)
		(rating 3.77))

	([ontology_Class10725] of  Author

		(gender male)
		(name "SteveNeilJohnson")
		(popularity low)
		(rating 4.26))

	([ontology_Class10726] of  Author

		(gender male)
		(name "StefanR.Dziemianowicz")
		(popularity low)
		(rating 3.75))

	([ontology_Class10727] of  Author

		(gender male)
		(name "MichaelCox")
		(popularity medium)
		(rating 3.87))

	([ontology_Class10728] of  Author

		(gender male)
		(name "PaulM.Sammon")
		(popularity low)
		(rating 4.1))

	([ontology_Class10729] of  Author

		(gender male)
		(name "JeffGelb")
		(popularity low)
		(rating 3.76))

	([ontology_Class10730] of  Author

		(gender male)
		(name "DavidClement-Davies")
		(popularity medium)
		(rating 4.14))

	([ontology_Class10731] of  Author

		(gender male)
		(name "WalterR.Brooks")
		(popularity low)
		(rating 4.16))

	([ontology_Class10732] of  Author

		(gender male)
		(name "RobertTressell")
		(popularity low)
		(rating 3.97))

	([ontology_Class10733] of  Author

		(gender male)
		(name "MaxBeerbohm")
		(popularity low)
		(rating 3.67))

	([ontology_Class10734] of  Author

		(gender male)
		(name "ZaneGrey")
		(popularity medium)
		(rating 3.81))

	([ontology_Class10735] of  Author

		(gender female)
		(name "DorothyCanfieldFisher")
		(popularity medium)
		(rating 4.11))

	([ontology_Class10736] of  Author

		(gender male)
		(name "BenMarcus")
		(popularity medium)
		(rating 4.07))

	([ontology_Class10737] of  Author

		(gender female)
		(name "TerriWindling")
		(popularity medium)
		(rating 3.9))

	([ontology_Class10738] of  Author

		(gender male)
		(name "EmilioSalgari")
		(popularity medium)
		(rating 3.85))

	([ontology_Class10739] of  Author

		(gender female)
		(name "KimSmejkal")
		(popularity low)
		(rating 4.86))

	([ontology_Class10740] of  Author

		(gender female)
		(name "MichelleRuizKeil")
		(popularity low)
		(rating 4.78))

	([ontology_Class10741] of  Author

		(gender female)
		(name "CatherineTinker")
		(popularity low)
		(rating 4.54))

	([ontology_Class10742] of  Author

		(gender female)
		(name "SarahCarlson")
		(popularity low)
		(rating 4.63))

	([ontology_Class10743] of  Author

		(gender female)
		(name "JodieLynnZdrok")
		(popularity low)
		(rating 3.99))

	([ontology_Class10744] of  Author

		(gender male)
		(name "HerbieBrennan")
		(popularity medium)
		(rating 3.74))

	([ontology_Class10745] of  Author

		(gender female)
		(name "IsabelSterling")
		(popularity low)
		(rating 4.34))

	([ontology_Class10746] of  Author

		(gender female)
		(name "CatherineCookson")
		(popularity medium)
		(rating 3.94))

	([ontology_Class10747] of  Author

		(gender female)
		(name "ElizabethTaylor")
		(popularity low)
		(rating 3.9))

	([ontology_Class10748] of  Author

		(gender female)
		(name "DorothyB.Hughes")
		(popularity low)
		(rating 3.99))

	([ontology_Class10749] of  Author

		(gender female)
		(name "BarbaraComyns")
		(popularity low)
		(rating 3.91))

	([ontology_Class10750] of  Author

		(gender male)
		(name "HaroldRobbins")
		(popularity medium)
		(rating 3.69))

	([ontology_Class10751] of  Author

		(gender male)
		(name "StefanZweig")
		(popularity high)
		(rating 4.17))

	([ontology_Class10752] of  Author

		(gender male)
		(name "CarolineBlackwood")
		(popularity low)
		(rating 3.63))

	([ontology_Class10753] of  Author

		(gender male)
		(name "GeorgesSimenon")
		(popularity medium)
		(rating 3.72))

	([ontology_Class10754] of  Author

		(gender female)
		(name "ElizabethHardwick")
		(popularity low)
		(rating 3.86))

	([ontology_Class10755] of  Author

		(gender male)
		(name "ElliottChaze")
		(popularity low)
		(rating 4.15))

	([ontology_Class10756] of  Author

		(gender male)
		(name "SigizmundKrzhizhanovsky")
		(popularity low)
		(rating 3.9))

	([ontology_Class10757] of  Author

		(gender male)
		(name "AdalbertStifter")
		(popularity low)
		(rating 3.76))

	([ontology_Class10758] of  Author

		(gender male)
		(name "JohnWilliams")
		(popularity medium)
		(rating 4.26))

	([ontology_Class10759] of  Author

		(gender male)
		(name "GeoffreyHousehold")
		(popularity low)
		(rating 3.96))

	([ontology_Class10760] of  Author

		(gender male)
		(name "PatrickHamilton")
		(popularity low)
		(rating 4.12))

	([ontology_Class10761] of  Author

		(gender male)
		(name "CarloCollodi")
		(popularity medium)
		(rating 3.86))

	([ontology_Class10762] of  Author

		(gender female)
		(name "DorothyBaker")
		(popularity low)
		(rating 3.92))

	([ontology_Class10763] of  Author

		(gender male)
		(name "OakleyHall")
		(popularity low)
		(rating 4.11))

	([ontology_Class10764] of  Author

		(gender male)
		(name "SylviaTownsendWarner")
		(popularity medium)
		(rating 3.88))

	([ontology_Class10765] of  Author

		(gender female)
		(name "ElaineDundy")
		(popularity low)
		(rating 3.61))

	([ontology_Class10766] of  Author

		(gender male)
		(name "FransG.Bengtsson")
		(popularity low)
		(rating 4.25))

	([ontology_Class10767] of  Author

		(gender female)
		(name "JuliaAlvarez")
		(popularity medium)
		(rating 3.92))

	([ontology_Class10768] of  Author

		(gender male)
		(name "GeorgeGrossmith")
		(popularity medium)
		(rating 3.72))

	([ontology_Class10769] of  Author

		(gender male)
		(name "IanSerraillier")
		(popularity low)
		(rating 3.98))

	([ontology_Class10770] of  Author

		(gender female)
		(name "ConstanceSavery")
		(popularity low)
		(rating 4.04))

	([ontology_Class10771] of  Author

		(gender female)
		(name "HildavanStockum")
		(popularity low)
		(rating 4.16))

	([ontology_Class10772] of  Author

		(gender female)
		(name "LynneGraham")
		(popularity medium)
		(rating 3.61))

	([ontology_Class10773] of  Author

		(gender female)
		(name "NancyMitford")
		(popularity medium)
		(rating 3.87))

	([ontology_Class10774] of  Author

		(gender female)
		(name "WinifredWatson")
		(popularity medium)
		(rating 3.97))

	([ontology_Class10775] of  Author

		(gender male)
		(name "EugeneBurdick")
		(popularity low)
		(rating 4.09))

	([ontology_Class10776] of  Author

		(gender female)
		(name "KamalaMarkandaya")
		(popularity low)
		(rating 3.63))

	([ontology_Class10777] of  Author

		(gender male)
		(name "RichardDenney")
		(popularity low)
		(rating 3.7))

	([ontology_Class10778] of  Author

		(gender male)
		(name "ScottSpencer")
		(popularity medium)
		(rating 3.31))

	([ontology_Class10779] of  Author

		(gender male)
		(name "IsmailKadare")
		(popularity medium)
		(rating 3.82))

	([ontology_Class10780] of  Author

		(gender female)
		(name "MarianneFredriksson")
		(popularity medium)
		(rating 3.66))

	([ontology_Class10781] of  Author

		(gender female)
		(name "TaylorCaldwell")
		(popularity medium)
		(rating 4.12))

	([ontology_Class10782] of  Author

		(gender male)
		(name "MarySpencer")
		(popularity low)
		(rating 3.53))

	([ontology_Class10783] of  Author

		(gender female)
		(name "BelvaPlain")
		(popularity medium)
		(rating 3.9))

	([ontology_Class10784] of  Author

		(gender male)
		(name "MichelleReid")
		(popularity medium)
		(rating 3.64))

	([ontology_Class10785] of  Author

		(gender male)
		(name "RossMacdonald")
		(popularity medium)
		(rating 3.98))

	([ontology_Class10786] of  Author

		(gender male)
		(name "CornellWoolrich")
		(popularity medium)
		(rating 3.93))

	([ontology_Class10787] of  Author

		(gender male)
		(name "RichardBausch")
		(popularity low)
		(rating 3.87))

	([ontology_Class10788] of  Author

		(gender female)
		(name "SiminDaneshvar")
		(popularity medium)
		(rating 3.75))

	([ontology_Class10789] of  Author

		(gender male)
		(name "DavidGoodis")
		(popularity low)
		(rating 3.94))

	([ontology_Class10790] of  Author

		(gender female)
		(name "SenaJeterNaslund")
		(popularity medium)
		(rating 3.93))

	([ontology_Class10791] of  Author

		(gender male)
		(name "AlfredHitchcock")
		(popularity medium)
		(rating 3.96))

	([ontology_Class10792] of  Author

		(gender male)
		(name "JamesCrumley")
		(popularity medium)
		(rating 3.96))

	([ontology_Class10793] of  Author

		(gender male)
		(name "MickeySpillane")
		(popularity medium)
		(rating 3.68))

	([ontology_Class10794] of  Author

		(gender male)
		(name "HoraceMcCoy")
		(popularity low)
		(rating 3.89))

	([ontology_Class10795] of  Author

		(gender female)
		(name "MaryMapesDodge")
		(popularity medium)
		(rating 3.89))

	([ontology_Class10796] of  Author

		(gender female)
		(name "LoisLenski")
		(popularity medium)
		(rating 4.04))

	([ontology_Class10797] of  Author

		(gender female)
		(name "DorotheaBentonFrank")
		(popularity high)
		(rating 3.81))

	([ontology_Class10798] of  Author

		(gender male)
		(name "HarryCrews")
		(popularity medium)
		(rating 4.0))

	([ontology_Class10799] of  Author

		(gender female)
		(name "KatherineAnnePorter")
		(popularity medium)
		(rating 3.93))

	([ontology_Class10800] of  Author

		(gender female)
		(name "ClariceLispector")
		(popularity medium)
		(rating 4.06))

	([ontology_Class10801] of  Author

		(gender female)
		(name "VeraChapman")
		(popularity low)
		(rating 3.59))

	([ontology_Class10802] of  Author

		(gender female)
		(name "CatherineChristian")
		(popularity low)
		(rating 3.96))

	([ontology_Class10803] of  Author

		(gender female)
		(name "NancyMcKenzie")
		(popularity low)
		(rating 3.96))

	([ontology_Class10804] of  Author

		(gender female)
		(name "MollyCochran")
		(popularity low)
		(rating 3.86))

	([ontology_Class10805] of  Author

		(gender male)
		(name "RogerLancelynGreen")
		(popularity medium)
		(rating 4.0))

	([ontology_Class10806] of  Author

		(gender male)
		(name "GeoffreyofMonmouth")
		(popularity low)
		(rating 3.73))

	([ontology_Class10807] of  Author

		(gender male)
		(name "AlessandroBaricco")
		(popularity medium)
		(rating 3.88))

	([ontology_Class10808] of  Author

		(gender male)
		(name "WilmaDykeman")
		(popularity low)
		(rating 4.09))

	([ontology_Class10809] of  Author

		(gender male)
		(name "DeniseGiardina")
		(popularity low)
		(rating 4.0))

	([ontology_Class10810] of  Author

		(gender male)
		(name "JamesAgee")
		(popularity medium)
		(rating 3.95))

	([ontology_Class10811] of  Author

		(gender female)
		(name "VeraCleaver")
		(popularity low)
		(rating 3.77))

	([ontology_Class10812] of  Author

		(gender female)
		(name "MeaganMcKinney")
		(popularity low)
		(rating 3.75))

	([ontology_Class10813] of  Author

		(gender female)
		(name "ElizabethLowell")
		(popularity high)
		(rating 3.86))

	([ontology_Class10814] of  Author

		(gender female)
		(name "E.M.Hull")
		(popularity low)
		(rating 3.43))

	([ontology_Class10815] of  Author

		(gender female)
		(name "RosemaryRogers")
		(popularity medium)
		(rating 3.81))

	([ontology_Class10816] of  Author

		(gender female)
		(name "VirginiaHenley")
		(popularity medium)
		(rating 3.89))

	([ontology_Class10817] of  Author

		(gender male)
		(name "DinahLampitt")
		(popularity low)
		(rating 3.99))

	([ontology_Class10818] of  Author

		(gender female)
		(name "JeanPlaidy")
		(popularity medium)
		(rating 3.86))

	([ontology_Class10819] of  Author

		(gender female)
		(name "SparkleHayter")
		(popularity low)
		(rating 3.58))

	([ontology_Class10820] of  Author

		(gender male)
		(name "KarlMay")
		(popularity medium)
		(rating 4.01))

	([ontology_Class10821] of  Book

		(author [ontology_Class10000])
		(genre "Horror")
		(pages 1311)
		(popularity low)
		(rating 278.0)
		(title "KissoftheVampire")
		(year 1993))

	([ontology_Class10822] of  Book

		(author [ontology_Class10001])
		(genre "Uncategorized")
		(pages 8460)
		(popularity medium)
		(rating 354.0)
		(title "Island")
		(year 1962))

	([ontology_Class10823] of  Book

		(author [ontology_Class10002])
		(genre "Classics")
		(pages 28474)
		(popularity high)
		(rating 255.0)
		(title "TheTrial")
		(year 1925))

	([ontology_Class10824] of  Book

		(author [ontology_Class10003])
		(genre "Uncategorized")
		(pages 32573)
		(popularity high)
		(rating 1168.0)
		(title "AtlasShrugged")
		(year 1957))

	([ontology_Class10825] of  Book

		(author [ontology_Class10004])
		(genre "Fantasy")
		(pages 15248)
		(popularity medium)
		(rating 527.0)
		(title "DragonRider")
		(year 1997))

	([ontology_Class10826] of  Book

		(author [ontology_Class10005])
		(genre "Classics")
		(pages 15851)
		(popularity high)
		(rating 449.0)
		(title "Rebecca")
		(year 1938))

	([ontology_Class10827] of  Book

		(author [ontology_Class10006])
		(genre "Romance")
		(pages 19609)
		(popularity medium)
		(rating 1344.0)
		(title "TheCompleteNovels")
		(year 1813))

	([ontology_Class10828] of  Book

		(author [ontology_Class10007])
		(genre "Classics")
		(pages 22491)
		(popularity high)
		(rating 449.0)
		(title "LittleWomen")
		(year 1868))

	([ontology_Class10829] of  Book

		(author [ontology_Class10008])
		(genre "Classics")
		(pages 23554)
		(popularity high)
		(rating 496.0)
		(title "ATreeGrowsinBrooklyn")
		(year 1943))

	([ontology_Class10830] of  Book

		(author [ontology_Class10009])
		(genre "Classics")
		(pages 29714)
		(popularity high)
		(rating 294.0)
		(title "TheBellJar")
		(year 1963))

	([ontology_Class10831] of  Book

		(author [ontology_Class10010])
		(genre "Uncategorized")
		(pages 32634)
		(popularity high)
		(rating 216.0)
		(title "TheReader")
		(year 1995))

	([ontology_Class10832] of  Book

		(author [ontology_Class10011])
		(genre "Fantasy")
		(pages 40399)
		(popularity high)
		(rating 490.0)
		(title "TheReturnoftheKing")
		(year 1955))

	([ontology_Class10833] of  Book

		(author [ontology_Class10012])
		(genre "Romance")
		(pages 9751)
		(popularity high)
		(rating 288.0)
		(title "BridgetJones'sDiary")
		(year 1995))

	([ontology_Class10834] of  Book

		(author [ontology_Class10013])
		(genre "Thriller")
		(pages 12331)
		(popularity high)
		(rating 306.0)
		(title "NakedinDeath")
		(year 1995))

	([ontology_Class10835] of  Book

		(author [ontology_Class10014])
		(genre "Uncategorized")
		(pages 28285)
		(popularity high)
		(rating 503.0)
		(title "MemoirsofaGeisha")
		(year 1997))

	([ontology_Class10836] of  Book

		(author [ontology_Class10015])
		(genre "Romance")
		(pages 45393)
		(popularity high)
		(rating 215.0)
		(title "AWalktoRemember")
		(year 1999))

	([ontology_Class10837] of  Book

		(author [ontology_Class10016])
		(genre "Classics")
		(pages 62047)
		(popularity high)
		(rating 1037.0)
		(title "GonewiththeWind")
		(year 1936))

	([ontology_Class10838] of  Book

		(author [ontology_Class10017])
		(genre "Fantasy")
		(pages 3109)
		(popularity high)
		(rating 221.0)
		(title "TheMagician'sNephew")
		(year 1955))

	([ontology_Class10839] of  Book

		(author [ontology_Class10018])
		(genre "Fantasy")
		(pages 15799)
		(popularity high)
		(rating 232.0)
		(title "EllaEnchanted")
		(year 1997))

	([ontology_Class10840] of  Book

		(author [ontology_Class10019])
		(genre "Horror")
		(pages 1409)
		(popularity low)
		(rating 192.0)
		(title "SomeofYourBlood")
		(year 1961))

	([ontology_Class10841] of  Book

		(author [ontology_Class10020])
		(genre "Fantasy")
		(pages 1509)
		(popularity medium)
		(rating 320.0)
		(title "CircusoftheDamned")
		(year 1995))

	([ontology_Class10842] of  Book

		(author [ontology_Class10021])
		(genre "Horror")
		(pages 1606)
		(popularity low)
		(rating 288.0)
		(title "TheDraculaTape")
		(year 1975))

	([ontology_Class10843] of  Book

		(author [ontology_Class10022])
		(genre "Horror")
		(pages 1751)
		(popularity low)
		(rating 409.0)
		(title "DarkDance")
		(year 1992))

	([ontology_Class10844] of  Book

		(author [ontology_Class10023])
		(genre "Horror")
		(pages 3225)
		(popularity low)
		(rating 464.0)
		(title "ChildrenoftheNight")
		(year 1992))

	([ontology_Class10845] of  Book

		(author [ontology_Class10024])
		(genre "Horror")
		(pages 3997)
		(popularity low)
		(rating 384.0)
		(title "CovenantwiththeVampire")
		(year 1994))

	([ontology_Class10846] of  Book

		(author [ontology_Class10025])
		(genre "Horror")
		(pages 7579)
		(popularity medium)
		(rating 381.0)
		(title "AnnoDracula")
		(year 1992))

	([ontology_Class10847] of  Book

		(author [ontology_Class10026])
		(genre "Horror")
		(pages 14597)
		(popularity medium)
		(rating 355.0)
		(title "LostSouls")
		(year 1992))

	([ontology_Class10848] of  Book

		(author [ontology_Class10027])
		(genre "Horror")
		(pages 20432)
		(popularity medium)
		(rating 108.0)
		(title "Carmilla")
		(year 1872))

	([ontology_Class10849] of  Book

		(author [ontology_Class10028])
		(genre "Classics")
		(pages 84252)
		(popularity high)
		(rating 488.0)
		(title "Dracula")
		(year 1897))

	([ontology_Class10850] of  Book

		(author [ontology_Class10029])
		(genre "Fantasy")
		(pages 2538)
		(popularity medium)
		(rating 294.0)
		(title "TheLastUnicorn")
		(year 1968))

	([ontology_Class10851] of  Book

		(author [ontology_Class10030])
		(genre "Fantasy")
		(pages 2716)
		(popularity medium)
		(rating 252.0)
		(title "Sandry'sBook")
		(year 1997))

	([ontology_Class10852] of  Book

		(author [ontology_Class10031])
		(genre "Young")
		(pages 3345)
		(popularity medium)
		(rating 304.0)
		(title "TheLostYearsofMerlin")
		(year 1996))

	([ontology_Class10853] of  Book

		(author [ontology_Class10032])
		(genre "Fantasy")
		(pages 3718)
		(popularity high)
		(rating 139.0)
		(title "TuckEverlasting")
		(year 1975))

	([ontology_Class10854] of  Book

		(author [ontology_Class10033])
		(genre "Fantasy")
		(pages 3858)
		(popularity medium)
		(rating 352.0)
		(title "TheSwordintheStone")
		(year 1938))

	([ontology_Class10855] of  Book

		(author [ontology_Class10034])
		(genre "Uncategorized")
		(pages 5113)
		(popularity high)
		(rating 176.0)
		(title "TheBadBeginning")
		(year 1999))

	([ontology_Class10856] of  Book

		(author [ontology_Class10035])
		(genre "Fantasy")
		(pages 6241)
		(popularity medium)
		(rating 280.0)
		(title "TheThief")
		(year 1996))

	([ontology_Class10857] of  Book

		(author [ontology_Class10036])
		(genre "Fantasy")
		(pages 10762)
		(popularity high)
		(rating 396.0)
		(title "TheNeverendingStory")
		(year 1979))

	([ontology_Class10858] of  Book

		(author [ontology_Class10037])
		(genre "Fantasy")
		(pages 11260)
		(popularity medium)
		(rating 190.0)
		(title "TheBookofThree")
		(year 1964))

	([ontology_Class10859] of  Book

		(author [ontology_Class10038])
		(genre "Fantasy")
		(pages 15196)
		(popularity high)
		(rating 398.0)
		(title "ThePrincessBride")
		(year 1973))

	([ontology_Class10860] of  Book

		(author [ontology_Class10039])
		(genre "Young")
		(pages 16100)
		(popularity high)
		(rating 128.0)
		(title "BridgetoTerabithia")
		(year 1977))

	([ontology_Class10861] of  Book

		(author [ontology_Class10040])
		(genre "Fantasy")
		(pages 29378)
		(popularity high)
		(rating 211.0)
		(title "AWrinkleinTime")
		(year 1962))

	([ontology_Class10862] of  Book

		(author [ontology_Class10041])
		(genre "Young")
		(pages 2867)
		(popularity low)
		(rating 256.0)
		(title "HardLove")
		(year 1999))

	([ontology_Class10863] of  Book

		(author [ontology_Class10042])
		(genre "Uncategorized")
		(pages 1799)
		(popularity medium)
		(rating 336.0)
		(title "HereonEarth")
		(year 1997))

	([ontology_Class10864] of  Book

		(author [ontology_Class10043])
		(genre "Uncategorized")
		(pages 2320)
		(popularity low)
		(rating 200.0)
		(title "TheMagicToyshop")
		(year 1967))

	([ontology_Class10865] of  Book

		(author [ontology_Class10044])
		(genre "Uncategorized")
		(pages 2791)
		(popularity medium)
		(rating 338.0)
		(title "TheMistressofSpices")
		(year 1997))

	([ontology_Class10866] of  Book

		(author [ontology_Class10045])
		(genre "Uncategorized")
		(pages 2808)
		(popularity high)
		(rating 218.0)
		(title "Steppenwolf")
		(year 1927))

	([ontology_Class10867] of  Book

		(author [ontology_Class10046])
		(genre "Uncategorized")
		(pages 3671)
		(popularity low)
		(rating 576.0)
		(title "DonaFlorandHerTwoHusbands")
		(year 1966))

	([ontology_Class10868] of  Book

		(author [ontology_Class10047])
		(genre "Uncategorized")
		(pages 4373)
		(popularity low)
		(rating 456.0)
		(title "TheMilagroBeanfieldWar")
		(year 1974))

	([ontology_Class10869] of  Book

		(author [ontology_Class10048])
		(genre "Uncategorized")
		(pages 6084)
		(popularity medium)
		(rating 290.0)
		(title "BlessMe,Ultima")
		(year 1972))

	([ontology_Class10870] of  Book

		(author [ontology_Class10049])
		(genre "Uncategorized")
		(pages 6590)
		(popularity medium)
		(rating 260.0)
		(title "IfonaWinter'sNightaTraveler")
		(year 1979))

	([ontology_Class10871] of  Book

		(author [ontology_Class10050])
		(genre "Uncategorized")
		(pages 13956)
		(popularity medium)
		(rating 174.0)
		(title "Ficciones")
		(year 1944))

	([ontology_Class10872] of  Book

		(author [ontology_Class10051])
		(genre "Uncategorized")
		(pages 34430)
		(popularity high)
		(rating 373.0)
		(title "TheMasterandMargarita")
		(year 1967))

	([ontology_Class10873] of  Book

		(author [ontology_Class10052])
		(genre "Young")
		(pages 3104)
		(popularity high)
		(rating 280.0)
		(title "WalkTwoMoons")
		(year 1994))

	([ontology_Class10874] of  Book

		(author [ontology_Class10053])
		(genre "Classics")
		(pages 3201)
		(popularity high)
		(rating 212.0)
		(title "AClockworkOrange")
		(year 1962))

	([ontology_Class10875] of  Book

		(author [ontology_Class10054])
		(genre "Classics")
		(pages 3509)
		(popularity high)
		(rating 518.0)
		(title "TessoftheD'Urbervilles")
		(year 1891))

	([ontology_Class10876] of  Book

		(author [ontology_Class10055])
		(genre "Classics")
		(pages 3576)
		(popularity high)
		(rating 489.0)
		(title "ATaleofTwoCities")
		(year 1859))

	([ontology_Class10877] of  Book

		(author [ontology_Class10056])
		(genre "Classics")
		(pages 3655)
		(popularity high)
		(rating 581.0)
		(title "InvisibleMan")
		(year 1952))

	([ontology_Class10878] of  Book

		(author [ontology_Class10057])
		(genre "Thriller")
		(pages 4067)
		(popularity high)
		(rating 182.0)
		(title "TheWestingGame")
		(year 1978))

	([ontology_Class10879] of  Book

		(author [ontology_Class10058])
		(genre "Classics")
		(pages 4132)
		(popularity high)
		(rating 219.0)
		(title "TheirEyesWereWatchingGod")
		(year 1937))

	([ontology_Class10880] of  Book

		(author [ontology_Class10059])
		(genre "Classics")
		(pages 4360)
		(popularity high)
		(rating 329.0)
		(title "MadameBovary")
		(year 1856))

	([ontology_Class10881] of  Book

		(author [ontology_Class10060])
		(genre "Classics")
		(pages 4441)
		(popularity high)
		(rating 479.0)
		(title "TheGrapesofWrath")
		(year 1939))

	([ontology_Class10882] of  Book

		(author [ontology_Class10061])
		(genre "Classics")
		(pages 4525)
		(popularity high)
		(rating 244.0)
		(title "TheAdventuresofTomSawyer")
		(year 1876))

	([ontology_Class10883] of  Book

		(author [ontology_Class10062])
		(genre "Classics")
		(pages 4688)
		(popularity high)
		(rating 188.0)
		(title "HeartofDarkness")
		(year 1899))

	([ontology_Class10884] of  Book

		(author [ontology_Class10063])
		(genre "Historical")
		(pages 5391)
		(popularity high)
		(rating 850.0)
		(title "Outlander")
		(year 1991))

	([ontology_Class10885] of  Book

		(author [ontology_Class10064])
		(genre "Uncategorized")
		(pages 5449)
		(popularity high)
		(rating 209.0)
		(title "ThingsFallApart")
		(year 1958))

	([ontology_Class10886] of  Book

		(author [ontology_Class10065])
		(genre "Classics")
		(pages 6015)
		(popularity high)
		(rating 325.0)
		(title "OneFlewOvertheCuckoo'sNest")
		(year 1962))

	([ontology_Class10887] of  Book

		(author [ontology_Class10066])
		(genre "Classics")
		(pages 6093)
		(popularity high)
		(rating 132.0)
		(title "TheOldManandtheSea")
		(year 1952))

	([ontology_Class10888] of  Book

		(author [ontology_Class10067])
		(genre "Fantasy")
		(pages 6646)
		(popularity high)
		(rating 399.0)
		(title "TheGoldenCompass")
		(year 1995))

	([ontology_Class10889] of  Book

		(author [ontology_Class10068])
		(genre "Classics")
		(pages 6741)
		(popularity high)
		(rating 478.0)
		(title "WatershipDown")
		(year 1972))

	([ontology_Class10890] of  Book

		(author [ontology_Class10069])
		(genre "Classics")
		(pages 6963)
		(popularity high)
		(rating 671.0)
		(title "CrimeandPunishment")
		(year 1866))

	([ontology_Class10891] of  Book

		(author [ontology_Class10070])
		(genre "Classics")
		(pages 7335)
		(popularity high)
		(rating 123.0)
		(title "TheStranger")
		(year 1942))

	([ontology_Class10892] of  Book

		(author [ontology_Class10071])
		(genre "Classics")
		(pages 9783)
		(popularity high)
		(rating 273.0)
		(title "Frankenstein")
		(year 1818))

	([ontology_Class10893] of  Book

		(author [ontology_Class10072])
		(genre "Uncategorized")
		(pages 10827)
		(popularity high)
		(rating 311.0)
		(title "FlowersforAlgernon")
		(year 1966))

	([ontology_Class10894] of  Book

		(author [ontology_Class10073])
		(genre "Classics")
		(pages 21141)
		(popularity high)
		(rating 122.0)
		(title "AnimalFarm")
		(year 1945))

	([ontology_Class10895] of  Book

		(author [ontology_Class10074])
		(genre "Classics")
		(pages 23079)
		(popularity high)
		(rating 277.0)
		(title "TheCatcherintheRye")
		(year 1951))

	([ontology_Class10896] of  Book

		(author [ontology_Class10075])
		(genre "Classics")
		(pages 23831)
		(popularity high)
		(rating 182.0)
		(title "LordoftheFlies")
		(year 1954))

	([ontology_Class10897] of  Book

		(author [ontology_Class10076])
		(genre "Classics")
		(pages 26757)
		(popularity high)
		(rating 192.0)
		(title "TheOutsiders")
		(year 1967))

	([ontology_Class10898] of  Book

		(author [ontology_Class10077])
		(genre "Classics")
		(pages 32216)
		(popularity high)
		(rating 180.0)
		(title "TheGreatGatsby")
		(year 1925))

	([ontology_Class10899] of  Book

		(author [ontology_Class10078])
		(genre "Classics")
		(pages 3305)
		(popularity high)
		(rating 672.0)
		(title "TheWomaninWhite")
		(year 1859))

	([ontology_Class10900] of  Book

		(author [ontology_Class10079])
		(genre "Thriller")
		(pages 3412)
		(popularity low)
		(rating 272.0)
		(title "AbsolutionbyMurder")
		(year 1994))

	([ontology_Class10901] of  Book

		(author [ontology_Class10080])
		(genre "Thriller")
		(pages 4262)
		(popularity low)
		(rating 229.0)
		(title "TheNovice'sTale")
		(year 1992))

	([ontology_Class10902] of  Book

		(author [ontology_Class10081])
		(genre "Historical")
		(pages 4299)
		(popularity low)
		(rating 543.0)
		(title "TheGameofKings")
		(year 1961))

	([ontology_Class10903] of  Book

		(author [ontology_Class10082])
		(genre "Thriller")
		(pages 4815)
		(popularity low)
		(rating 336.0)
		(title "BlindJustice")
		(year 1994))

	([ontology_Class10904] of  Book

		(author [ontology_Class10083])
		(genre "Thriller")
		(pages 4997)
		(popularity low)
		(rating 337.0)
		(title "CuttotheQuick")
		(year 1993))

	([ontology_Class10905] of  Book

		(author [ontology_Class10084])
		(genre "Historical")
		(pages 5194)
		(popularity low)
		(rating 288.0)
		(title "TheQueen'sMan")
		(year 1996))

	([ontology_Class10906] of  Book

		(author [ontology_Class10085])
		(genre "Historical")
		(pages 6423)
		(popularity low)
		(rating 401.0)
		(title "RomanBlood")
		(year 1991))

	([ontology_Class10907] of  Book

		(author [ontology_Class10086])
		(genre "Thriller")
		(pages 7309)
		(popularity medium)
		(rating 305.0)
		(title "ATestofWills")
		(year 1994))

	([ontology_Class10908] of  Book

		(author [ontology_Class10087])
		(genre "Historical")
		(pages 16856)
		(popularity medium)
		(rating 691.0)
		(title "AnInstanceoftheFingerpost")
		(year 1997))

	([ontology_Class10909] of  Book

		(author [ontology_Class10088])
		(genre "Thriller")
		(pages 26856)
		(popularity medium)
		(rating 206.0)
		(title "TheDaughterofTime")
		(year 1949))

	([ontology_Class10910] of  Book

		(author [ontology_Class10089])
		(genre "Uncategorized")
		(pages 2457)
		(popularity medium)
		(rating 263.0)
		(title "OrdinaryPeople")
		(year 1976))

	([ontology_Class10911] of  Book

		(author [ontology_Class10090])
		(genre "Uncategorized")
		(pages 2523)
		(popularity medium)
		(rating 440.0)
		(title "RabbitRedux")
		(year 1971))

	([ontology_Class10912] of  Book

		(author [ontology_Class10091])
		(genre "Historical")
		(pages 17162)
		(popularity medium)
		(rating 1104.0)
		(title "TheSource")
		(year 1965))

	([ontology_Class10913] of  Book

		(author [ontology_Class10092])
		(genre "Historical")
		(pages 19694)
		(popularity medium)
		(rating 958.0)
		(title "TheFarPavilions")
		(year 1978))

	([ontology_Class10914] of  Book

		(author [ontology_Class10093])
		(genre "Historical")
		(pages 21766)
		(popularity low)
		(rating 6576.0)
		(title "TheCompleteAubrey/MaturinNovels5Volumes")
		(year 1994))

	([ontology_Class10915] of  Book

		(author [ontology_Class10094])
		(genre "Historical")
		(pages 21859)
		(popularity medium)
		(rating 1152.0)
		(title "London")
		(year 1997))

	([ontology_Class10916] of  Book

		(author [ontology_Class10095])
		(genre "Uncategorized")
		(pages 24326)
		(popularity medium)
		(rating 470.0)
		(title "TheFrenchLieutenant'sWoman")
		(year 1969))

	([ontology_Class10917] of  Book

		(author [ontology_Class10096])
		(genre "Historical")
		(pages 24366)
		(popularity medium)
		(rating 972.0)
		(title "ForeverAmber")
		(year 1944))

	([ontology_Class10918] of  Book

		(author [ontology_Class10097])
		(genre "Historical")
		(pages 26029)
		(popularity medium)
		(rating 734.0)
		(title "Tai-Pan")
		(year 1966))

	([ontology_Class10919] of  Book

		(author [ontology_Class10098])
		(genre "Classics")
		(pages 28497)
		(popularity medium)
		(rating 544.0)
		(title "Ivanhoe")
		(year 1819))

	([ontology_Class10920] of  Book

		(author [ontology_Class10099])
		(genre "Historical")
		(pages 33776)
		(popularity medium)
		(rating 776.0)
		(title "TheAgonyandtheEcstasy")
		(year 1958))

	([ontology_Class10921] of  Book

		(author [ontology_Class10100])
		(genre "Historical")
		(pages 35121)
		(popularity medium)
		(rating 422.0)
		(title "PopeJoan")
		(year 1996))

	([ontology_Class10922] of  Book

		(author [ontology_Class10101])
		(genre "Historical")
		(pages 42463)
		(popularity medium)
		(rating 608.0)
		(title "Exodus")
		(year 1958))

	([ontology_Class10923] of  Book

		(author [ontology_Class10102])
		(genre "Historical")
		(pages 43461)
		(popularity medium)
		(rating 500.0)
		(title "Katherine")
		(year 1954))

	([ontology_Class10924] of  Book

		(author [ontology_Class10103])
		(genre "Uncategorized")
		(pages 44032)
		(popularity high)
		(rating 320.0)
		(title "TheEnglishPatient")
		(year 1992))

	([ontology_Class10925] of  Book

		(author [ontology_Class10104])
		(genre "Historical")
		(pages 62835)
		(popularity medium)
		(rating 468.0)
		(title "I,Claudius")
		(year 1934))

	([ontology_Class10926] of  Book

		(author [ontology_Class10105])
		(genre "Classics")
		(pages 67770)
		(popularity high)
		(rating 625.0)
		(title "TheThreeMusketeers")
		(year 1844))

	([ontology_Class10927] of  Book

		(author [ontology_Class10106])
		(genre "Historical")
		(pages 71200)
		(popularity high)
		(rating 356.0)
		(title "ColdMountain")
		(year 1997))

	([ontology_Class10928] of  Book

		(author [ontology_Class10107])
		(genre "Historical")
		(pages 175105)
		(popularity high)
		(rating 336.0)
		(title "TheRedTent")
		(year 1997))

	([ontology_Class10929] of  Book

		(author [ontology_Class10108])
		(genre "Classics")
		(pages 154366)
		(popularity high)
		(rating 438.0)
		(title "UncleTom'sCabin")
		(year 1852))

	([ontology_Class10930] of  Book

		(author [ontology_Class10109])
		(genre "Classics")
		(pages 155819)
		(popularity high)
		(rating 296.0)
		(title "AllQuietontheWesternFront")
		(year 1929))

	([ontology_Class10931] of  Book

		(author [ontology_Class10110])
		(genre "Classics")
		(pages 165568)
		(popularity high)
		(rating 1392.0)
		(title "WarandPeace")
		(year 1867))

	([ontology_Class10932] of  Book

		(author [ontology_Class10111])
		(genre "Classics")
		(pages 198261)
		(popularity high)
		(rating 417.0)
		(title "Lolita")
		(year 1955))

	([ontology_Class10933] of  Book

		(author [ontology_Class10112])
		(genre "Classics")
		(pages 242647)
		(popularity high)
		(rating 453.0)
		(title "Catch-22")
		(year 1961))

	([ontology_Class10934] of  Book

		(author [ontology_Class10113])
		(genre "Classics")
		(pages 489613)
		(popularity high)
		(rating 239.0)
		(title "Alice'sAdventuresinWonderlandThroughtheLooking-Glass")
		(year 1872))

	([ontology_Class10935] of  Book

		(author [ontology_Class10114])
		(genre "Fantasy")
		(pages 160113)
		(popularity high)
		(rating 256.0)
		(title "ThePhantomTollbooth")
		(year 1961))

	([ontology_Class10936] of  Book

		(author [ontology_Class10115])
		(genre "Horror")
		(pages 2819)
		(popularity medium)
		(rating 567.0)
		(title "GhostStory")
		(year 1979))

	([ontology_Class10937] of  Book

		(author [ontology_Class10116])
		(genre "Historical")
		(pages 2917)
		(popularity high)
		(rating 288.0)
		(title "RollofThunder,HearMyCry")
		(year 1976))

	([ontology_Class10938] of  Book

		(author [ontology_Class10117])
		(genre "Uncategorized")
		(pages 2917)
		(popularity medium)
		(rating 462.0)
		(title "TheOtherSideofMidnight")
		(year 1973))

	([ontology_Class10939] of  Book

		(author [ontology_Class10118])
		(genre "Historical")
		(pages 2921)
		(popularity medium)
		(rating 1042.0)
		(title "WarandRemembrance")
		(year 1978))

	([ontology_Class10940] of  Book

		(author [ontology_Class10119])
		(genre "Uncategorized")
		(pages 2967)
		(popularity medium)
		(rating 369.0)
		(title "MyNameIsAsherLev")
		(year 1972))

	([ontology_Class10941] of  Book

		(author [ontology_Class10120])
		(genre "Fantasy")
		(pages 3149)
		(popularity medium)
		(rating 726.0)
		(title "TheSwordofShannara")
		(year 1977))

	([ontology_Class10942] of  Book

		(author [ontology_Class10121])
		(genre "Uncategorized")
		(pages 3228)
		(popularity medium)
		(rating 569.0)
		(title "AngleofRepose")
		(year 1971))

	([ontology_Class10943] of  Book

		(author [ontology_Class10122])
		(genre "Young")
		(pages 3442)
		(popularity medium)
		(rating 272.0)
		(title "TheDarkIsRising")
		(year 1973))

	([ontology_Class10944] of  Book

		(author [ontology_Class10123])
		(genre "Uncategorized")
		(pages 3892)
		(popularity medium)
		(rating 592.0)
		(title "KaneandAbel")
		(year 1979))

	([ontology_Class10945] of  Book

		(author [ontology_Class10124])
		(genre "Uncategorized")
		(pages 4509)
		(popularity medium)
		(rating 776.0)
		(title "Gravity'sRainbow")
		(year 1973))

	([ontology_Class10946] of  Book

		(author [ontology_Class10125])
		(genre "Uncategorized")
		(pages 5804)
		(popularity medium)
		(rating 384.0)
		(title "TheDayoftheJackal")
		(year 1971))

	([ontology_Class10947] of  Book

		(author [ontology_Class10126])
		(genre "Historical")
		(pages 5898)
		(popularity medium)
		(rating 345.0)
		(title "TheKillerAngels")
		(year 1974))

	([ontology_Class10948] of  Book

		(author [ontology_Class10127])
		(genre "Uncategorized")
		(pages 6256)
		(popularity medium)
		(rating 320.0)
		(title "Ragtime")
		(year 1975))

	([ontology_Class10949] of  Book

		(author [ontology_Class10128])
		(genre "Uncategorized")
		(pages 6594)
		(popularity low)
		(rating 408.0)
		(title "TheBlackPrince")
		(year 1973))

	([ontology_Class10950] of  Book

		(author [ontology_Class10129])
		(genre "Horror")
		(pages 7827)
		(popularity high)
		(rating 385.0)
		(title "TheExorcist")
		(year 1971))

	([ontology_Class10951] of  Book

		(author [ontology_Class10130])
		(genre "Uncategorized")
		(pages 9427)
		(popularity high)
		(rating 204.0)
		(title "FearandLoathinginLasVegas")
		(year 1971))

	([ontology_Class10952] of  Book

		(author [ontology_Class10131])
		(genre "Fantasy")
		(pages 348)
		(popularity low)
		(rating 578.0)
		(title "Riddle-Master")
		(year 1976))

	([ontology_Class10953] of  Book

		(author [ontology_Class10132])
		(genre "Fantasy")
		(pages 388)
		(popularity low)
		(rating 944.0)
		(title "TheMystReader:ThreeBooksinOneVolume")
		(year 1995))

	([ontology_Class10954] of  Book

		(author [ontology_Class10133])
		(genre "Fantasy")
		(pages 421)
		(popularity low)
		(rating 1173.0)
		(title "TheGormenghastNovels")
		(year 1959))

	([ontology_Class10955] of  Book

		(author [ontology_Class10134])
		(genre "Uncategorized")
		(pages 618)
		(popularity low)
		(rating 1408.0)
		(title "TheBourneTrilogy")
		(year 1991))

	([ontology_Class10956] of  Book

		(author [ontology_Class10135])
		(genre "Classics")
		(pages 1018)
		(popularity medium)
		(rating 872.0)
		(title "TheForsyteSaga")
		(year 1921))

	([ontology_Class10957] of  Book

		(author [ontology_Class10136])
		(genre "Classics")
		(pages 9882)
		(popularity high)
		(rating 1796.0)
		(title "TheCompleteSherlockHolmes")
		(year 1927))

	([ontology_Class10958] of  Book

		(author [ontology_Class10137])
		(genre "Young")
		(pages 1371)
		(popularity medium)
		(rating 144.0)
		(title "Brian'sWinter")
		(year 1996))

	([ontology_Class10959] of  Book

		(author [ontology_Class10138])
		(genre "Historical")
		(pages 2223)
		(popularity high)
		(rating 729.0)
		(title "Roots:TheSagaofanAmericanFamily")
		(year 1976))

	([ontology_Class10960] of  Book

		(author [ontology_Class10139])
		(genre "Classics")
		(pages 3413)
		(popularity high)
		(rating 720.0)
		(title "Moby-Dick,or,theWhale")
		(year 1851))

	([ontology_Class10961] of  Book

		(author [ontology_Class10140])
		(genre "Classics")
		(pages 4046)
		(popularity high)
		(rating 226.0)
		(title "BlackBeauty")
		(year 1877))

	([ontology_Class10962] of  Book

		(author [ontology_Class10141])
		(genre "Uncategorized")
		(pages 4052)
		(popularity medium)
		(rating 309.0)
		(title "JohnnyGotHisGun")
		(year 1939))

	([ontology_Class10963] of  Book

		(author [ontology_Class10142])
		(genre "Classics")
		(pages 4460)
		(popularity medium)
		(rating 352.0)
		(title "TheSwissFamilyRobinson")
		(year 1812))

	([ontology_Class10964] of  Book

		(author [ontology_Class10143])
		(genre "Uncategorized")
		(pages 5638)
		(popularity medium)
		(rating 562.0)
		(title "Sophie'sChoice")
		(year 1979))

	([ontology_Class10965] of  Book

		(author [ontology_Class10144])
		(genre "Uncategorized")
		(pages 9412)
		(popularity medium)
		(rating 192.0)
		(title "MySideoftheMountain")
		(year 1959))

	([ontology_Class10966] of  Book

		(author [ontology_Class10145])
		(genre "Romance")
		(pages 1611)
		(popularity low)
		(rating 420.0)
		(title "BabyLove")
		(year 1999))

	([ontology_Class10967] of  Book

		(author [ontology_Class10146])
		(genre "Uncategorized")
		(pages 1729)
		(popularity medium)
		(rating 128.0)
		(title "Sounder")
		(year 1969))

	([ontology_Class10968] of  Book

		(author [ontology_Class10147])
		(genre "Classics")
		(pages 2843)
		(popularity medium)
		(rating 513.0)
		(title "TheYearling")
		(year 1938))

	([ontology_Class10969] of  Book

		(author [ontology_Class10148])
		(genre "Classics")
		(pages 5225)
		(popularity medium)
		(rating 132.0)
		(title "OldYeller")
		(year 1956))

	([ontology_Class10970] of  Book

		(author [ontology_Class10149])
		(genre "Classics")
		(pages 15495)
		(popularity high)
		(rating 272.0)
		(title "WheretheRedFernGrows")
		(year 1961))

	([ontology_Class10971] of  Book

		(author [ontology_Class10150])
		(genre "Fantasy")
		(pages 8660)
		(popularity medium)
		(rating 384.0)
		(title "TheLastWish")
		(year 1993))

	([ontology_Class10972] of  Book

		(author [ontology_Class10151])
		(genre "Fantasy")
		(pages 9484)
		(popularity medium)
		(rating 501.0)
		(title "TheMagicofRecluce")
		(year 1991))

	([ontology_Class10973] of  Book

		(author [ontology_Class10152])
		(genre "Fantasy")
		(pages 17346)
		(popularity medium)
		(rating 492.0)
		(title "BytheSword")
		(year 1991))

	([ontology_Class10974] of  Book

		(author [ontology_Class10153])
		(genre "Fantasy")
		(pages 27773)
		(popularity medium)
		(rating 471.0)
		(title "CrownDuel")
		(year 1997))

	([ontology_Class10975] of  Book

		(author [ontology_Class10154])
		(genre "Uncategorized")
		(pages 12604)
		(popularity high)
		(rating 365.0)
		(title "HouseofSandandFog")
		(year 1999))

	([ontology_Class10976] of  Book

		(author [ontology_Class10155])
		(genre "Uncategorized")
		(pages 16693)
		(popularity high)
		(rating 337.0)
		(title "TheShippingNews")
		(year 1993))

	([ontology_Class10977] of  Book

		(author [ontology_Class10156])
		(genre "Fantasy")
		(pages 18960)
		(popularity high)
		(rating 406.0)
		(title "Wicked:TheLifeandTimesoftheWickedWitchoftheWest")
		(year 1995))

	([ontology_Class10978] of  Book

		(author [ontology_Class10157])
		(genre "Classics")
		(pages 29471)
		(popularity medium)
		(rating 170.0)
		(title "TheRedBadgeofCourage")
		(year 1895))

	([ontology_Class10979] of  Book

		(author [ontology_Class10158])
		(genre "Romance")
		(pages 48494)
		(popularity medium)
		(rating 304.0)
		(title "SexandtheCity")
		(year 1996))

	([ontology_Class10980] of  Book

		(author [ontology_Class10159])
		(genre "Classics")
		(pages 64931)
		(popularity high)
		(rating 209.0)
		(title "TotheLighthouse")
		(year 1927))

	([ontology_Class10981] of  Book

		(author [ontology_Class10160])
		(genre "Classics")
		(pages 66258)
		(popularity high)
		(rating 329.0)
		(title "APortraitoftheArtistasaYoungMan")
		(year 1916))

	([ontology_Class10982] of  Book

		(author [ontology_Class10161])
		(genre "Classics")
		(pages 93077)
		(popularity high)
		(rating 326.0)
		(title "TheSoundandtheFury")
		(year 1929))

	([ontology_Class10983] of  Book

		(author [ontology_Class10162])
		(genre "Classics")
		(pages 105299)
		(popularity high)
		(rating 418.0)
		(title "TheGoodEarth")
		(year 1931))

	([ontology_Class10984] of  Book

		(author [ontology_Class10163])
		(genre "Classics")
		(pages 116245)
		(popularity high)
		(rating 307.0)
		(title "OntheRoad")
		(year 1955))

	([ontology_Class10985] of  Book

		(author [ontology_Class10164])
		(genre "Fantasy")
		(pages 9853)
		(popularity medium)
		(rating 528.0)
		(title "TheLionsofAl-Rassan")
		(year 1995))

	([ontology_Class10986] of  Book

		(author [ontology_Class10165])
		(genre "Fantasy")
		(pages 13452)
		(popularity medium)
		(rating 656.0)
		(title "Rhapsody:ChildofBlood")
		(year 1999))

	([ontology_Class10987] of  Book

		(author [ontology_Class10166])
		(genre "Fantasy")
		(pages 17285)
		(popularity medium)
		(rating 1040.0)
		(title "TheDeedofPaksenarrion")
		(year 1992))

	([ontology_Class10988] of  Book

		(author [ontology_Class10167])
		(genre "Fantasy")
		(pages 31013)
		(popularity medium)
		(rating 1160.0)
		(title "TheChroniclesofThomasCovenant,theUnbeliever")
		(year 1977))

	([ontology_Class10989] of  Book

		(author [ontology_Class10168])
		(genre "Fantasy")
		(pages 90434)
		(popularity medium)
		(rating 666.0)
		(title "GardensoftheMoon")
		(year 1999))

	([ontology_Class10990] of  Book

		(author [ontology_Class10169])
		(genre "Uncategorized")
		(pages 8401)
		(popularity medium)
		(rating 244.0)
		(title "TheKillerInsideMe")
		(year 1952))

	([ontology_Class10991] of  Book

		(author [ontology_Class10170])
		(genre "Uncategorized")
		(pages 8457)
		(popularity high)
		(rating 344.0)
		(title "Trainspotting")
		(year 1993))

	([ontology_Class10992] of  Book

		(author [ontology_Class10171])
		(genre "Classics")
		(pages 8927)
		(popularity medium)
		(rating 246.0)
		(title "ThePaintedVeil")
		(year 1925))

	([ontology_Class10993] of  Book

		(author [ontology_Class10172])
		(genre "Uncategorized")
		(pages 12583)
		(popularity medium)
		(rating 360.0)
		(title "ThePrestige")
		(year 1995))

	([ontology_Class10994] of  Book

		(author [ontology_Class10173])
		(genre "Uncategorized")
		(pages 12791)
		(popularity medium)
		(rating 224.0)
		(title "TheBridgesofMadisonCounty")
		(year 1992))

	([ontology_Class10995] of  Book

		(author [ontology_Class10174])
		(genre "Uncategorized")
		(pages 12854)
		(popularity medium)
		(rating 181.0)
		(title "CasinoRoyale")
		(year 1953))

	([ontology_Class10996] of  Book

		(author [ontology_Class10175])
		(genre "Classics")
		(pages 21610)
		(popularity medium)
		(rating 209.0)
		(title "MaryPoppins")
		(year 1934))

	([ontology_Class10997] of  Book

		(author [ontology_Class10176])
		(genre "Classics")
		(pages 23610)
		(popularity medium)
		(rating 410.0)
		(title "TheLastoftheMohicans")
		(year 1826))

	([ontology_Class10998] of  Book

		(author [ontology_Class10177])
		(genre "Horror")
		(pages 32192)
		(popularity high)
		(rating 320.0)
		(title "Jaws")
		(year 1973))

	([ontology_Class10999] of  Book

		(author [ontology_Class10178])
		(genre "Thriller")
		(pages 9550)
		(popularity low)
		(rating 480.0)
		(title "APlaceofExecution")
		(year 1999))

	([ontology_Class11000] of  Book

		(author [ontology_Class10179])
		(genre "Thriller")
		(pages 10192)
		(popularity medium)
		(rating 304.0)
		(title "WhereAretheChildren?")
		(year 1975))

	([ontology_Class11001] of  Book

		(author [ontology_Class10180])
		(genre "Thriller")
		(pages 10581)
		(popularity medium)
		(rating 280.0)
		(title "FacelessKillers")
		(year 1991))

	([ontology_Class11002] of  Book

		(author [ontology_Class10181])
		(genre "Thriller")
		(pages 10796)
		(popularity medium)
		(rating 212.0)
		(title "WhoseBody?")
		(year 1923))

	([ontology_Class11003] of  Book

		(author [ontology_Class10182])
		(genre "Thriller")
		(pages 10921)
		(popularity low)
		(rating 352.0)
		(title "WitnessfortheProsecutionandSelectedPlays")
		(year 1995))

	([ontology_Class11004] of  Book

		(author [ontology_Class10183])
		(genre "Uncategorized")
		(pages 12421)
		(popularity medium)
		(rating 116.0)
		(title "ThePostmanAlwaysRingsTwice")
		(year 1934))

	([ontology_Class11005] of  Book

		(author [ontology_Class10184])
		(genre "Uncategorized")
		(pages 13335)
		(popularity high)
		(rating 559.0)
		(title "TheSecretHistory")
		(year 1992))

	([ontology_Class11006] of  Book

		(author [ontology_Class10185])
		(genre "Uncategorized")
		(pages 15110)
		(popularity high)
		(rating 460.0)
		(title "SnowFallingonCedars")
		(year 1994))

	([ontology_Class11007] of  Book

		(author [ontology_Class10186])
		(genre "Thriller")
		(pages 15861)
		(popularity high)
		(rating 482.0)
		(title "TheBlackEcho")
		(year 1992))

	([ontology_Class11008] of  Book

		(author [ontology_Class10187])
		(genre "Thriller")
		(pages 16658)
		(popularity medium)
		(rating 201.0)
		(title "TheThinMan")
		(year 1934))

	([ontology_Class11009] of  Book

		(author [ontology_Class10188])
		(genre "Uncategorized")
		(pages 21801)
		(popularity medium)
		(rating 320.0)
		(title "TheTalentedMr.Ripley")
		(year 1955))

	([ontology_Class11010] of  Book

		(author [ontology_Class10189])
		(genre "Thriller")
		(pages 25287)
		(popularity high)
		(rating 424.0)
		(title "KillingFloor")
		(year 1997))

	([ontology_Class11011] of  Book

		(author [ontology_Class10190])
		(genre "Uncategorized")
		(pages 27347)
		(popularity high)
		(rating 400.0)
		(title "ThePelicanBrief")
		(year 1992))

	([ontology_Class11012] of  Book

		(author [ontology_Class10191])
		(genre "Classics")
		(pages 37381)
		(popularity high)
		(rating 144.0)
		(title "TheStrangeCaseofDr.JekyllandMr.Hyde")
		(year 1886))

	([ontology_Class11013] of  Book

		(author [ontology_Class10192])
		(genre "Thriller")
		(pages 46755)
		(popularity high)
		(rating 231.0)
		(title "TheBigSleep")
		(year 1939))

	([ontology_Class11014] of  Book

		(author [ontology_Class10193])
		(genre "Uncategorized")
		(pages 72922)
		(popularity high)
		(rating 448.0)
		(title "TheGodfather")
		(year 1969))

	([ontology_Class11015] of  Book

		(author [ontology_Class10194])
		(genre "Classics")
		(pages 10690)
		(popularity medium)
		(rating 364.0)
		(title "LadyChatterley'sLover")
		(year 1928))

	([ontology_Class11016] of  Book

		(author [ontology_Class10195])
		(genre "Classics")
		(pages 19461)
		(popularity medium)
		(rating 468.0)
		(title "Swann'sWay")
		(year 1913))

	([ontology_Class11017] of  Book

		(author [ontology_Class10196])
		(genre "Classics")
		(pages 19688)
		(popularity high)
		(rating 912.0)
		(title "VanityFair")
		(year 1848))

	([ontology_Class11018] of  Book

		(author [ontology_Class10197])
		(genre "Uncategorized")
		(pages 22306)
		(popularity medium)
		(rating 289.0)
		(title "NakedLunch")
		(year 1959))

	([ontology_Class11019] of  Book

		(author [ontology_Class10198])
		(genre "Uncategorized")
		(pages 48988)
		(popularity medium)
		(rating 1088.0)
		(title "InfiniteJest")
		(year 1996))

	([ontology_Class11020] of  Book

		(author [ontology_Class10199])
		(genre "Uncategorized")
		(pages 19376)
		(popularity high)
		(rating 342.0)
		(title "LeftBehind")
		(year 1995))

	([ontology_Class11021] of  Book

		(author [ontology_Class10200])
		(genre "Uncategorized")
		(pages 35379)
		(popularity high)
		(rating 376.0)
		(title "WheretheHeartIs")
		(year 1995))

	([ontology_Class11022] of  Book

		(author [ontology_Class10201])
		(genre "Uncategorized")
		(pages 46797)
		(popularity high)
		(rating 383.0)
		(title "DivineSecretsoftheYa-YaSisterhood")
		(year 1996))

	([ontology_Class11023] of  Book

		(author [ontology_Class10202])
		(genre "Classics")
		(pages 7979)
		(popularity medium)
		(rating 592.0)
		(title "DoctorZhivago")
		(year 1957))

	([ontology_Class11024] of  Book

		(author [ontology_Class10203])
		(genre "Religious")
		(pages 11317)
		(popularity high)
		(rating 464.0)
		(title "RedeemingLove")
		(year 1991))

	([ontology_Class11025] of  Book

		(author [ontology_Class10204])
		(genre "Classics")
		(pages 32032)
		(popularity high)
		(rating 521.0)
		(title "NorthandSouth")
		(year 1855))

	([ontology_Class11026] of  Book

		(author [ontology_Class10205])
		(genre "Young")
		(pages 10616)
		(popularity medium)
		(rating 276.0)
		(title "Tomorrow,WhentheWarBegan")
		(year 1993))

	([ontology_Class11027] of  Book

		(author [ontology_Class10206])
		(genre "Fantasy")
		(pages 6837)
		(popularity medium)
		(rating 241.0)
		(title "ThePrincessandtheGoblin")
		(year 1872))

	([ontology_Class11028] of  Book

		(author [ontology_Class10207])
		(genre "Uncategorized")
		(pages 5774)
		(popularity medium)
		(rating 103.0)
		(title "StoryoftheEye")
		(year 1928))

	([ontology_Class11029] of  Book

		(author [ontology_Class10208])
		(genre "Uncategorized")
		(pages 5874)
		(popularity medium)
		(rating 320.0)
		(title "BastardOutofCarolina")
		(year 1992))

	([ontology_Class11030] of  Book

		(author [ontology_Class10209])
		(genre "Uncategorized")
		(pages 6629)
		(popularity medium)
		(rating 290.0)
		(title "LastExittoBrooklyn")
		(year 1964))

	([ontology_Class11031] of  Book

		(author [ontology_Class10210])
		(genre "Horror")
		(pages 6694)
		(popularity medium)
		(rating 315.0)
		(title "TheAmityvilleHorror")
		(year 1977))

	([ontology_Class11032] of  Book

		(author [ontology_Class10211])
		(genre "Uncategorized")
		(pages 6977)
		(popularity low)
		(rating 272.0)
		(title "TheEndofAlice")
		(year 1996))

	([ontology_Class11033] of  Book

		(author [ontology_Class10212])
		(genre "Classics")
		(pages 14327)
		(popularity medium)
		(rating 70.0)
		(title "TheYellowWallpaperandOtherStories")
		(year 1892))

	([ontology_Class11034] of  Book

		(author [ontology_Class10213])
		(genre "Classics")
		(pages 8296)
		(popularity high)
		(rating 803.0)
		(title "TheCompleteFairyTales")
		(year 1835))

	([ontology_Class11035] of  Book

		(author [ontology_Class10214])
		(genre "Fantasy")
		(pages 9327)
		(popularity low)
		(rating 280.0)
		(title "ThePerilousGard")
		(year 1974))

	([ontology_Class11036] of  Book

		(author [ontology_Class10215])
		(genre "Fantasy")
		(pages 10691)
		(popularity low)
		(rating 468.0)
		(title "TamLin")
		(year 1991))

	([ontology_Class11037] of  Book

		(author [ontology_Class10216])
		(genre "Classics")
		(pages 17589)
		(popularity high)
		(rating 880.0)
		(title "TheCompleteGrimm'sFairyTales")
		(year 1812))

	([ontology_Class11038] of  Book

		(author [ontology_Class10217])
		(genre "Uncategorized")
		(pages 4838)
		(popularity medium)
		(rating 251.0)
		(title "LuckyJim")
		(year 1954))

	([ontology_Class11039] of  Book

		(author [ontology_Class10218])
		(genre "Uncategorized")
		(pages 7752)
		(popularity medium)
		(rating 233.0)
		(title "ColdComfortFarm")
		(year 1932))

	([ontology_Class11040] of  Book

		(author [ontology_Class10219])
		(genre "Classics")
		(pages 21294)
		(popularity medium)
		(rating 185.0)
		(title "ThreeMeninaBoat")
		(year 1889))

	([ontology_Class11041] of  Book

		(author [ontology_Class10220])
		(genre "Uncategorized")
		(pages 8499)
		(popularity medium)
		(rating 706.0)
		(title "TheMagicMountain")
		(year 1924))

	([ontology_Class11042] of  Book

		(author [ontology_Class10221])
		(genre "Classics")
		(pages 20262)
		(popularity high)
		(rating 904.0)
		(title "Middlemarch")
		(year 1871))

	([ontology_Class11043] of  Book

		(author [ontology_Class10222])
		(genre "Romance")
		(pages 5849)
		(popularity medium)
		(rating 385.0)
		(title "Ravished")
		(year 1992))

	([ontology_Class11044] of  Book

		(author [ontology_Class10223])
		(genre "Romance")
		(pages 6038)
		(popularity medium)
		(rating 288.0)
		(title "Devil'sCub")
		(year 1932))

	([ontology_Class11045] of  Book

		(author [ontology_Class10224])
		(genre "Romance")
		(pages 10336)
		(popularity low)
		(rating 664.0)
		(title "AshesintheWind")
		(year 1979))

	([ontology_Class11046] of  Book

		(author [ontology_Class10225])
		(genre "Romance")
		(pages 16964)
		(popularity medium)
		(rating 533.0)
		(title "FlowersfromtheStorm")
		(year 1992))

	([ontology_Class11047] of  Book

		(author [ontology_Class10226])
		(genre "Classics")
		(pages 8317)
		(popularity medium)
		(rating 244.0)
		(title "FathersandSons")
		(year 1862))

	([ontology_Class11048] of  Book

		(author [ontology_Class10227])
		(genre "Classics")
		(pages 9941)
		(popularity medium)
		(rating 797.0)
		(title "ThePortraitofaLady")
		(year 1881))

	([ontology_Class11049] of  Book

		(author [ontology_Class10228])
		(genre "Classics")
		(pages 12057)
		(popularity medium)
		(rating 512.0)
		(title "DeadSouls")
		(year 1842))

	([ontology_Class11050] of  Book

		(author [ontology_Class10229])
		(genre "Classics")
		(pages 14022)
		(popularity high)
		(rating 195.0)
		(title "TheAwakening")
		(year 1899))

	([ontology_Class11051] of  Book

		(author [ontology_Class10230])
		(genre "Uncategorized")
		(pages 33998)
		(popularity low)
		(rating 288.0)
		(title "LegendsoftheFall")
		(year 1979))

	([ontology_Class11052] of  Book

		(author [ontology_Class10231])
		(genre "Uncategorized")
		(pages 40250)
		(popularity medium)
		(rating 311.0)
		(title "PayItForward")
		(year 1999))

	([ontology_Class11053] of  Book

		(author [ontology_Class10232])
		(genre "Horror")
		(pages 47895)
		(popularity medium)
		(rating 208.0)
		(title "Psycho")
		(year 1959))

	([ontology_Class11054] of  Book

		(author [ontology_Class10233])
		(genre "Classics")
		(pages 92626)
		(popularity medium)
		(rating 192.0)
		(title "Bambi")
		(year 1923))

	([ontology_Class11055] of  Book

		(author [ontology_Class10234])
		(genre "Uncategorized")
		(pages 5113)
		(popularity low)
		(rating 165.0)
		(title "GentlemenPreferBlondes")
		(year 1925))

	([ontology_Class11056] of  Book

		(author [ontology_Class10235])
		(genre "Horror")
		(pages 3459)
		(popularity medium)
		(rating 208.0)
		(title "TheRats")
		(year 1974))

	([ontology_Class11057] of  Book

		(author [ontology_Class10236])
		(genre "Horror")
		(pages 3978)
		(popularity low)
		(rating 401.0)
		(title "HarvestHome")
		(year 1973))

	([ontology_Class11058] of  Book

		(author [ontology_Class10237])
		(genre "Horror")
		(pages 4011)
		(popularity medium)
		(rating 480.0)
		(title "Relic")
		(year 1995))

	([ontology_Class11059] of  Book

		(author [ontology_Class10238])
		(genre "Horror")
		(pages 6575)
		(popularity medium)
		(rating 144.0)
		(title "TheStepfordWives")
		(year 1972))

	([ontology_Class11060] of  Book

		(author [ontology_Class10239])
		(genre "Horror")
		(pages 7424)
		(popularity medium)
		(rating 272.0)
		(title "TheOmen")
		(year 1976))

	([ontology_Class11061] of  Book

		(author [ontology_Class10240])
		(genre "Horror")
		(pages 12842)
		(popularity medium)
		(rating 146.0)
		(title "WeHaveAlwaysLivedintheCastle")
		(year 1962))

	([ontology_Class11062] of  Book

		(author [ontology_Class10241])
		(genre "Uncategorized")
		(pages 4434)
		(popularity medium)
		(rating 343.0)
		(title "ICapturetheCastle")
		(year 1948))

	([ontology_Class11063] of  Book

		(author [ontology_Class10242])
		(genre "Romance")
		(pages 7069)
		(popularity medium)
		(rating 368.0)
		(title "Mr.Maybe")
		(year 1999))

	([ontology_Class11064] of  Book

		(author [ontology_Class10243])
		(genre "Fantasy")
		(pages 2504)
		(popularity low)
		(rating 196.0)
		(title "Dragon'sBait")
		(year 1992))

	([ontology_Class11065] of  Book

		(author [ontology_Class10244])
		(genre "Uncategorized")
		(pages 3458)
		(popularity medium)
		(rating 144.0)
		(title "Einstein'sDreams")
		(year 1992))

	([ontology_Class11066] of  Book

		(author [ontology_Class10245])
		(genre "Historical")
		(pages 9000)
		(popularity medium)
		(rating 896.0)
		(title "Scarlett")
		(year 1991))

	([ontology_Class11067] of  Book

		(author [ontology_Class10246])
		(genre "Young")
		(pages 1801)
		(popularity low)
		(rating 181.0)
		(title "LookforMebyMoonlight")
		(year 1995))

	([ontology_Class11068] of  Book

		(author [ontology_Class10247])
		(genre "Thriller")
		(pages 3388)
		(popularity low)
		(rating 399.0)
		(title "PrimalFear")
		(year 1992))

	([ontology_Class11069] of  Book

		(author [ontology_Class10248])
		(genre "Short Stories")
		(pages 4926)
		(popularity medium)
		(rating 252.0)
		(title "AGoodManisHardtoFindandOtherStories")
		(year 1953))

	([ontology_Class11070] of  Book

		(author [ontology_Class10249])
		(genre "Fantasy")
		(pages 1296)
		(popularity low)
		(rating 321.0)
		(title "WinterofFire")
		(year 1992))

	([ontology_Class11071] of  Book

		(author [ontology_Class10250])
		(genre "Fantasy")
		(pages 1319)
		(popularity low)
		(rating 176.0)
		(title "TheFolkKeeper")
		(year 1999))

	([ontology_Class11072] of  Book

		(author [ontology_Class10251])
		(genre "Fantasy")
		(pages 3259)
		(popularity low)
		(rating 480.0)
		(title "ACollegeofMagics")
		(year 1994))

	([ontology_Class11073] of  Book

		(author [ontology_Class10252])
		(genre "Uncategorized")
		(pages 1831)
		(popularity medium)
		(rating 480.0)
		(title "Shibumi")
		(year 1979))

	([ontology_Class11074] of  Book

		(author [ontology_Class10253])
		(genre "Horror")
		(pages 4339)
		(popularity low)
		(rating 236.0)
		(title "DawnoftheDead")
		(year 1978))

	([ontology_Class11075] of  Book

		(author [ontology_Class10091])
		(genre "Historical")
		(pages 4282)
		(popularity medium)
		(rating 1136.0)
		(title "Hawaii")
		(year 1959))

	([ontology_Class11076] of  Book

		(author [ontology_Class10011])
		(genre "Fantasy")
		(pages 28145)
		(popularity high)
		(rating 366.0)
		(title "TheHobbit")
		(year 1937))

	([ontology_Class11077] of  Book

		(author [ontology_Class10254])
		(genre "Historical")
		(pages 1607)
		(popularity low)
		(rating 144.0)
		(title "AGatheringofDays:ANewEnglandGirl'sJournal,1830-32")
		(year 1979))

	([ontology_Class11078] of  Book

		(author [ontology_Class10255])
		(genre "Historical")
		(pages 566)
		(popularity low)
		(rating 192.0)
		(title "Gay-Neck:TheStoryofaPigeon")
		(year 1927))

	([ontology_Class11079] of  Book

		(author [ontology_Class10256])
		(genre "Uncategorized")
		(pages 820)
		(popularity low)
		(rating 248.0)
		(title "OnionJohn")
		(year 1959))

	([ontology_Class11080] of  Book

		(author [ontology_Class10257])
		(genre "Historical")
		(pages 1368)
		(popularity low)
		(rating 302.0)
		(title "YoungFuoftheUpperYangtze")
		(year 1932))

	([ontology_Class11081] of  Book

		(author [ontology_Class10258])
		(genre "Uncategorized")
		(pages 1547)
		(popularity low)
		(rating 176.0)
		(title "It'sLikeThis,Cat")
		(year 1963))

	([ontology_Class11082] of  Book

		(author [ontology_Class10259])
		(genre "Historical")
		(pages 1559)
		(popularity low)
		(rating 160.0)
		(title "ShadowofaBull")
		(year 1964))

	([ontology_Class11083] of  Book

		(author [ontology_Class10260])
		(genre "Historical")
		(pages 1568)
		(popularity low)
		(rating 96.0)
		(title "TheWhiteStag")
		(year 1937))

	([ontology_Class11084] of  Book

		(author [ontology_Class10073])
		(genre "Classics")
		(pages 3336)
		(popularity high)
		(rating 122.0)
		(title "AnimalFarm")
		(year 1945))

	([ontology_Class11085] of  Book

		(author [ontology_Class10261])
		(genre "Classics")
		(pages 3349)
		(popularity high)
		(rating 175.0)
		(title "Fahrenheit451")
		(year 1953))

	([ontology_Class11086] of  Book

		(author [ontology_Class10262])
		(genre "Historical")
		(pages 1866)
		(popularity low)
		(rating 320.0)
		(title "AdamoftheRoad")
		(year 1942))

	([ontology_Class11087] of  Book

		(author [ontology_Class10263])
		(genre "Historical")
		(pages 2285)
		(popularity low)
		(rating 208.0)
		(title "TheTrumpeterofKrakow")
		(year 1928))

	([ontology_Class11088] of  Book

		(author [ontology_Class10264])
		(genre "Historical")
		(pages 2769)
		(popularity low)
		(rating 176.0)
		(title "TheSlaveDancer")
		(year 1973))

	([ontology_Class11089] of  Book

		(author [ontology_Class10265])
		(genre "Classics")
		(pages 3803)
		(popularity high)
		(rating 331.0)
		(title "TheSecretGarden")
		(year 1911))

	([ontology_Class11090] of  Book

		(author [ontology_Class10266])
		(genre "Historical")
		(pages 2875)
		(popularity low)
		(rating 352.0)
		(title "RiflesforWatie")
		(year 1957))

	([ontology_Class11091] of  Book

		(author [ontology_Class10267])
		(genre "Young")
		(pages 2932)
		(popularity medium)
		(rating 89.0)
		(title "MissingMayScholasticGold")
		(year 1992))

	([ontology_Class11092] of  Book

		(author [ontology_Class10268])
		(genre "Young")
		(pages 4266)
		(popularity medium)
		(rating 312.0)
		(title "Tangerine")
		(year 1997))

	([ontology_Class11093] of  Book

		(author [ontology_Class10269])
		(genre "Historical")
		(pages 3637)
		(popularity low)
		(rating 256.0)
		(title "Hitty,HerFirstHundredYears")
		(year 1929))

	([ontology_Class11094] of  Book

		(author [ontology_Class10270])
		(genre "Fantasy")
		(pages 3968)
		(popularity medium)
		(rating 400.0)
		(title "TheVoyagesofDoctorDolittle")
		(year 1922))

	([ontology_Class11095] of  Book

		(author [ontology_Class10271])
		(genre "Young")
		(pages 4206)
		(popularity low)
		(rating 197.0)
		(title "UpaRoadSlowly")
		(year 1966))

	([ontology_Class11096] of  Book

		(author [ontology_Class10272])
		(genre "Historical")
		(pages 4942)
		(popularity medium)
		(rating 120.0)
		(title "TheDoorintheWall")
		(year 1949))

	([ontology_Class11097] of  Book

		(author [ontology_Class10273])
		(genre "Young")
		(pages 4890)
		(popularity medium)
		(rating 169.0)
		(title "FreaktheMighty")
		(year 1993))

	([ontology_Class11098] of  Book

		(author [ontology_Class10274])
		(genre "Historical")
		(pages 5110)
		(popularity medium)
		(rating 251.0)
		(title "CarryOn,Mr.Bowditch")
		(year 1955))

	([ontology_Class11099] of  Book

		(author [ontology_Class10146])
		(genre "Uncategorized")
		(pages 6015)
		(popularity medium)
		(rating 128.0)
		(title "Sounder")
		(year 1969))

	([ontology_Class11100] of  Book

		(author [ontology_Class10122])
		(genre "Fantasy")
		(pages 6902)
		(popularity medium)
		(rating 165.0)
		(title "TheGreyKing")
		(year 1975))

	([ontology_Class11101] of  Book

		(author [ontology_Class10040])
		(genre "Fantasy")
		(pages 6422)
		(popularity low)
		(rating 710.0)
		(title "TheTimeTrilogy")
		(year 1963))

	([ontology_Class11102] of  Book

		(author [ontology_Class10037])
		(genre "Fantasy")
		(pages 9385)
		(popularity medium)
		(rating 253.0)
		(title "TheHighKing")
		(year 1968))

	([ontology_Class11103] of  Book

		(author [ontology_Class10018])
		(genre "Fantasy")
		(pages 7383)
		(popularity high)
		(rating 232.0)
		(title "EllaEnchanted")
		(year 1997))

	([ontology_Class11104] of  Book

		(author [ontology_Class10017])
		(genre "Fantasy")
		(pages 7471)
		(popularity high)
		(rating 767.0)
		(title "TheChroniclesofNarnia")
		(year 1956))

	([ontology_Class11105] of  Book

		(author [ontology_Class10068])
		(genre "Classics")
		(pages 8076)
		(popularity high)
		(rating 478.0)
		(title "WatershipDown")
		(year 1972))

	([ontology_Class11106] of  Book

		(author [ontology_Class10144])
		(genre "Young")
		(pages 11343)
		(popularity medium)
		(rating 176.0)
		(title "JulieoftheWolves")
		(year 1972))

	([ontology_Class11107] of  Book

		(author [ontology_Class10275])
		(genre "Historical")
		(pages 11511)
		(popularity medium)
		(rating 128.0)
		(title "TheMidwife'sApprentice")
		(year 1995))

	([ontology_Class11108] of  Book

		(author [ontology_Class10007])
		(genre "Classics")
		(pages 9085)
		(popularity high)
		(rating 449.0)
		(title "LittleWomen")
		(year 1868))

	([ontology_Class11109] of  Book

		(author [ontology_Class10276])
		(genre "Historical")
		(pages 12460)
		(popularity medium)
		(rating 322.0)
		(title "JohnnyTremain")
		(year 1943))

	([ontology_Class11110] of  Book

		(author [ontology_Class10277])
		(genre "Young")
		(pages 12743)
		(popularity medium)
		(rating 176.0)
		(title "TheViewfromSaturday")
		(year 1996))

	([ontology_Class11111] of  Book

		(author [ontology_Class10278])
		(genre "Historical")
		(pages 14020)
		(popularity medium)
		(rating 256.0)
		(title "OutoftheDust")
		(year 1997))

	([ontology_Class11112] of  Book

		(author [ontology_Class10034])
		(genre "Uncategorized")
		(pages 10418)
		(popularity high)
		(rating 176.0)
		(title "TheBadBeginning")
		(year 1999))

	([ontology_Class11113] of  Book

		(author [ontology_Class10032])
		(genre "Fantasy")
		(pages 10441)
		(popularity high)
		(rating 139.0)
		(title "TuckEverlasting")
		(year 1975))

	([ontology_Class11114] of  Book

		(author [ontology_Class10279])
		(genre "Historical")
		(pages 15649)
		(popularity medium)
		(rating 243.0)
		(title "Bud,NotBuddy")
		(year 1999))

	([ontology_Class11115] of  Book

		(author [ontology_Class10116])
		(genre "Historical")
		(pages 21768)
		(popularity high)
		(rating 288.0)
		(title "RollofThunder,HearMyCry")
		(year 1976))

	([ontology_Class11116] of  Book

		(author [ontology_Class10038])
		(genre "Fantasy")
		(pages 11844)
		(popularity high)
		(rating 398.0)
		(title "ThePrincessBride")
		(year 1973))

	([ontology_Class11117] of  Book

		(author [ontology_Class10052])
		(genre "Young")
		(pages 31276)
		(popularity high)
		(rating 280.0)
		(title "WalkTwoMoons")
		(year 1994))

	([ontology_Class11118] of  Book

		(author [ontology_Class10149])
		(genre "Classics")
		(pages 12848)
		(popularity high)
		(rating 272.0)
		(title "WheretheRedFernGrows")
		(year 1961))

	([ontology_Class11119] of  Book

		(author [ontology_Class10057])
		(genre "Thriller")
		(pages 37613)
		(popularity high)
		(rating 182.0)
		(title "TheWestingGame")
		(year 1978))

	([ontology_Class11120] of  Book

		(author [ontology_Class10280])
		(genre "Fantasy")
		(pages 16775)
		(popularity high)
		(rating 435.0)
		(title "HarryPotterandthePrisonerofAzkaban")
		(year 1999))

	([ontology_Class11121] of  Book

		(author [ontology_Class10076])
		(genre "Classics")
		(pages 31926)
		(popularity high)
		(rating 192.0)
		(title "TheOutsiders")
		(year 1967))

	([ontology_Class11122] of  Book

		(author [ontology_Class10281])
		(genre "Uncategorized")
		(pages 1516)
		(popularity medium)
		(rating 343.0)
		(title "PigsinHeaven")
		(year 1993))

	([ontology_Class11123] of  Book

		(author [ontology_Class10200])
		(genre "Uncategorized")
		(pages 1521)
		(popularity high)
		(rating 376.0)
		(title "WheretheHeartIs")
		(year 1995))

	([ontology_Class11124] of  Book

		(author [ontology_Class10282])
		(genre "Uncategorized")
		(pages 1536)
		(popularity high)
		(rating 306.0)
		(title "Chocolat")
		(year 1999))

	([ontology_Class11125] of  Book

		(author [ontology_Class10283])
		(genre "Uncategorized")
		(pages 1563)
		(popularity medium)
		(rating 371.0)
		(title "AThousandAcres")
		(year 1991))

	([ontology_Class11126] of  Book

		(author [ontology_Class10284])
		(genre "Uncategorized")
		(pages 1686)
		(popularity low)
		(rating 256.0)
		(title "SoFarfromGod")
		(year 1993))

	([ontology_Class11127] of  Book

		(author [ontology_Class10285])
		(genre "Fantasy")
		(pages 1699)
		(popularity medium)
		(rating 554.0)
		(title "DaughteroftheForest")
		(year 1999))

	([ontology_Class11128] of  Book

		(author [ontology_Class10194])
		(genre "Classics")
		(pages 1807)
		(popularity medium)
		(rating 376.0)
		(title "LadyChatterley'sLover")
		(year 1928))

	([ontology_Class11129] of  Book

		(author [ontology_Class10106])
		(genre "Historical")
		(pages 2197)
		(popularity high)
		(rating 356.0)
		(title "ColdMountain")
		(year 1997))

	([ontology_Class11130] of  Book

		(author [ontology_Class10286])
		(genre "Uncategorized")
		(pages 2373)
		(popularity medium)
		(rating 355.0)
		(title "RevolutionaryRoad")
		(year 1961))

	([ontology_Class11131] of  Book

		(author [ontology_Class10006])
		(genre "Classics")
		(pages 2408)
		(popularity high)
		(rating 279.0)
		(title "PrideandPrejudice")
		(year 1813))

	([ontology_Class11132] of  Book

		(author [ontology_Class10287])
		(genre "Uncategorized")
		(pages 2511)
		(popularity medium)
		(rating 318.0)
		(title "Paradise")
		(year 1997))

	([ontology_Class11133] of  Book

		(author [ontology_Class10208])
		(genre "Uncategorized")
		(pages 2678)
		(popularity medium)
		(rating 320.0)
		(title "BastardOutofCarolina")
		(year 1992))

	([ontology_Class11134] of  Book

		(author [ontology_Class10229])
		(genre "Short Stories")
		(pages 3234)
		(popularity medium)
		(rating 32.0)
		(title "TheStoryofanHour")
		(year 1894))

	([ontology_Class11135] of  Book

		(author [ontology_Class10204])
		(genre "Classics")
		(pages 3524)
		(popularity high)
		(rating 521.0)
		(title "NorthandSouth")
		(year 1855))

	([ontology_Class11136] of  Book

		(author [ontology_Class10288])
		(genre "Uncategorized")
		(pages 3878)
		(popularity medium)
		(rating 416.0)
		(title "TheKitchenGod'sWife")
		(year 1991))

	([ontology_Class11137] of  Book

		(author [ontology_Class10043])
		(genre "Short Stories")
		(pages 4609)
		(popularity medium)
		(rating 128.0)
		(title "TheBloodyChamberandOtherStories")
		(year 1979))

	([ontology_Class11138] of  Book

		(author [ontology_Class10289])
		(genre "Uncategorized")
		(pages 5170)
		(popularity medium)
		(rating 640.0)
		(title "TheGoldenNotebook")
		(year 1962))

	([ontology_Class11139] of  Book

		(author [ontology_Class10159])
		(genre "Classics")
		(pages 6902)
		(popularity high)
		(rating 209.0)
		(title "TotheLighthouse")
		(year 1927))

	([ontology_Class11140] of  Book

		(author [ontology_Class10290])
		(genre "Uncategorized")
		(pages 7282)
		(popularity medium)
		(rating 160.0)
		(title "WideSargassoSea")
		(year 1966))

	([ontology_Class11141] of  Book

		(author [ontology_Class10107])
		(genre "Historical")
		(pages 15827)
		(popularity high)
		(rating 336.0)
		(title "TheRedTent")
		(year 1997))

	([ontology_Class11142] of  Book

		(author [ontology_Class10058])
		(genre "Classics")
		(pages 20610)
		(popularity high)
		(rating 219.0)
		(title "TheirEyesWereWatchingGod")
		(year 1937))

	([ontology_Class11143] of  Book

		(author [ontology_Class10009])
		(genre "Classics")
		(pages 41180)
		(popularity high)
		(rating 294.0)
		(title "TheBellJar")
		(year 1963))

	([ontology_Class11144] of  Book

		(author [ontology_Class10291])
		(genre "Fantasy")
		(pages 2478)
		(popularity medium)
		(rating 979.0)
		(title "StoneofTears")
		(year 1995))

	([ontology_Class11145] of  Book

		(author [ontology_Class10292])
		(genre "Horror")
		(pages 2541)
		(popularity high)
		(rating 790.0)
		(title "NeedfulThings")
		(year 1991))

	([ontology_Class11146] of  Book

		(author [ontology_Class10293])
		(genre "Historical")
		(pages 2624)
		(popularity medium)
		(rating 1424.0)
		(title "Sacajawea")
		(year 1978))

	([ontology_Class11147] of  Book

		(author [ontology_Class10054])
		(genre "Classics")
		(pages 2683)
		(popularity high)
		(rating 518.0)
		(title "TessoftheD'Urbervilles")
		(year 1891))

	([ontology_Class11148] of  Book

		(author [ontology_Class10294])
		(genre "Fantasy")
		(pages 2790)
		(popularity high)
		(rating 1011.0)
		(title "LordofChaos")
		(year 1994))

	([ontology_Class11149] of  Book

		(author [ontology_Class10124])
		(genre "Uncategorized")
		(pages 2954)
		(popularity medium)
		(rating 776.0)
		(title "Gravity'sRainbow")
		(year 1973))

	([ontology_Class11150] of  Book

		(author [ontology_Class10118])
		(genre "Historical")
		(pages 3009)
		(popularity medium)
		(rating 896.0)
		(title "TheWindsofWar")
		(year 1971))

	([ontology_Class11151] of  Book

		(author [ontology_Class10063])
		(genre "Historical")
		(pages 3148)
		(popularity high)
		(rating 870.0)
		(title "Voyager")
		(year 1993))

	([ontology_Class11152] of  Book

		(author [ontology_Class10069])
		(genre "Classics")
		(pages 3449)
		(popularity high)
		(rating 667.0)
		(title "TheIdiot")
		(year 1869))

	([ontology_Class11153] of  Book

		(author [ontology_Class10220])
		(genre "Uncategorized")
		(pages 1016)
		(popularity low)
		(rating 672.0)
		(title "DoktorFaustus")
		(year 1947))

	([ontology_Class11154] of  Book

		(author [ontology_Class10033])
		(genre "Fantasy")
		(pages 3727)
		(popularity medium)
		(rating 639.0)
		(title "TheOnceandFutureKing")
		(year 1958))

	([ontology_Class11155] of  Book

		(author [ontology_Class10295])
		(genre "Uncategorized")
		(pages 1352)
		(popularity medium)
		(rating 304.0)
		(title "FugitivePieces")
		(year 1996))

	([ontology_Class11156] of  Book

		(author [ontology_Class10105])
		(genre "Classics")
		(pages 4120)
		(popularity high)
		(rating 625.0)
		(title "TheThreeMusketeers")
		(year 1844))

	([ontology_Class11157] of  Book

		(author [ontology_Class10195])
		(genre "Classics")
		(pages 4461)
		(popularity low)
		(rating 4211.0)
		(title "InSearchofLostTime")
		(year 1927))

	([ontology_Class11158] of  Book

		(author [ontology_Class10055])
		(genre "Classics")
		(pages 4719)
		(popularity high)
		(rating 882.0)
		(title "DavidCopperfield")
		(year 1849))

	([ontology_Class11159] of  Book

		(author [ontology_Class10296])
		(genre "Uncategorized")
		(pages 5386)
		(popularity high)
		(rating 692.0)
		(title "TheThornBirds")
		(year 1977))

	([ontology_Class11160] of  Book

		(author [ontology_Class10138])
		(genre "Historical")
		(pages 6769)
		(popularity high)
		(rating 729.0)
		(title "Roots:TheSagaofanAmericanFamily")
		(year 1976))

	([ontology_Class11161] of  Book

		(author [ontology_Class10221])
		(genre "Classics")
		(pages 6870)
		(popularity high)
		(rating 904.0)
		(title "Middlemarch")
		(year 1871))

	([ontology_Class11162] of  Book

		(author [ontology_Class10297])
		(genre "Historical")
		(pages 2081)
		(popularity medium)
		(rating 203.0)
		(title "SummerofMyGermanSoldier")
		(year 1973))

	([ontology_Class11163] of  Book

		(author [ontology_Class10060])
		(genre "Classics")
		(pages 7745)
		(popularity high)
		(rating 601.0)
		(title "EastofEden")
		(year 1952))

	([ontology_Class11164] of  Book

		(author [ontology_Class10298])
		(genre "Historical")
		(pages 2525)
		(popularity low)
		(rating 293.0)
		(title "IfIShouldDieBeforeIWake")
		(year 1994))

	([ontology_Class11165] of  Book

		(author [ontology_Class10003])
		(genre "Uncategorized")
		(pages 8529)
		(popularity high)
		(rating 704.0)
		(title "TheFountainhead")
		(year 1943))

	([ontology_Class11166] of  Book

		(author [ontology_Class10299])
		(genre "Historical")
		(pages 2544)
		(popularity medium)
		(rating 208.0)
		(title "TheUpstairsRoom")
		(year 1972))

	([ontology_Class11167] of  Book

		(author [ontology_Class10300])
		(genre "Uncategorized")
		(pages 2682)
		(popularity medium)
		(rating 543.0)
		(title "EveryManDiesAlone")
		(year 1947))

	([ontology_Class11168] of  Book

		(author [ontology_Class10196])
		(genre "Classics")
		(pages 8840)
		(popularity high)
		(rating 912.0)
		(title "VanityFair")
		(year 1848))

	([ontology_Class11169] of  Book

		(author [ontology_Class10301])
		(genre "Historical")
		(pages 2906)
		(popularity medium)
		(rating 525.0)
		(title "StonesfromtheRiver")
		(year 1994))

	([ontology_Class11170] of  Book

		(author [ontology_Class10302])
		(genre "Historical")
		(pages 2914)
		(popularity medium)
		(rating 191.0)
		(title "WhenHitlerStolePinkRabbit")
		(year 1971))

	([ontology_Class11171] of  Book

		(author [ontology_Class10160])
		(genre "Classics")
		(pages 10845)
		(popularity medium)
		(rating 783.0)
		(title "Ulysses")
		(year 1922))

	([ontology_Class11172] of  Book

		(author [ontology_Class10110])
		(genre "Classics")
		(pages 12349)
		(popularity high)
		(rating 964.0)
		(title "AnnaKarenina")
		(year 1877))

	([ontology_Class11173] of  Book

		(author [ontology_Class10198])
		(genre "Uncategorized")
		(pages 14496)
		(popularity medium)
		(rating 1088.0)
		(title "InfiniteJest")
		(year 1996))

	([ontology_Class11174] of  Book

		(author [ontology_Class10139])
		(genre "Classics")
		(pages 15122)
		(popularity high)
		(rating 720.0)
		(title "Moby-Dick,or,theWhale")
		(year 1851))

	([ontology_Class11175] of  Book

		(author [ontology_Class10016])
		(genre "Classics")
		(pages 23160)
		(popularity high)
		(rating 1037.0)
		(title "GonewiththeWind")
		(year 1936))

	([ontology_Class11176] of  Book

		(author [ontology_Class10143])
		(genre "Uncategorized")
		(pages 8730)
		(popularity medium)
		(rating 562.0)
		(title "Sophie'sChoice")
		(year 1979))

	([ontology_Class11177] of  Book

		(author [ontology_Class10010])
		(genre "Uncategorized")
		(pages 10939)
		(popularity high)
		(rating 216.0)
		(title "TheReader")
		(year 1995))

	([ontology_Class11178] of  Book

		(author [ontology_Class10092])
		(genre "Historical")
		(pages 1718)
		(popularity medium)
		(rating 958.0)
		(title "TheFarPavilions")
		(year 1978))

	([ontology_Class11179] of  Book

		(author [ontology_Class10303])
		(genre "Uncategorized")
		(pages 1771)
		(popularity low)
		(rating 213.0)
		(title "TheHomeandtheWorld")
		(year 1916))

	([ontology_Class11180] of  Book

		(author [ontology_Class10304])
		(genre "Uncategorized")
		(pages 2039)
		(popularity low)
		(rating 344.0)
		(title "TheSiegeofKrishnapur")
		(year 1973))

	([ontology_Class11181] of  Book

		(author [ontology_Class10045])
		(genre "Classics")
		(pages 2347)
		(popularity high)
		(rating 152.0)
		(title "Siddhartha")
		(year 1922))

	([ontology_Class11182] of  Book

		(author [ontology_Class10044])
		(genre "Uncategorized")
		(pages 2652)
		(popularity medium)
		(rating 338.0)
		(title "TheMistressofSpices")
		(year 1997))

	([ontology_Class11183] of  Book

		(author [ontology_Class10305])
		(genre "Uncategorized")
		(pages 3280)
		(popularity medium)
		(rating 623.0)
		(title "AHouseforMrBiswas")
		(year 1961))

	([ontology_Class11184] of  Book

		(author [ontology_Class10059])
		(genre "Classics")
		(pages 6610)
		(popularity high)
		(rating 329.0)
		(title "MadameBovary")
		(year 1856))

	([ontology_Class11185] of  Book

		(author [ontology_Class10306])
		(genre "Uncategorized")
		(pages 6621)
		(popularity high)
		(rating 303.0)
		(title "BreakfastofChampions")
		(year 1973))

	([ontology_Class11186] of  Book

		(author [ontology_Class10072])
		(genre "Uncategorized")
		(pages 7369)
		(popularity high)
		(rating 311.0)
		(title "FlowersforAlgernon")
		(year 1966))

	([ontology_Class11187] of  Book

		(author [ontology_Class10066])
		(genre "Classics")
		(pages 7399)
		(popularity high)
		(rating 189.0)
		(title "TheSunAlsoRises")
		(year 1926))

	([ontology_Class11188] of  Book

		(author [ontology_Class10065])
		(genre "Classics")
		(pages 7821)
		(popularity high)
		(rating 325.0)
		(title "OneFlewOvertheCuckoo'sNest")
		(year 1962))

	([ontology_Class11189] of  Book

		(author [ontology_Class10109])
		(genre "Classics")
		(pages 9039)
		(popularity high)
		(rating 296.0)
		(title "AllQuietontheWesternFront")
		(year 1929))

	([ontology_Class11190] of  Book

		(author [ontology_Class10070])
		(genre "Classics")
		(pages 10851)
		(popularity high)
		(rating 123.0)
		(title "TheStranger")
		(year 1942))

	([ontology_Class11191] of  Book

		(author [ontology_Class10307])
		(genre "Classics")
		(pages 11822)
		(popularity high)
		(rating 142.0)
		(title "BreakfastatTiffany's")
		(year 1958))

	([ontology_Class11192] of  Book

		(author [ontology_Class10113])
		(genre "Classics")
		(pages 12960)
		(popularity high)
		(rating 239.0)
		(title "Alice'sAdventuresinWonderlandThroughtheLooking-Glass")
		(year 1872))

	([ontology_Class11193] of  Book

		(author [ontology_Class10071])
		(genre "Classics")
		(pages 23054)
		(popularity high)
		(rating 273.0)
		(title "Frankenstein")
		(year 1818))

	([ontology_Class11194] of  Book

		(author [ontology_Class10075])
		(genre "Classics")
		(pages 28771)
		(popularity high)
		(rating 182.0)
		(title "LordoftheFlies")
		(year 1954))

	([ontology_Class11195] of  Book

		(author [ontology_Class10111])
		(genre "Classics")
		(pages 34253)
		(popularity high)
		(rating 417.0)
		(title "Lolita")
		(year 1955))

	([ontology_Class11196] of  Book

		(author [ontology_Class10308])
		(genre "Thriller")
		(pages 3726)
		(popularity low)
		(rating 394.0)
		(title "BookedToDie")
		(year 1992))

	([ontology_Class11197] of  Book

		(author [ontology_Class10103])
		(genre "Uncategorized")
		(pages 3881)
		(popularity high)
		(rating 320.0)
		(title "TheEnglishPatient")
		(year 1992))

	([ontology_Class11198] of  Book

		(author [ontology_Class10001])
		(genre "Classics")
		(pages 3969)
		(popularity high)
		(rating 288.0)
		(title "BraveNewWorld")
		(year 1932))

	([ontology_Class11199] of  Book

		(author [ontology_Class10114])
		(genre "Fantasy")
		(pages 5512)
		(popularity high)
		(rating 256.0)
		(title "ThePhantomTollbooth")
		(year 1961))

	([ontology_Class11200] of  Book

		(author [ontology_Class10049])
		(genre "Uncategorized")
		(pages 6311)
		(popularity medium)
		(rating 260.0)
		(title "IfonaWinter'sNightaTraveler")
		(year 1979))

	([ontology_Class11201] of  Book

		(author [ontology_Class10309])
		(genre "Uncategorized")
		(pages 6940)
		(popularity high)
		(rating 610.0)
		(title "TheWorldAccordingtoGarp")
		(year 1978))

	([ontology_Class11202] of  Book

		(author [ontology_Class10241])
		(genre "Uncategorized")
		(pages 7718)
		(popularity medium)
		(rating 343.0)
		(title "ICapturetheCastle")
		(year 1948))

	([ontology_Class11203] of  Book

		(author [ontology_Class10074])
		(genre "Classics")
		(pages 13275)
		(popularity high)
		(rating 277.0)
		(title "TheCatcherintheRye")
		(year 1951))

	([ontology_Class11204] of  Book

		(author [ontology_Class10036])
		(genre "Fantasy")
		(pages 17119)
		(popularity high)
		(rating 396.0)
		(title "TheNeverendingStory")
		(year 1979))

	([ontology_Class11205] of  Book

		(author [ontology_Class10008])
		(genre "Classics")
		(pages 17337)
		(popularity high)
		(rating 496.0)
		(title "ATreeGrowsinBrooklyn")
		(year 1943))

	([ontology_Class11206] of  Book

		(author [ontology_Class10028])
		(genre "Classics")
		(pages 10902)
		(popularity high)
		(rating 488.0)
		(title "Dracula")
		(year 1897))

	([ontology_Class11207] of  Book

		(author [ontology_Class10014])
		(genre "Uncategorized")
		(pages 5014)
		(popularity high)
		(rating 434.0)
		(title "MemoirsofaGeisha")
		(year 1997))

	([ontology_Class11208] of  Book

		(author [ontology_Class10310])
		(genre "Romance")
		(pages 5135)
		(popularity medium)
		(rating 709.0)
		(title "Paradise")
		(year 1991))

	([ontology_Class11209] of  Book

		(author [ontology_Class10112])
		(genre "Classics")
		(pages 2215)
		(popularity high)
		(rating 453.0)
		(title "Catch-22")
		(year 1961))

	([ontology_Class11210] of  Book

		(author [ontology_Class10184])
		(genre "Uncategorized")
		(pages 3431)
		(popularity high)
		(rating 559.0)
		(title "TheSecretHistory")
		(year 1992))

	([ontology_Class11211] of  Book

		(author [ontology_Class10005])
		(genre "Classics")
		(pages 7688)
		(popularity high)
		(rating 449.0)
		(title "Rebecca")
		(year 1938))

	([ontology_Class11212] of  Book

		(author [ontology_Class10077])
		(genre "Classics")
		(pages 19842)
		(popularity high)
		(rating 180.0)
		(title "TheGreatGatsby")
		(year 1925))

	([ontology_Class11213] of  Book

		(author [ontology_Class10155])
		(genre "Uncategorized")
		(pages 9166)
		(popularity medium)
		(rating 55.0)
		(title "BrokebackMountain")
		(year 1997))

	([ontology_Class11214] of  Book

		(author [ontology_Class10311])
		(genre "Thriller")
		(pages 10769)
		(popularity high)
		(rating 320.0)
		(title "OnefortheMoney")
		(year 1994))

	([ontology_Class11215] of  Book

		(author [ontology_Class10156])
		(genre "Fantasy")
		(pages 13036)
		(popularity high)
		(rating 406.0)
		(title "Wicked:TheLifeandTimesoftheWickedWitchoftheWest")
		(year 1995))

	([ontology_Class11216] of  Book

		(author [ontology_Class10154])
		(genre "Uncategorized")
		(pages 3001)
		(popularity high)
		(rating 365.0)
		(title "HouseofSandandFog")
		(year 1999))

	([ontology_Class11217] of  Book

		(author [ontology_Class10312])
		(genre "Uncategorized")
		(pages 2855)
		(popularity medium)
		(rating 311.0)
		(title "MotherlessBrooklyn")
		(year 1999))

	([ontology_Class11218] of  Book

		(author [ontology_Class10173])
		(genre "Uncategorized")
		(pages 3457)
		(popularity medium)
		(rating 224.0)
		(title "TheBridgesofMadisonCounty")
		(year 1992))

	([ontology_Class11219] of  Book

		(author [ontology_Class10157])
		(genre "Classics")
		(pages 3547)
		(popularity medium)
		(rating 170.0)
		(title "TheRedBadgeofCourage")
		(year 1895))

	([ontology_Class11220] of  Book

		(author [ontology_Class10199])
		(genre "Uncategorized")
		(pages 4071)
		(popularity high)
		(rating 342.0)
		(title "LeftBehind")
		(year 1995))

	([ontology_Class11221] of  Book

		(author [ontology_Class10062])
		(genre "Classics")
		(pages 5828)
		(popularity high)
		(rating 188.0)
		(title "HeartofDarkness")
		(year 1899))

	([ontology_Class11222] of  Book

		(author [ontology_Class10313])
		(genre "Horror")
		(pages 4778)
		(popularity medium)
		(rating 564.0)
		(title "Hannibal")
		(year 1999))

	([ontology_Class11223] of  Book

		(author [ontology_Class10190])
		(genre "Uncategorized")
		(pages 2954)
		(popularity high)
		(rating 483.0)
		(title "TheClient")
		(year 1993))

	([ontology_Class11224] of  Book

		(author [ontology_Class10314])
		(genre "Uncategorized")
		(pages 3088)
		(popularity medium)
		(rating 454.0)
		(title "WeWeretheMulvaneys")
		(year 1996))

	([ontology_Class11225] of  Book

		(author [ontology_Class10315])
		(genre "Historical")
		(pages 3151)
		(popularity medium)
		(rating 256.0)
		(title "Regeneration")
		(year 1991))

	([ontology_Class11226] of  Book

		(author [ontology_Class10012])
		(genre "Romance")
		(pages 3193)
		(popularity medium)
		(rating 352.0)
		(title "BridgetJones:TheEdgeofReason")
		(year 1999))

	([ontology_Class11227] of  Book

		(author [ontology_Class10316])
		(genre "Uncategorized")
		(pages 5294)
		(popularity medium)
		(rating 432.0)
		(title "AmericanPastoral")
		(year 1997))

	([ontology_Class11228] of  Book

		(author [ontology_Class10317])
		(genre "Fantasy")
		(pages 6882)
		(popularity high)
		(rating 491.0)
		(title "Sabriel")
		(year 1995))

	([ontology_Class11229] of  Book

		(author [ontology_Class10170])
		(genre "Uncategorized")
		(pages 7989)
		(popularity high)
		(rating 430.0)
		(title "Trainspotting")
		(year 1993))

	([ontology_Class11230] of  Book

		(author [ontology_Class10318])
		(genre "Uncategorized")
		(pages 11196)
		(popularity high)
		(rating 607.0)
		(title "TheWind-UpBirdChronicle")
		(year 1994))

	([ontology_Class11231] of  Book

		(author [ontology_Class10185])
		(genre "Uncategorized")
		(pages 11446)
		(popularity high)
		(rating 460.0)
		(title "SnowFallingonCedars")
		(year 1994))

	([ontology_Class11232] of  Book

		(author [ontology_Class10319])
		(genre "Uncategorized")
		(pages 18957)
		(popularity high)
		(rating 218.0)
		(title "FightClub")
		(year 1996))

	([ontology_Class11233] of  Book

		(author [ontology_Class10320])
		(genre "Romance")
		(pages 1967)
		(popularity medium)
		(rating 352.0)
		(title "AftertheNight")
		(year 1995))

	([ontology_Class11234] of  Book

		(author [ontology_Class10321])
		(genre "Fantasy")
		(pages 1508)
		(popularity high)
		(rating 460.0)
		(title "Assassin'sApprentice")
		(year 1995))

	([ontology_Class11235] of  Book

		(author [ontology_Class10162])
		(genre "Classics")
		(pages 3196)
		(popularity high)
		(rating 418.0)
		(title "TheGoodEarth")
		(year 1931))

	([ontology_Class11236] of  Book

		(author [ontology_Class10322])
		(genre "Uncategorized")
		(pages 3668)
		(popularity medium)
		(rating 182.0)
		(title "OneDayintheLifeofIvanDenisovich")
		(year 1962))

	([ontology_Class11237] of  Book

		(author [ontology_Class10064])
		(genre "Uncategorized")
		(pages 4412)
		(popularity high)
		(rating 209.0)
		(title "ThingsFallApart")
		(year 1958))

	([ontology_Class11238] of  Book

		(author [ontology_Class10323])
		(genre "Classics")
		(pages 4532)
		(popularity high)
		(rating 208.0)
		(title "ASeparatePeace")
		(year 1959))

	([ontology_Class11239] of  Book

		(author [ontology_Class10053])
		(genre "Classics")
		(pages 5918)
		(popularity high)
		(rating 212.0)
		(title "AClockworkOrange")
		(year 1962))

	([ontology_Class11240] of  Book

		(author [ontology_Class10148])
		(genre "Classics")
		(pages 8558)
		(popularity medium)
		(rating 132.0)
		(title "OldYeller")
		(year 1956))

	([ontology_Class11241] of  Book

		(author [ontology_Class10182])
		(genre "Thriller")
		(pages 4050)
		(popularity high)
		(rating 264.0)
		(title "AndThenThereWereNone")
		(year 1939))

	([ontology_Class11242] of  Book

		(author [ontology_Class10061])
		(genre "Classics")
		(pages 5363)
		(popularity high)
		(rating 327.0)
		(title "TheAdventuresofHuckleberryFinn")
		(year 1884))

	([ontology_Class11243] of  Book

		(author [ontology_Class10324])
		(genre "Uncategorized")
		(pages 1688)
		(popularity low)
		(rating 486.0)
		(title "TheFifthSacredThing")
		(year 1993))

	([ontology_Class11244] of  Book

		(author [ontology_Class10325])
		(genre "Young")
		(pages 6979)
		(popularity medium)
		(rating 690.0)
		(title "KissedbyanAngel/ThePowerofLove/Soulmates")
		(year 1995))

	([ontology_Class11245] of  Book

		(author [ontology_Class10326])
		(genre "Uncategorized")
		(pages 3529)
		(popularity low)
		(rating 243.0)
		(title "IntotheForest")
		(year 1996))

	([ontology_Class11246] of  Book

		(author [ontology_Class10140])
		(genre "Classics")
		(pages 4379)
		(popularity high)
		(rating 245.0)
		(title "BlackBeauty")
		(year 1877))

	([ontology_Class11247] of  Book

		(author [ontology_Class10108])
		(genre "Classics")
		(pages 4567)
		(popularity high)
		(rating 438.0)
		(title "UncleTom'sCabin")
		(year 1852))

	([ontology_Class11248] of  Book

		(author [ontology_Class10327])
		(genre "Historical")
		(pages 5838)
		(popularity medium)
		(rating 528.0)
		(title "TheRobe")
		(year 1942))

	([ontology_Class11249] of  Book

		(author [ontology_Class10328])
		(genre "Religious")
		(pages 6313)
		(popularity medium)
		(rating 96.0)
		(title "InHisSteps")
		(year 1896))

	([ontology_Class11250] of  Book

		(author [ontology_Class10203])
		(genre "Religious")
		(pages 6564)
		(popularity medium)
		(rating 520.0)
		(title "AVoiceintheWind")
		(year 1993))

	([ontology_Class11251] of  Book

		(author [ontology_Class10329])
		(genre "Religious")
		(pages 11356)
		(popularity medium)
		(rating 317.0)
		(title "Hinds'FeetonHighPlaces")
		(year 1955))

	([ontology_Class11252] of  Book

		(author [ontology_Class10330])
		(genre "Classics")
		(pages 30421)
		(popularity medium)
		(rating 324.0)
		(title "ThePilgrim'sProgress")
		(year 1678))

	([ontology_Class11253] of  Book

		(author [ontology_Class10191])
		(genre "Classics")
		(pages 7552)
		(popularity high)
		(rating 311.0)
		(title "TreasureIsland")
		(year 1882))

	([ontology_Class11254] of  Book

		(author [ontology_Class10175])
		(genre "Classics")
		(pages 8759)
		(popularity medium)
		(rating 209.0)
		(title "MaryPoppins")
		(year 1934))

	([ontology_Class11255] of  Book

		(author [ontology_Class10216])
		(genre "Classics")
		(pages 24212)
		(popularity high)
		(rating 880.0)
		(title "TheCompleteGrimm'sFairyTales")
		(year 1812))

	([ontology_Class11256] of  Book

		(author [ontology_Class10331])
		(genre "Thriller")
		(pages 601)
		(popularity low)
		(rating 160.0)
		(title "ARageinHarlem")
		(year 1957))

	([ontology_Class11257] of  Book

		(author [ontology_Class10192])
		(genre "Thriller")
		(pages 613)
		(popularity high)
		(rating 231.0)
		(title "TheBigSleep")
		(year 1939))

	([ontology_Class11258] of  Book

		(author [ontology_Class10096])
		(genre "Historical")
		(pages 1793)
		(popularity medium)
		(rating 972.0)
		(title "ForeverAmber")
		(year 1944))

	([ontology_Class11259] of  Book

		(author [ontology_Class10332])
		(genre "Uncategorized")
		(pages 1838)
		(popularity medium)
		(rating 160.0)
		(title "TheBridgeofSanLuisRey")
		(year 1927))

	([ontology_Class11260] of  Book

		(author [ontology_Class10081])
		(genre "Historical")
		(pages 1863)
		(popularity low)
		(rating 432.0)
		(title "Queens'Play")
		(year 1964))

	([ontology_Class11261] of  Book

		(author [ontology_Class10333])
		(genre "Historical")
		(pages 1944)
		(popularity low)
		(rating 352.0)
		(title "TheKingMustDie")
		(year 1958))

	([ontology_Class11262] of  Book

		(author [ontology_Class10334])
		(genre "Classics")
		(pages 2324)
		(popularity medium)
		(rating 589.0)
		(title "QuoVadis")
		(year 1894))

	([ontology_Class11263] of  Book

		(author [ontology_Class10095])
		(genre "Uncategorized")
		(pages 2621)
		(popularity medium)
		(rating 470.0)
		(title "TheFrenchLieutenant'sWoman")
		(year 1969))

	([ontology_Class11264] of  Book

		(author [ontology_Class10087])
		(genre "Historical")
		(pages 2647)
		(popularity medium)
		(rating 691.0)
		(title "AnInstanceoftheFingerpost")
		(year 1997))

	([ontology_Class11265] of  Book

		(author [ontology_Class10104])
		(genre "Historical")
		(pages 2843)
		(popularity medium)
		(rating 533.0)
		(title "ClaudiustheGodandHisWifeMessalina")
		(year 1934))

	([ontology_Class11266] of  Book

		(author [ontology_Class10335])
		(genre "Thriller")
		(pages 2928)
		(popularity medium)
		(rating 197.0)
		(title "AMorbidTasteforBones")
		(year 1977))

	([ontology_Class11267] of  Book

		(author [ontology_Class10336])
		(genre "Historical")
		(pages 3044)
		(popularity low)
		(rating 480.0)
		(title "Armada")
		(year 1996))

	([ontology_Class11268] of  Book

		(author [ontology_Class10337])
		(genre "Classics")
		(pages 3158)
		(popularity medium)
		(rating 400.0)
		(title "MutinyontheBounty")
		(year 1932))

	([ontology_Class11269] of  Book

		(author [ontology_Class10127])
		(genre "Uncategorized")
		(pages 3331)
		(popularity medium)
		(rating 320.0)
		(title "Ragtime")
		(year 1975))

	([ontology_Class11270] of  Book

		(author [ontology_Class10338])
		(genre "Thriller")
		(pages 3484)
		(popularity medium)
		(rating 341.0)
		(title "TheBeekeeper'sApprentice")
		(year 1994))

	([ontology_Class11271] of  Book

		(author [ontology_Class10099])
		(genre "Historical")
		(pages 4048)
		(popularity medium)
		(rating 776.0)
		(title "TheAgonyandtheEcstasy")
		(year 1958))

	([ontology_Class11272] of  Book

		(author [ontology_Class10098])
		(genre "Classics")
		(pages 6580)
		(popularity medium)
		(rating 544.0)
		(title "Ivanhoe")
		(year 1819))

	([ontology_Class11273] of  Book

		(author [ontology_Class10093])
		(genre "Historical")
		(pages 7212)
		(popularity medium)
		(rating 411.0)
		(title "MasterandCommander")
		(year 1969))

	([ontology_Class11274] of  Book

		(author [ontology_Class10102])
		(genre "Historical")
		(pages 7333)
		(popularity medium)
		(rating 500.0)
		(title "Katherine")
		(year 1954))

	([ontology_Class11275] of  Book

		(author [ontology_Class10126])
		(genre "Historical")
		(pages 8644)
		(popularity medium)
		(rating 345.0)
		(title "TheKillerAngels")
		(year 1974))

	([ontology_Class11276] of  Book

		(author [ontology_Class10176])
		(genre "Classics")
		(pages 12286)
		(popularity medium)
		(rating 410.0)
		(title "TheLastoftheMohicans")
		(year 1826))

	([ontology_Class11277] of  Book

		(author [ontology_Class10339])
		(genre "Historical")
		(pages 585)
		(popularity low)
		(rating 469.0)
		(title "TheRoadHome")
		(year 1995))

	([ontology_Class11278] of  Book

		(author [ontology_Class10050])
		(genre "Uncategorized")
		(pages 9938)
		(popularity medium)
		(rating 565.0)
		(title "CollectedFictions")
		(year 1975))

	([ontology_Class11279] of  Book

		(author [ontology_Class10340])
		(genre "Thriller")
		(pages 705)
		(popularity low)
		(rating 304.0)
		(title "ACoffinforDimitrios")
		(year 1939))

	([ontology_Class11280] of  Book

		(author [ontology_Class10181])
		(genre "Thriller")
		(pages 822)
		(popularity medium)
		(rating 501.0)
		(title "GaudyNight")
		(year 1935))

	([ontology_Class11281] of  Book

		(author [ontology_Class10183])
		(genre "Uncategorized")
		(pages 985)
		(popularity medium)
		(rating 116.0)
		(title "ThePostmanAlwaysRingsTwice")
		(year 1934))

	([ontology_Class11282] of  Book

		(author [ontology_Class10341])
		(genre "Thriller")
		(pages 1018)
		(popularity low)
		(rating 255.0)
		(title "DanceHalloftheDead")
		(year 1973))

	([ontology_Class11283] of  Book

		(author [ontology_Class10342])
		(genre "Uncategorized")
		(pages 1035)
		(popularity medium)
		(rating 180.0)
		(title "TheQuietAmerican")
		(year 1955))

	([ontology_Class11284] of  Book

		(author [ontology_Class10193])
		(genre "Uncategorized")
		(pages 1560)
		(popularity high)
		(rating 448.0)
		(title "TheGodfather")
		(year 1969))

	([ontology_Class11285] of  Book

		(author [ontology_Class10179])
		(genre "Thriller")
		(pages 1748)
		(popularity medium)
		(rating 304.0)
		(title "WhereAretheChildren?")
		(year 1975))

	([ontology_Class11286] of  Book

		(author [ontology_Class10186])
		(genre "Thriller")
		(pages 2143)
		(popularity medium)
		(rating 510.0)
		(title "ThePoet")
		(year 1996))

	([ontology_Class11287] of  Book

		(author [ontology_Class10343])
		(genre "Classics")
		(pages 2193)
		(popularity low)
		(rating 121.0)
		(title "TheGold-BugandOtherTales")
		(year 1843))

	([ontology_Class11288] of  Book

		(author [ontology_Class10125])
		(genre "Uncategorized")
		(pages 2578)
		(popularity medium)
		(rating 384.0)
		(title "TheDayoftheJackal")
		(year 1971))

	([ontology_Class11289] of  Book

		(author [ontology_Class10344])
		(genre "Thriller")
		(pages 2704)
		(popularity medium)
		(rating 285.0)
		(title "Fer-de-Lance")
		(year 1934))

	([ontology_Class11290] of  Book

		(author [ontology_Class10174])
		(genre "Uncategorized")
		(pages 4431)
		(popularity medium)
		(rating 259.0)
		(title "FromRussiaWithLove")
		(year 1957))

	([ontology_Class11291] of  Book

		(author [ontology_Class10237])
		(genre "Horror")
		(pages 5757)
		(popularity medium)
		(rating 480.0)
		(title "Relic")
		(year 1995))

	([ontology_Class11292] of  Book

		(author [ontology_Class10188])
		(genre "Uncategorized")
		(pages 6454)
		(popularity medium)
		(rating 320.0)
		(title "TheTalentedMr.Ripley")
		(year 1955))

	([ontology_Class11293] of  Book

		(author [ontology_Class10088])
		(genre "Thriller")
		(pages 6692)
		(popularity medium)
		(rating 206.0)
		(title "TheDaughterofTime")
		(year 1949))

	([ontology_Class11294] of  Book

		(author [ontology_Class10078])
		(genre "Classics")
		(pages 9484)
		(popularity high)
		(rating 672.0)
		(title "TheWomaninWhite")
		(year 1859))

	([ontology_Class11295] of  Book

		(author [ontology_Class10345])
		(genre "Historical")
		(pages 10365)
		(popularity high)
		(rating 498.0)
		(title "TheAlienist")
		(year 1994))

	([ontology_Class11296] of  Book

		(author [ontology_Class10189])
		(genre "Thriller")
		(pages 11018)
		(popularity high)
		(rating 424.0)
		(title "KillingFloor")
		(year 1997))

	([ontology_Class11297] of  Book

		(author [ontology_Class10346])
		(genre "Thriller")
		(pages 12717)
		(popularity high)
		(rating 528.0)
		(title "TheBoneCollector")
		(year 1997))

	([ontology_Class11298] of  Book

		(author [ontology_Class10347])
		(genre "Historical")
		(pages 1888)
		(popularity low)
		(rating 352.0)
		(title "TheFifthofMarch:AStoryoftheBostonMassacre")
		(year 1993))

	([ontology_Class11299] of  Book

		(author [ontology_Class10244])
		(genre "Uncategorized")
		(pages 1986)
		(popularity medium)
		(rating 144.0)
		(title "Einstein'sDreams")
		(year 1992))

	([ontology_Class11300] of  Book

		(author [ontology_Class10348])
		(genre "Romance")
		(pages 4256)
		(popularity medium)
		(rating 416.0)
		(title "WelcometoTemptation")
		(year 1996))

	([ontology_Class11301] of  Book

		(author [ontology_Class10349])
		(genre "Romance")
		(pages 1498)
		(popularity low)
		(rating 152.0)
		(title "BumMagnet")
		(year 1999))

	([ontology_Class11302] of  Book

		(author [ontology_Class10238])
		(genre "Horror")
		(pages 4600)
		(popularity medium)
		(rating 144.0)
		(title "TheStepfordWives")
		(year 1972))

	([ontology_Class11303] of  Book

		(author [ontology_Class10051])
		(genre "Uncategorized")
		(pages 3344)
		(popularity high)
		(rating 373.0)
		(title "TheMasterandMargarita")
		(year 1967))

	([ontology_Class11304] of  Book

		(author [ontology_Class10163])
		(genre "Classics")
		(pages 4044)
		(popularity high)
		(rating 307.0)
		(title "OntheRoad")
		(year 1955))

	([ontology_Class11305] of  Book

		(author [ontology_Class10056])
		(genre "Classics")
		(pages 4137)
		(popularity high)
		(rating 581.0)
		(title "InvisibleMan")
		(year 1952))

	([ontology_Class11306] of  Book

		(author [ontology_Class10350])
		(genre "Uncategorized")
		(pages 6339)
		(popularity medium)
		(rating 335.0)
		(title "ZorbatheGreek")
		(year 1946))

	([ontology_Class11307] of  Book

		(author [ontology_Class10351])
		(genre "Historical")
		(pages 1981)
		(popularity low)
		(rating 211.0)
		(title "AnnaofByzantium")
		(year 1999))

	([ontology_Class11308] of  Book

		(author [ontology_Class10352])
		(genre "Historical")
		(pages 3840)
		(popularity medium)
		(rating 240.0)
		(title "MyBrotherSamIsDead")
		(year 1974))

	([ontology_Class11309] of  Book

		(author [ontology_Class10353])
		(genre "Historical")
		(pages 3916)
		(popularity low)
		(rating 397.0)
		(title "ASongforSummer")
		(year 1997))

	([ontology_Class11310] of  Book

		(author [ontology_Class10354])
		(genre "Historical")
		(pages 6569)
		(popularity low)
		(rating 238.0)
		(title "ElizabethI:RedRoseoftheHouseofTudor,England,1544")
		(year 1999))

	([ontology_Class11311] of  Book

		(author [ontology_Class10355])
		(genre "Historical")
		(pages 6876)
		(popularity low)
		(rating 279.0)
		(title "Mara,DaughteroftheNile")
		(year 1953))

	([ontology_Class11312] of  Book

		(author [ontology_Class10150])
		(genre "Fantasy")
		(pages 2183)
		(popularity medium)
		(rating 320.0)
		(title "BloodofElves")
		(year 1994))

	([ontology_Class11313] of  Book

		(author [ontology_Class10130])
		(genre "Uncategorized")
		(pages 5732)
		(popularity high)
		(rating 204.0)
		(title "FearandLoathinginLasVegas")
		(year 1971))

	([ontology_Class11314] of  Book

		(author [ontology_Class10356])
		(genre "Thriller")
		(pages 7138)
		(popularity low)
		(rating 288.0)
		(title "IStillMissMyManButMyAimIsGettingBetter")
		(year 1996))

	([ontology_Class11315] of  Book

		(author [ontology_Class10357])
		(genre "Thriller")
		(pages 3061)
		(popularity low)
		(rating 240.0)
		(title "TheIceHouse")
		(year 1992))

	([ontology_Class11316] of  Book

		(author [ontology_Class10358])
		(genre "Thriller")
		(pages 3104)
		(popularity medium)
		(rating 337.0)
		(title "CrocodileontheSandbank")
		(year 1975))

	([ontology_Class11317] of  Book

		(author [ontology_Class10178])
		(genre "Thriller")
		(pages 4363)
		(popularity low)
		(rating 480.0)
		(title "APlaceofExecution")
		(year 1999))

	([ontology_Class11318] of  Book

		(author [ontology_Class10359])
		(genre "Romance")
		(pages 1023)
		(popularity low)
		(rating 365.0)
		(title "KirklandRevels")
		(year 1962))

	([ontology_Class11319] of  Book

		(author [ontology_Class10360])
		(genre "Classics")
		(pages 1139)
		(popularity medium)
		(rating 48.0)
		(title "TheMostDangerousGame")
		(year 1924))

	([ontology_Class11320] of  Book

		(author [ontology_Class10361])
		(genre "Horror")
		(pages 1502)
		(popularity low)
		(rating 312.0)
		(title "TheVampyreandOtherTalesoftheMacabre")
		(year 1819))

	([ontology_Class11321] of  Book

		(author [ontology_Class10362])
		(genre "Uncategorized")
		(pages 1564)
		(popularity low)
		(rating 254.0)
		(title "Asylum")
		(year 1996))

	([ontology_Class11322] of  Book

		(author [ontology_Class10026])
		(genre "Horror")
		(pages 1850)
		(popularity medium)
		(rating 355.0)
		(title "LostSouls")
		(year 1992))

	([ontology_Class11323] of  Book

		(author [ontology_Class10027])
		(genre "Horror")
		(pages 2093)
		(popularity low)
		(rating 384.0)
		(title "InaGlassDarkly")
		(year 1872))

	([ontology_Class11324] of  Book

		(author [ontology_Class10363])
		(genre "Classics")
		(pages 2550)
		(popularity low)
		(rating 272.0)
		(title "ThePrivateMemoirsandConfessionsofaJustifiedSinner")
		(year 1824))

	([ontology_Class11325] of  Book

		(author [ontology_Class10364])
		(genre "Classics")
		(pages 2986)
		(popularity medium)
		(rating 455.0)
		(title "LadyAudley'sSecret")
		(year 1862))

	([ontology_Class11326] of  Book

		(author [ontology_Class10240])
		(genre "Short Stories")
		(pages 2998)
		(popularity medium)
		(rating 302.0)
		(title "TheLotteryandOtherStories")
		(year 1949))

	([ontology_Class11327] of  Book

		(author [ontology_Class10365])
		(genre "Horror")
		(pages 3575)
		(popularity low)
		(rating 568.0)
		(title "CollectedGhostStories")
		(year 1931))

	([ontology_Class11328] of  Book

		(author [ontology_Class10133])
		(genre "Fantasy")
		(pages 3599)
		(popularity low)
		(rating 1173.0)
		(title "TheGormenghastNovels")
		(year 1959))

	([ontology_Class11329] of  Book

		(author [ontology_Class10366])
		(genre "Romance")
		(pages 3935)
		(popularity medium)
		(rating 319.0)
		(title "Tremetrisoprailcielo")
		(year 1992))

	([ontology_Class11330] of  Book

		(author [ontology_Class10367])
		(genre "Uncategorized")
		(pages 1497)
		(popularity low)
		(rating 180.0)
		(title "Lizard")
		(year 1993))

	([ontology_Class11331] of  Book

		(author [ontology_Class10368])
		(genre "Horror")
		(pages 1740)
		(popularity low)
		(rating 222.0)
		(title "JapaneseTalesofMysteryImagination")
		(year 1956))

	([ontology_Class11332] of  Book

		(author [ontology_Class10369])
		(genre "Uncategorized")
		(pages 1935)
		(popularity medium)
		(rating 211.0)
		(title "TheSamurai'sGarden")
		(year 1994))

	([ontology_Class11333] of  Book

		(author [ontology_Class10370])
		(genre "Uncategorized")
		(pages 6264)
		(popularity medium)
		(rating 970.0)
		(title "Musashi")
		(year 1935))

	([ontology_Class11334] of  Book

		(author [ontology_Class10371])
		(genre "Romance")
		(pages 3385)
		(popularity low)
		(rating 381.0)
		(title "TheLady'sTutor")
		(year 1999))

	([ontology_Class11335] of  Book

		(author [ontology_Class10372])
		(genre "Uncategorized")
		(pages 3944)
		(popularity medium)
		(rating 448.0)
		(title "AnotherCountry")
		(year 1962))

	([ontology_Class11336] of  Book

		(author [ontology_Class10373])
		(genre "Historical")
		(pages 4723)
		(popularity medium)
		(rating 347.0)
		(title "MemoirsofHadrian")
		(year 1951))

	([ontology_Class11337] of  Book

		(author [ontology_Class10374])
		(genre "Classics")
		(pages 7934)
		(popularity medium)
		(rating 351.0)
		(title "BridesheadRevisited:TheSacredandProfaneMemoriesofCaptainCharlesRyder")
		(year 1945))

	([ontology_Class11338] of  Book

		(author [ontology_Class10128])
		(genre "Uncategorized")
		(pages 525)
		(popularity low)
		(rating 296.0)
		(title "TheBell")
		(year 1958))

	([ontology_Class11339] of  Book

		(author [ontology_Class10375])
		(genre "Thriller")
		(pages 566)
		(popularity low)
		(rating 448.0)
		(title "SheWalksTheseHills")
		(year 1994))

	([ontology_Class11340] of  Book

		(author [ontology_Class10376])
		(genre "Fantasy")
		(pages 594)
		(popularity low)
		(rating 240.0)
		(title "TheOwlService")
		(year 1967))

	([ontology_Class11341] of  Book

		(author [ontology_Class10202])
		(genre "Classics")
		(pages 598)
		(popularity medium)
		(rating 592.0)
		(title "DoctorZhivago")
		(year 1957))

	([ontology_Class11342] of  Book

		(author [ontology_Class10377])
		(genre "Uncategorized")
		(pages 616)
		(popularity low)
		(rating 288.0)
		(title "TheMagnificentAmbersons")
		(year 1918))

	([ontology_Class11343] of  Book

		(author [ontology_Class10378])
		(genre "Fantasy")
		(pages 663)
		(popularity low)
		(rating 384.0)
		(title "Silverlock")
		(year 1949))

	([ontology_Class11344] of  Book

		(author [ontology_Class10379])
		(genre "Uncategorized")
		(pages 674)
		(popularity low)
		(rating 288.0)
		(title "AliandNino")
		(year 1937))

	([ontology_Class11345] of  Book

		(author [ontology_Class10380])
		(genre "Uncategorized")
		(pages 802)
		(popularity medium)
		(rating 232.0)
		(title "TheEnchantedApril")
		(year 1922))

	([ontology_Class11346] of  Book

		(author [ontology_Class10381])
		(genre "Fantasy")
		(pages 921)
		(popularity low)
		(rating 590.0)
		(title "FreedomandNecessity")
		(year 1997))

	([ontology_Class11347] of  Book

		(author [ontology_Class10382])
		(genre "Fantasy")
		(pages 1426)
		(popularity low)
		(rating 1040.0)
		(title "Islandia")
		(year 1942))

	([ontology_Class11348] of  Book

		(author [ontology_Class10383])
		(genre "Historical")
		(pages 1554)
		(popularity low)
		(rating 768.0)
		(title "Q")
		(year 1999))

	([ontology_Class11349] of  Book

		(author [ontology_Class10384])
		(genre "Classics")
		(pages 2102)
		(popularity medium)
		(rating 189.0)
		(title "PicnicatHangingRock")
		(year 1967))

	([ontology_Class11350] of  Book

		(author [ontology_Class10385])
		(genre "Classics")
		(pages 3322)
		(popularity low)
		(rating 359.0)
		(title "Scaramouche")
		(year 1921))

	([ontology_Class11351] of  Book

		(author [ontology_Class10386])
		(genre "Historical")
		(pages 7358)
		(popularity medium)
		(rating 648.0)
		(title "HistoryofthePeloponnesianWar")
		(year -411))

	([ontology_Class11352] of  Book

		(author [ontology_Class10387])
		(genre "Religious")
		(pages 1984)
		(popularity low)
		(rating 426.0)
		(title "Sophie'sHeart")
		(year 1995))

	([ontology_Class11353] of  Book

		(author [ontology_Class10388])
		(genre "Uncategorized")
		(pages 3485)
		(popularity medium)
		(rating 413.0)
		(title "AtHomeinMitford")
		(year 1994))

	([ontology_Class11354] of  Book

		(author [ontology_Class10389])
		(genre "Uncategorized")
		(pages 2163)
		(popularity medium)
		(rating 512.0)
		(title "Christy")
		(year 1967))

	([ontology_Class11355] of  Book

		(author [ontology_Class10390])
		(genre "Uncategorized")
		(pages 2248)
		(popularity low)
		(rating 180.0)
		(title "TheOptimist'sDaughter")
		(year 1972))

	([ontology_Class11356] of  Book

		(author [ontology_Class10245])
		(genre "Historical")
		(pages 2359)
		(popularity medium)
		(rating 896.0)
		(title "Scarlett")
		(year 1991))

	([ontology_Class11357] of  Book

		(author [ontology_Class10391])
		(genre "Uncategorized")
		(pages 2621)
		(popularity medium)
		(rating 192.0)
		(title "TobaccoRoad")
		(year 1932))

	([ontology_Class11358] of  Book

		(author [ontology_Class10392])
		(genre "Uncategorized")
		(pages 2671)
		(popularity medium)
		(rating 272.0)
		(title "CharmsfortheEasyLife")
		(year 1993))

	([ontology_Class11359] of  Book

		(author [ontology_Class10393])
		(genre "Uncategorized")
		(pages 2931)
		(popularity medium)
		(rating 242.0)
		(title "TheMoviegoer")
		(year 1961))

	([ontology_Class11360] of  Book

		(author [ontology_Class10394])
		(genre "Uncategorized")
		(pages 3187)
		(popularity medium)
		(rating 256.0)
		(title "ALessonBeforeDying")
		(year 1993))

	([ontology_Class11361] of  Book

		(author [ontology_Class10395])
		(genre "Uncategorized")
		(pages 4982)
		(popularity medium)
		(rating 644.0)
		(title "LookHomeward,Angel")
		(year 1929))

	([ontology_Class11362] of  Book

		(author [ontology_Class10396])
		(genre "Uncategorized")
		(pages 9641)
		(popularity medium)
		(rating 439.0)
		(title "AlltheKing'sMen")
		(year 1946))

	([ontology_Class11363] of  Book

		(author [ontology_Class10201])
		(genre "Uncategorized")
		(pages 13237)
		(popularity high)
		(rating 383.0)
		(title "DivineSecretsoftheYa-YaSisterhood")
		(year 1996))

	([ontology_Class11364] of  Book

		(author [ontology_Class10224])
		(genre "Romance")
		(pages 2725)
		(popularity medium)
		(rating 430.0)
		(title "TheFlameandtheFlower")
		(year 1972))

	([ontology_Class11365] of  Book

		(author [ontology_Class10219])
		(genre "Classics")
		(pages 2802)
		(popularity medium)
		(rating 185.0)
		(title "ThreeMeninaBoat")
		(year 1889))

	([ontology_Class11366] of  Book

		(author [ontology_Class10040])
		(genre "Fantasy")
		(pages 10535)
		(popularity high)
		(rating 211.0)
		(title "AWrinkleinTime")
		(year 1962))

	([ontology_Class11367] of  Book

		(author [ontology_Class10397])
		(genre "Fantasy")
		(pages 2934)
		(popularity medium)
		(rating 475.0)
		(title "TheHollowHills")
		(year 1973))

	([ontology_Class11368] of  Book

		(author [ontology_Class10119])
		(genre "Uncategorized")
		(pages 2967)
		(popularity medium)
		(rating 369.0)
		(title "MyNameIsAsherLev")
		(year 1972))

	([ontology_Class11369] of  Book

		(author [ontology_Class10173])
		(genre "Uncategorized")
		(pages 852)
		(popularity medium)
		(rating 224.0)
		(title "TheBridgesofMadisonCounty")
		(year 1992))

	([ontology_Class11370] of  Book

		(author [ontology_Class10060])
		(genre "Classics")
		(pages 1370)
		(popularity high)
		(rating 112.0)
		(title "OfMiceandMen")
		(year 1937))

	([ontology_Class11371] of  Book

		(author [ontology_Class10154])
		(genre "Uncategorized")
		(pages 1420)
		(popularity high)
		(rating 365.0)
		(title "HouseofSandandFog")
		(year 1999))

	([ontology_Class11372] of  Book

		(author [ontology_Class10140])
		(genre "Classics")
		(pages 1481)
		(popularity high)
		(rating 245.0)
		(title "BlackBeauty")
		(year 1877))

	([ontology_Class11373] of  Book

		(author [ontology_Class10006])
		(genre "Classics")
		(pages 1507)
		(popularity high)
		(rating 409.0)
		(title "SenseandSensibility")
		(year 1811))

	([ontology_Class11374] of  Book

		(author [ontology_Class10071])
		(genre "Classics")
		(pages 1776)
		(popularity high)
		(rating 273.0)
		(title "Frankenstein")
		(year 1818))

	([ontology_Class11375] of  Book

		(author [ontology_Class10011])
		(genre "Fantasy")
		(pages 549)
		(popularity high)
		(rating 366.0)
		(title "TheHobbit")
		(year 1937))

	([ontology_Class11376] of  Book

		(author [ontology_Class10005])
		(genre "Classics")
		(pages 2029)
		(popularity high)
		(rating 441.0)
		(title "Rebecca")
		(year 1938))

	([ontology_Class11377] of  Book

		(author [ontology_Class10306])
		(genre "Classics")
		(pages 2596)
		(popularity high)
		(rating 275.0)
		(title "Slaughterhouse-Five")
		(year 1969))

	([ontology_Class11378] of  Book

		(author [ontology_Class10090])
		(genre "Uncategorized")
		(pages 2523)
		(popularity medium)
		(rating 440.0)
		(title "RabbitRedux")
		(year 1971))

	([ontology_Class11379] of  Book

		(author [ontology_Class10089])
		(genre "Uncategorized")
		(pages 2457)
		(popularity medium)
		(rating 263.0)
		(title "OrdinaryPeople")
		(year 1976))

	([ontology_Class11380] of  Book

		(author [ontology_Class10075])
		(genre "Classics")
		(pages 2869)
		(popularity high)
		(rating 182.0)
		(title "LordoftheFlies")
		(year 1954))

	([ontology_Class11381] of  Book

		(author [ontology_Class10398])
		(genre "Uncategorized")
		(pages 2930)
		(popularity high)
		(rating 465.0)
		(title "She'sComeUndone")
		(year 1992))

	([ontology_Class11382] of  Book

		(author [ontology_Class10265])
		(genre "Classics")
		(pages 728)
		(popularity high)
		(rating 331.0)
		(title "TheSecretGarden")
		(year 1911))

	([ontology_Class11383] of  Book

		(author [ontology_Class10287])
		(genre "Uncategorized")
		(pages 2799)
		(popularity medium)
		(rating 192.0)
		(title "Sula")
		(year 1973))

	([ontology_Class11384] of  Book

		(author [ontology_Class10115])
		(genre "Horror")
		(pages 2819)
		(popularity medium)
		(rating 567.0)
		(title "GhostStory")
		(year 1979))

	([ontology_Class11385] of  Book

		(author [ontology_Class10107])
		(genre "Historical")
		(pages 3102)
		(popularity high)
		(rating 336.0)
		(title "TheRedTent")
		(year 1997))

	([ontology_Class11386] of  Book

		(author [ontology_Class10116])
		(genre "Historical")
		(pages 2917)
		(popularity high)
		(rating 288.0)
		(title "RollofThunder,HearMyCry")
		(year 1976))

	([ontology_Class11387] of  Book

		(author [ontology_Class10117])
		(genre "Uncategorized")
		(pages 2917)
		(popularity medium)
		(rating 462.0)
		(title "TheOtherSideofMidnight")
		(year 1973))

	([ontology_Class11388] of  Book

		(author [ontology_Class10118])
		(genre "Historical")
		(pages 2921)
		(popularity medium)
		(rating 1042.0)
		(title "WarandRemembrance")
		(year 1978))

	([ontology_Class11389] of  Book

		(author [ontology_Class10325])
		(genre "Young")
		(pages 6633)
		(popularity medium)
		(rating 690.0)
		(title "KissedbyanAngel/ThePowerofLove/Soulmates")
		(year 1995))

	([ontology_Class11390] of  Book

		(author [ontology_Class10074])
		(genre "Classics")
		(pages 3875)
		(popularity high)
		(rating 277.0)
		(title "TheCatcherintheRye")
		(year 1951))

	([ontology_Class11391] of  Book

		(author [ontology_Class10072])
		(genre "Uncategorized")
		(pages 2044)
		(popularity high)
		(rating 311.0)
		(title "FlowersforAlgernon")
		(year 1966))

	([ontology_Class11392] of  Book

		(author [ontology_Class10261])
		(genre "Classics")
		(pages 3956)
		(popularity high)
		(rating 175.0)
		(title "Fahrenheit451")
		(year 1953))

	([ontology_Class11393] of  Book

		(author [ontology_Class10121])
		(genre "Uncategorized")
		(pages 3228)
		(popularity medium)
		(rating 569.0)
		(title "AngleofRepose")
		(year 1971))

	([ontology_Class11394] of  Book

		(author [ontology_Class10317])
		(genre "Fantasy")
		(pages 1666)
		(popularity high)
		(rating 311.0)
		(title "Sabriel")
		(year 1995))

	([ontology_Class11395] of  Book

		(author [ontology_Class10399])
		(genre "Fantasy")
		(pages 3312)
		(popularity medium)
		(rating 256.0)
		(title "Beauty:ARetellingoftheStoryofBeautyandtheBeast")
		(year 1978))

	([ontology_Class11396] of  Book

		(author [ontology_Class10122])
		(genre "Young")
		(pages 3442)
		(popularity medium)
		(rating 272.0)
		(title "TheDarkIsRising")
		(year 1973))

	([ontology_Class11397] of  Book

		(author [ontology_Class10149])
		(genre "Classics")
		(pages 2621)
		(popularity high)
		(rating 272.0)
		(title "WheretheRedFernGrows")
		(year 1961))

	([ontology_Class11398] of  Book

		(author [ontology_Class10335])
		(genre "Thriller")
		(pages 3592)
		(popularity medium)
		(rating 197.0)
		(title "AMorbidTasteforBones")
		(year 1977))

	([ontology_Class11399] of  Book

		(author [ontology_Class10008])
		(genre "Classics")
		(pages 2702)
		(popularity high)
		(rating 496.0)
		(title "ATreeGrowsinBrooklyn")
		(year 1943))

	([ontology_Class11400] of  Book

		(author [ontology_Class10076])
		(genre "Classics")
		(pages 5666)
		(popularity high)
		(rating 192.0)
		(title "TheOutsiders")
		(year 1967))

	([ontology_Class11401] of  Book

		(author [ontology_Class10123])
		(genre "Uncategorized")
		(pages 3892)
		(popularity medium)
		(rating 592.0)
		(title "KaneandAbel")
		(year 1979))

	([ontology_Class11402] of  Book

		(author [ontology_Class10120])
		(genre "Fantasy")
		(pages 2076)
		(popularity medium)
		(rating 726.0)
		(title "TheSwordofShannara")
		(year 1977))

	([ontology_Class11403] of  Book

		(author [ontology_Class10167])
		(genre "Fantasy")
		(pages 2217)
		(popularity medium)
		(rating 480.0)
		(title "LordFoul'sBane")
		(year 1977))

	([ontology_Class11404] of  Book

		(author [ontology_Class10007])
		(genre "Classics")
		(pages 3837)
		(popularity high)
		(rating 449.0)
		(title "LittleWomen")
		(year 1868))

	([ontology_Class11405] of  Book

		(author [ontology_Class10014])
		(genre "Uncategorized")
		(pages 9367)
		(popularity high)
		(rating 434.0)
		(title "MemoirsofaGeisha")
		(year 1997))

	([ontology_Class11406] of  Book

		(author [ontology_Class10049])
		(genre "Uncategorized")
		(pages 4314)
		(popularity medium)
		(rating 165.0)
		(title "InvisibleCities")
		(year 1972))

	([ontology_Class11407] of  Book

		(author [ontology_Class10124])
		(genre "Uncategorized")
		(pages 4509)
		(popularity medium)
		(rating 776.0)
		(title "Gravity'sRainbow")
		(year 1973))

	([ontology_Class11408] of  Book

		(author [ontology_Class10057])
		(genre "Thriller")
		(pages 5211)
		(popularity high)
		(rating 182.0)
		(title "TheWestingGame")
		(year 1978))

	([ontology_Class11409] of  Book

		(author [ontology_Class10292])
		(genre "Horror")
		(pages 5355)
		(popularity high)
		(rating 402.0)
		(title "TheDeadZone")
		(year 1979))

	([ontology_Class11410] of  Book

		(author [ontology_Class10400])
		(genre "Uncategorized")
		(pages 5802)
		(popularity high)
		(rating 339.0)
		(title "EyeoftheNeedle")
		(year 1978))

	([ontology_Class11411] of  Book

		(author [ontology_Class10125])
		(genre "Uncategorized")
		(pages 5804)
		(popularity medium)
		(rating 384.0)
		(title "TheDayoftheJackal")
		(year 1971))

	([ontology_Class11412] of  Book

		(author [ontology_Class10311])
		(genre "Thriller")
		(pages 3071)
		(popularity high)
		(rating 320.0)
		(title "OnefortheMoney")
		(year 1994))

	([ontology_Class11413] of  Book

		(author [ontology_Class10032])
		(genre "Fantasy")
		(pages 5940)
		(popularity high)
		(rating 139.0)
		(title "TuckEverlasting")
		(year 1975))

	([ontology_Class11414] of  Book

		(author [ontology_Class10126])
		(genre "Historical")
		(pages 5898)
		(popularity medium)
		(rating 345.0)
		(title "TheKillerAngels")
		(year 1974))

	([ontology_Class11415] of  Book

		(author [ontology_Class10291])
		(genre "Fantasy")
		(pages 3318)
		(popularity high)
		(rating 836.0)
		(title "Wizard'sFirstRule")
		(year 1994))

	([ontology_Class11416] of  Book

		(author [ontology_Class10127])
		(genre "Uncategorized")
		(pages 6256)
		(popularity medium)
		(rating 320.0)
		(title "Ragtime")
		(year 1975))

	([ontology_Class11417] of  Book

		(author [ontology_Class10401])
		(genre "Fantasy")
		(pages 2953)
		(popularity high)
		(rating 848.0)
		(title "AGameofThrones")
		(year 1996))

	([ontology_Class11418] of  Book

		(author [ontology_Class10128])
		(genre "Uncategorized")
		(pages 6594)
		(popularity low)
		(rating 408.0)
		(title "TheBlackPrince")
		(year 1973))

	([ontology_Class11419] of  Book

		(author [ontology_Class10129])
		(genre "Horror")
		(pages 7827)
		(popularity high)
		(rating 385.0)
		(title "TheExorcist")
		(year 1971))

	([ontology_Class11420] of  Book

		(author [ontology_Class10039])
		(genre "Young")
		(pages 8233)
		(popularity high)
		(rating 128.0)
		(title "BridgetoTerabithia")
		(year 1977))

	([ontology_Class11421] of  Book

		(author [ontology_Class10073])
		(genre "Classics")
		(pages 3469)
		(popularity high)
		(rating 122.0)
		(title "AnimalFarm")
		(year 1945))

	([ontology_Class11422] of  Book

		(author [ontology_Class10143])
		(genre "Uncategorized")
		(pages 8400)
		(popularity medium)
		(rating 562.0)
		(title "Sophie'sChoice")
		(year 1979))

	([ontology_Class11423] of  Book

		(author [ontology_Class10130])
		(genre "Uncategorized")
		(pages 9427)
		(popularity high)
		(rating 204.0)
		(title "FearandLoathinginLasVegas")
		(year 1971))

	([ontology_Class11424] of  Book

		(author [ontology_Class10034])
		(genre "Uncategorized")
		(pages 6444)
		(popularity high)
		(rating 176.0)
		(title "TheBadBeginning")
		(year 1999))

	([ontology_Class11425] of  Book

		(author [ontology_Class10063])
		(genre "Historical")
		(pages 3845)
		(popularity high)
		(rating 850.0)
		(title "Outlander")
		(year 1991))

	([ontology_Class11426] of  Book

		(author [ontology_Class10138])
		(genre "Historical")
		(pages 13180)
		(popularity high)
		(rating 729.0)
		(title "Roots:TheSagaofanAmericanFamily")
		(year 1976))

	([ontology_Class11427] of  Book

		(author [ontology_Class10296])
		(genre "Uncategorized")
		(pages 14205)
		(popularity high)
		(rating 692.0)
		(title "TheThornBirds")
		(year 1977))

	([ontology_Class11428] of  Book

		(author [ontology_Class10309])
		(genre "Uncategorized")
		(pages 14335)
		(popularity high)
		(rating 610.0)
		(title "TheWorldAccordingtoGarp")
		(year 1978))

	([ontology_Class11429] of  Book

		(author [ontology_Class10036])
		(genre "Fantasy")
		(pages 15167)
		(popularity high)
		(rating 396.0)
		(title "TheNeverendingStory")
		(year 1979))

	([ontology_Class11430] of  Book

		(author [ontology_Class10402])
		(genre "Horror")
		(pages 18245)
		(popularity high)
		(rating 342.0)
		(title "InterviewwiththeVampire")
		(year 1976))

	([ontology_Class11431] of  Book

		(author [ontology_Class10038])
		(genre "Fantasy")
		(pages 20838)
		(popularity high)
		(rating 398.0)
		(title "ThePrincessBride")
		(year 1973))

	([ontology_Class11432] of  Book

		(author [ontology_Class10077])
		(genre "Classics")
		(pages 4119)
		(popularity high)
		(rating 180.0)
		(title "TheGreatGatsby")
		(year 1925))

	([ontology_Class11433] of  Book

		(author [ontology_Class10068])
		(genre "Classics")
		(pages 26814)
		(popularity high)
		(rating 478.0)
		(title "WatershipDown")
		(year 1972))

	([ontology_Class11434] of  Book

		(author [ontology_Class10016])
		(genre "Classics")
		(pages 2520)
		(popularity high)
		(rating 1037.0)
		(title "GonewiththeWind")
		(year 1936))

	([ontology_Class11435] of  Book

		(author [ontology_Class10156])
		(genre "Fantasy")
		(pages 16668)
		(popularity high)
		(rating 406.0)
		(title "Wicked:TheLifeandTimesoftheWickedWitchoftheWest")
		(year 1995))

	([ontology_Class11436] of  Book

		(author [ontology_Class10191])
		(genre "Classics")
		(pages 1048)
		(popularity high)
		(rating 311.0)
		(title "TreasureIsland")
		(year 1882))

	([ontology_Class11437] of  Book

		(author [ontology_Class10403])
		(genre "Young")
		(pages 2636)
		(popularity low)
		(rating 208.0)
		(title "GuitarHighwayRose")
		(year 1997))

	([ontology_Class11438] of  Book

		(author [ontology_Class10067])
		(genre "Fantasy")
		(pages 4127)
		(popularity high)
		(rating 399.0)
		(title "TheGoldenCompass")
		(year 1995))

	([ontology_Class11439] of  Book

		(author [ontology_Class10404])
		(genre "Romance")
		(pages 375)
		(popularity low)
		(rating 291.0)
		(title "MoonlightWhiskey"))

	([ontology_Class11440] of  Book

		(author [ontology_Class10052])
		(genre "Young")
		(pages 7273)
		(popularity high)
		(rating 280.0)
		(title "WalkTwoMoons")
		(year 1994))

	([ontology_Class11441] of  Book

		(author [ontology_Class10405])
		(genre "Romance")
		(pages 936)
		(popularity low)
		(rating 384.0)
		(title "APirate'sLove")
		(year 1978))

	([ontology_Class11442] of  Book

		(author [ontology_Class10406])
		(genre "Romance")
		(pages 1098)
		(popularity low)
		(rating 415.0)
		(title "APlacetoCallHome")
		(year 1997))

	([ontology_Class11443] of  Book

		(author [ontology_Class10241])
		(genre "Uncategorized")
		(pages 1349)
		(popularity medium)
		(rating 343.0)
		(title "ICapturetheCastle")
		(year 1948))

	([ontology_Class11444] of  Book

		(author [ontology_Class10245])
		(genre "Historical")
		(pages 1211)
		(popularity medium)
		(rating 896.0)
		(title "Scarlett")
		(year 1991))

	([ontology_Class11445] of  Book

		(author [ontology_Class10407])
		(genre "Romance")
		(pages 1592)
		(popularity low)
		(rating 372.0)
		(title "EverythingandtheMoon")
		(year 1997))

	([ontology_Class11446] of  Book

		(author [ontology_Class10408])
		(genre "Romance")
		(pages 1740)
		(popularity medium)
		(rating 578.0)
		(title "Rachel'sHoliday")
		(year 1997))

	([ontology_Class11447] of  Book

		(author [ontology_Class10200])
		(genre "Uncategorized")
		(pages 2161)
		(popularity high)
		(rating 376.0)
		(title "WheretheHeartIs")
		(year 1995))

	([ontology_Class11448] of  Book

		(author [ontology_Class10409])
		(genre "Uncategorized")
		(pages 745)
		(popularity medium)
		(rating 576.0)
		(title "TheGroundBeneathHerFeet")
		(year 1999))

	([ontology_Class11449] of  Book

		(author [ontology_Class10410])
		(genre "Young")
		(pages 851)
		(popularity low)
		(rating 240.0)
		(title "WhenJeffComesHome")
		(year 1999))

	([ontology_Class11450] of  Book

		(author [ontology_Class10411])
		(genre "Historical")
		(pages 994)
		(popularity low)
		(rating 472.0)
		(title "TheJewelintheCrown")
		(year 1966))

	([ontology_Class11451] of  Book

		(author [ontology_Class10412])
		(genre "Uncategorized")
		(pages 945)
		(popularity high)
		(rating 464.0)
		(title "TheDeepEndoftheOcean")
		(year 1996))

	([ontology_Class11452] of  Book

		(author [ontology_Class10413])
		(genre "Classics")
		(pages 1149)
		(popularity medium)
		(rating 368.0)
		(title "TheJungleBooks")
		(year 1894))

	([ontology_Class11453] of  Book

		(author [ontology_Class10321])
		(genre "Fantasy")
		(pages 4803)
		(popularity high)
		(rating 460.0)
		(title "Assassin'sApprentice")
		(year 1995))

	([ontology_Class11454] of  Book

		(author [ontology_Class10017])
		(genre "Fantasy")
		(pages 5021)
		(popularity high)
		(rating 221.0)
		(title "TheMagician'sNephew")
		(year 1955))

	([ontology_Class11455] of  Book

		(author [ontology_Class10012])
		(genre "Romance")
		(pages 5204)
		(popularity medium)
		(rating 352.0)
		(title "BridgetJones:TheEdgeofReason")
		(year 1999))

	([ontology_Class11456] of  Book

		(author [ontology_Class10029])
		(genre "Fantasy")
		(pages 5464)
		(popularity medium)
		(rating 294.0)
		(title "TheLastUnicorn")
		(year 1968))

	([ontology_Class11457] of  Book

		(author [ontology_Class10414])
		(genre "Horror")
		(pages 6411)
		(popularity medium)
		(rating 1305.0)
		(title "TheCompleteWorksofH.P.Lovecraft")
		(year 1978))

	([ontology_Class11458] of  Book

		(author [ontology_Class10092])
		(genre "Historical")
		(pages 3079)
		(popularity medium)
		(rating 958.0)
		(title "TheFarPavilions")
		(year 1978))

	([ontology_Class11459] of  Book

		(author [ontology_Class10415])
		(genre "Classics")
		(pages 4370)
		(popularity medium)
		(rating 376.0)
		(title "APassagetoIndia")
		(year 1924))

	([ontology_Class11460] of  Book

		(author [ontology_Class10095])
		(genre "Uncategorized")
		(pages 2881)
		(popularity medium)
		(rating 283.0)
		(title "TheCollector")
		(year 1963))

	([ontology_Class11461] of  Book

		(author [ontology_Class10416])
		(genre "Romance")
		(pages 2550)
		(popularity low)
		(rating 384.0)
		(title "TheSilverDevil")
		(year 1978))

	([ontology_Class11462] of  Book

		(author [ontology_Class10028])
		(genre "Classics")
		(pages 17192)
		(popularity high)
		(rating 488.0)
		(title "Dracula")
		(year 1897))

	([ontology_Class11463] of  Book

		(author [ontology_Class10013])
		(genre "Thriller")
		(pages 2663)
		(popularity high)
		(rating 306.0)
		(title "NakedinDeath")
		(year 1995))

	([ontology_Class11464] of  Book

		(author [ontology_Class10001])
		(genre "Classics")
		(pages 19579)
		(popularity high)
		(rating 288.0)
		(title "BraveNewWorld")
		(year 1932))

	([ontology_Class11465] of  Book

		(author [ontology_Class10417])
		(genre "Romance")
		(pages 2872)
		(popularity medium)
		(rating 379.0)
		(title "TheSecret")
		(year 1992))

	([ontology_Class11466] of  Book

		(author [ontology_Class10114])
		(genre "Fantasy")
		(pages 11128)
		(popularity high)
		(rating 256.0)
		(title "ThePhantomTollbooth")
		(year 1961))

	([ontology_Class11467] of  Book

		(author [ontology_Class10061])
		(genre "Classics")
		(pages 11474)
		(popularity high)
		(rating 327.0)
		(title "TheAdventuresofHuckleberryFinn")
		(year 1884))

	([ontology_Class11468] of  Book

		(author [ontology_Class10216])
		(genre "Classics")
		(pages 12073)
		(popularity high)
		(rating 880.0)
		(title "TheCompleteGrimm'sFairyTales")
		(year 1812))

	([ontology_Class11469] of  Book

		(author [ontology_Class10113])
		(genre "Classics")
		(pages 15449)
		(popularity high)
		(rating 239.0)
		(title "Alice'sAdventuresinWonderlandThroughtheLooking-Glass")
		(year 1872))

	([ontology_Class11470] of  Book

		(author [ontology_Class10418])
		(genre "Uncategorized")
		(pages 766)
		(popularity low)
		(rating 239.0)
		(title "Holiday")
		(year 1974))

	([ontology_Class11471] of  Book

		(author [ontology_Class10419])
		(genre "Uncategorized")
		(pages 861)
		(popularity low)
		(rating 597.0)
		(title "Saville")
		(year 1976))

	([ontology_Class11472] of  Book

		(author [ontology_Class10420])
		(genre "Uncategorized")
		(pages 1112)
		(popularity low)
		(rating 240.0)
		(title "TheElectedMember")
		(year 1969))

	([ontology_Class11473] of  Book

		(author [ontology_Class10421])
		(genre "Uncategorized")
		(pages 1320)
		(popularity low)
		(rating 336.0)
		(title "G.")
		(year 1972))

	([ontology_Class11474] of  Book

		(author [ontology_Class10422])
		(genre "Uncategorized")
		(pages 2362)
		(popularity low)
		(rating 384.0)
		(title "HowLateitWas,HowLate")
		(year 1994))

	([ontology_Class11475] of  Book

		(author [ontology_Class10423])
		(genre "Historical")
		(pages 3310)
		(popularity low)
		(rating 630.0)
		(title "SacredHunger")
		(year 1992))

	([ontology_Class11476] of  Book

		(author [ontology_Class10315])
		(genre "Uncategorized")
		(pages 5680)
		(popularity medium)
		(rating 277.0)
		(title "TheGhostRoad")
		(year 1995))

	([ontology_Class11477] of  Book

		(author [ontology_Class10058])
		(genre "Classics")
		(pages 2399)
		(popularity high)
		(rating 219.0)
		(title "TheirEyesWereWatchingGod")
		(year 1937))

	([ontology_Class11478] of  Book

		(author [ontology_Class10235])
		(genre "Horror")
		(pages 799)
		(popularity low)
		(rating 206.0)
		(title "TheSurvivor")
		(year 1976))

	([ontology_Class11479] of  Book

		(author [ontology_Class10424])
		(genre "Thriller")
		(pages 830)
		(popularity low)
		(rating 352.0)
		(title "HouseofManyShadows")
		(year 1974))

	([ontology_Class11480] of  Book

		(author [ontology_Class10375])
		(genre "Thriller")
		(pages 846)
		(popularity low)
		(rating 448.0)
		(title "SheWalksTheseHills")
		(year 1994))

	([ontology_Class11481] of  Book

		(author [ontology_Class10425])
		(genre "Young")
		(pages 878)
		(popularity low)
		(rating 192.0)
		(title "DownaDarkHall")
		(year 1974))

	([ontology_Class11482] of  Book

		(author [ontology_Class10027])
		(genre "Horror")
		(pages 2356)
		(popularity medium)
		(rating 108.0)
		(title "Carmilla")
		(year 1872))

	([ontology_Class11483] of  Book

		(author [ontology_Class10037])
		(genre "Fantasy")
		(pages 1539)
		(popularity medium)
		(rating 253.0)
		(title "TheHighKing")
		(year 1968))

	([ontology_Class11484] of  Book

		(author [ontology_Class10426])
		(genre "Young")
		(pages 1144)
		(popularity low)
		(rating 214.0)
		(title "GhostsIHaveBeen")
		(year 1977))

	([ontology_Class11485] of  Book

		(author [ontology_Class10214])
		(genre "Fantasy")
		(pages 1603)
		(popularity low)
		(rating 280.0)
		(title "ThePerilousGard")
		(year 1974))

	([ontology_Class11486] of  Book

		(author [ontology_Class10043])
		(genre "Short Stories")
		(pages 2858)
		(popularity medium)
		(rating 128.0)
		(title "TheBloodyChamberandOtherStories")
		(year 1979))

	([ontology_Class11487] of  Book

		(author [ontology_Class10160])
		(genre "Uncategorized")
		(pages 4212)
		(popularity medium)
		(rating 628.0)
		(title "FinnegansWake")
		(year 1939))

	([ontology_Class11488] of  Book

		(author [ontology_Class10427])
		(genre "Classics")
		(pages 4394)
		(popularity medium)
		(rating 909.0)
		(title "TheDecameron")
		(year 1353))

	([ontology_Class11489] of  Book

		(author [ontology_Class10236])
		(genre "Horror")
		(pages 1263)
		(popularity medium)
		(rating 281.0)
		(title "TheOther")
		(year 1971))

	([ontology_Class11490] of  Book

		(author [ontology_Class10055])
		(genre "Classics")
		(pages 4812)
		(popularity low)
		(rating 744.0)
		(title "BarnabyRudge")
		(year 1841))

	([ontology_Class11491] of  Book

		(author [ontology_Class10358])
		(genre "Thriller")
		(pages 3476)
		(popularity medium)
		(rating 337.0)
		(title "CrocodileontheSandbank")
		(year 1975))

	([ontology_Class11492] of  Book

		(author [ontology_Class10428])
		(genre "Classics")
		(pages 4981)
		(popularity medium)
		(rating 512.0)
		(title "LeMorted'Arthur:KingArthurandtheLegendsoftheRoundTable")
		(year 1485))

	([ontology_Class11493] of  Book

		(author [ontology_Class10429])
		(genre "Fantasy")
		(pages 2244)
		(popularity medium)
		(rating 754.0)
		(title "PolgaratheSorceress")
		(year 1997))

	([ontology_Class11494] of  Book

		(author [ontology_Class10066])
		(genre "Classics")
		(pages 4989)
		(popularity high)
		(rating 189.0)
		(title "TheSunAlsoRises")
		(year 1926))

	([ontology_Class11495] of  Book

		(author [ontology_Class10161])
		(genre "Classics")
		(pages 5074)
		(popularity medium)
		(rating 320.0)
		(title "Absalom,Absalom!")
		(year 1936))

	([ontology_Class11496] of  Book

		(author [ontology_Class10226])
		(genre "Classics")
		(pages 5125)
		(popularity medium)
		(rating 244.0)
		(title "FathersandSons")
		(year 1862))

	([ontology_Class11497] of  Book

		(author [ontology_Class10131])
		(genre "Fantasy")
		(pages 2323)
		(popularity medium)
		(rating 343.0)
		(title "TheForgottenBeastsofEld")
		(year 1974))

	([ontology_Class11498] of  Book

		(author [ontology_Class10109])
		(genre "Classics")
		(pages 5341)
		(popularity high)
		(rating 296.0)
		(title "AllQuietontheWesternFront")
		(year 1929))

	([ontology_Class11499] of  Book

		(author [ontology_Class10430])
		(genre "Horror")
		(pages 1684)
		(popularity medium)
		(rating 480.0)
		(title "AudreyRose")
		(year 1975))

	([ontology_Class11500] of  Book

		(author [ontology_Class10431])
		(genre "Short Stories")
		(pages 1764)
		(popularity low)
		(rating 303.0)
		(title "TheGhostStoriesofEdithWharton")
		(year 1937))

	([ontology_Class11501] of  Book

		(author [ontology_Class10051])
		(genre "Uncategorized")
		(pages 5911)
		(popularity high)
		(rating 373.0)
		(title "TheMasterandMargarita")
		(year 1967))

	([ontology_Class11502] of  Book

		(author [ontology_Class10053])
		(genre "Classics")
		(pages 6227)
		(popularity high)
		(rating 212.0)
		(title "AClockworkOrange")
		(year 1962))

	([ontology_Class11503] of  Book

		(author [ontology_Class10194])
		(genre "Classics")
		(pages 6940)
		(popularity medium)
		(rating 364.0)
		(title "LadyChatterley'sLover")
		(year 1928))

	([ontology_Class11504] of  Book

		(author [ontology_Class10153])
		(genre "Fantasy")
		(pages 2850)
		(popularity medium)
		(rating 471.0)
		(title "CrownDuel")
		(year 1997))

	([ontology_Class11505] of  Book

		(author [ontology_Class10432])
		(genre "Horror")
		(pages 2578)
		(popularity medium)
		(rating 223.0)
		(title "AStirofEchoes")
		(year 1958))

	([ontology_Class11506] of  Book

		(author [ontology_Class10166])
		(genre "Fantasy")
		(pages 3036)
		(popularity medium)
		(rating 1040.0)
		(title "TheDeedofPaksenarrion")
		(year 1992))

	([ontology_Class11507] of  Book

		(author [ontology_Class10069])
		(genre "Classics")
		(pages 8121)
		(popularity medium)
		(rating 233.0)
		(title "NotesfromUnderground,WhiteNights,TheDreamofaRidiculousMan,andSelectionsfromTheHouseoftheDead")
		(year 1864))

	([ontology_Class11508] of  Book

		(author [ontology_Class10433])
		(genre "Classics")
		(pages 8370)
		(popularity high)
		(rating 510.0)
		(title "TheHunchbackofNotre-Dame")
		(year 1831))

	([ontology_Class11509] of  Book

		(author [ontology_Class10159])
		(genre "Classics")
		(pages 9050)
		(popularity high)
		(rating 209.0)
		(title "TotheLighthouse")
		(year 1927))

	([ontology_Class11510] of  Book

		(author [ontology_Class10434])
		(genre "Classics")
		(pages 4716)
		(popularity medium)
		(rating 126.0)
		(title "TheCantervilleGhost")
		(year 1887))

	([ontology_Class11511] of  Book

		(author [ontology_Class10078])
		(genre "Classics")
		(pages 5252)
		(popularity high)
		(rating 672.0)
		(title "TheWomaninWhite")
		(year 1859))

	([ontology_Class11512] of  Book

		(author [ontology_Class10228])
		(genre "Classics")
		(pages 9588)
		(popularity medium)
		(rating 512.0)
		(title "DeadSouls")
		(year 1842))

	([ontology_Class11513] of  Book

		(author [ontology_Class10195])
		(genre "Classics")
		(pages 9626)
		(popularity low)
		(rating 4211.0)
		(title "InSearchofLostTime")
		(year 1927))

	([ontology_Class11514] of  Book

		(author [ontology_Class10054])
		(genre "Classics")
		(pages 10633)
		(popularity high)
		(rating 518.0)
		(title "TessoftheD'Urbervilles")
		(year 1891))

	([ontology_Class11515] of  Book

		(author [ontology_Class10062])
		(genre "Classics")
		(pages 11759)
		(popularity high)
		(rating 188.0)
		(title "HeartofDarkness")
		(year 1899))

	([ontology_Class11516] of  Book

		(author [ontology_Class10240])
		(genre "Horror")
		(pages 21979)
		(popularity medium)
		(rating 182.0)
		(title "TheHauntingofHillHouse")
		(year 1959))

	([ontology_Class11517] of  Book

		(author [ontology_Class10108])
		(genre "Classics")
		(pages 13477)
		(popularity high)
		(rating 438.0)
		(title "UncleTom'sCabin")
		(year 1852))

	([ontology_Class11518] of  Book

		(author [ontology_Class10196])
		(genre "Classics")
		(pages 14919)
		(popularity high)
		(rating 912.0)
		(title "VanityFair")
		(year 1848))

	([ontology_Class11519] of  Book

		(author [ontology_Class10111])
		(genre "Classics")
		(pages 18352)
		(popularity high)
		(rating 417.0)
		(title "Lolita")
		(year 1955))

	([ontology_Class11520] of  Book

		(author [ontology_Class10105])
		(genre "Classics")
		(pages 17593)
		(popularity high)
		(rating 625.0)
		(title "TheThreeMusketeers")
		(year 1844))

	([ontology_Class11521] of  Book

		(author [ontology_Class10059])
		(genre "Classics")
		(pages 20150)
		(popularity high)
		(rating 329.0)
		(title "MadameBovary")
		(year 1856))

	([ontology_Class11522] of  Book

		(author [ontology_Class10221])
		(genre "Classics")
		(pages 19042)
		(popularity high)
		(rating 904.0)
		(title "Middlemarch")
		(year 1871))

	([ontology_Class11523] of  Book

		(author [ontology_Class10139])
		(genre "Classics")
		(pages 25566)
		(popularity high)
		(rating 720.0)
		(title "Moby-Dick,or,theWhale")
		(year 1851))

	([ontology_Class11524] of  Book

		(author [ontology_Class10110])
		(genre "Classics")
		(pages 35621)
		(popularity high)
		(rating 960.0)
		(title "AnnaKarenina")
		(year 1877))

	([ontology_Class11525] of  Book

		(author [ontology_Class10193])
		(genre "Uncategorized")
		(pages 1831)
		(popularity high)
		(rating 448.0)
		(title "TheGodfather")
		(year 1969))

	([ontology_Class11526] of  Book

		(author [ontology_Class10435])
		(genre "Thriller")
		(pages 1214)
		(popularity low)
		(rating 306.0)
		(title "DeathofanExpertWitness")
		(year 1977))

	([ontology_Class11527] of  Book

		(author [ontology_Class10322])
		(genre "Uncategorized")
		(pages 1609)
		(popularity medium)
		(rating 576.0)
		(title "CancerWard")
		(year 1968))

	([ontology_Class11528] of  Book

		(author [ontology_Class10374])
		(genre "Classics")
		(pages 2034)
		(popularity medium)
		(rating 351.0)
		(title "BridesheadRevisited:TheSacredandProfaneMemoriesofCaptainCharlesRyder")
		(year 1945))

	([ontology_Class11529] of  Book

		(author [ontology_Class10182])
		(genre "Thriller")
		(pages 2317)
		(popularity high)
		(rating 288.0)
		(title "TheMurderofRogerAckroyd")
		(year 1926))

	([ontology_Class11530] of  Book

		(author [ontology_Class10202])
		(genre "Classics")
		(pages 2609)
		(popularity medium)
		(rating 592.0)
		(title "DoctorZhivago")
		(year 1957))

	([ontology_Class11531] of  Book

		(author [ontology_Class10436])
		(genre "Uncategorized")
		(pages 2957)
		(popularity medium)
		(rating 320.0)
		(title "Coma")
		(year 1977))

	([ontology_Class11532] of  Book

		(author [ontology_Class10437])
		(genre "Romance")
		(pages 2611)
		(popularity low)
		(rating 400.0)
		(title "FixHerUp"))

	([ontology_Class11533] of  Book

		(author [ontology_Class10438])
		(genre "Romance")
		(pages 2618)
		(popularity low)
		(rating 200.0)
		(title "Space"))

	([ontology_Class11534] of  Book

		(author [ontology_Class10212])
		(genre "Classics")
		(pages 3477)
		(popularity medium)
		(rating 70.0)
		(title "TheYellowWallpaperandOtherStories")
		(year 1892))

	([ontology_Class11535] of  Book

		(author [ontology_Class10345])
		(genre "Historical")
		(pages 3881)
		(popularity high)
		(rating 498.0)
		(title "TheAlienist")
		(year 1994))

	([ontology_Class11536] of  Book

		(author [ontology_Class10070])
		(genre "Uncategorized")
		(pages 6513)
		(popularity high)
		(rating 308.0)
		(title "ThePlague")
		(year 1947))

	([ontology_Class11537] of  Book

		(author [ontology_Class10065])
		(genre "Classics")
		(pages 14435)
		(popularity high)
		(rating 325.0)
		(title "OneFlewOvertheCuckoo'sNest")
		(year 1962))

	([ontology_Class11538] of  Book

		(author [ontology_Class10439])
		(genre "Uncategorized")
		(pages 2609)
		(popularity low)
		(rating 222.0)
		(title "AlisonWonderland")
		(year 1999))

	([ontology_Class11539] of  Book

		(author [ontology_Class10440])
		(genre "Romance")
		(pages 869)
		(popularity low)
		(rating 368.0)
		(title "WiththisKiss")
		(year 1999))

	([ontology_Class11540] of  Book

		(author [ontology_Class10441])
		(genre "Romance")
		(pages 1525)
		(popularity low)
		(rating 380.0)
		(title "Tapestry")
		(year 1995))

	([ontology_Class11541] of  Book

		(author [ontology_Class10442])
		(genre "Romance")
		(pages 1701)
		(popularity low)
		(rating 402.0)
		(title "AWhisperofRoses")
		(year 1993))

	([ontology_Class11542] of  Book

		(author [ontology_Class10443])
		(genre "Romance")
		(pages 2044)
		(popularity low)
		(rating 224.0)
		(title "LordCarew'sBride")
		(year 1995))

	([ontology_Class11543] of  Book

		(author [ontology_Class10444])
		(genre "Romance")
		(pages 2799)
		(popularity low)
		(rating 336.0)
		(title "BeautyandtheBeast")
		(year 1992))

	([ontology_Class11544] of  Book

		(author [ontology_Class10445])
		(genre "Fantasy")
		(pages 3078)
		(popularity low)
		(rating 272.0)
		(title "Beast")
		(year 1999))

	([ontology_Class11545] of  Book

		(author [ontology_Class10446])
		(genre "Romance")
		(pages 3483)
		(popularity low)
		(rating 384.0)
		(title "Beast")
		(year 1997))

	([ontology_Class11546] of  Book

		(author [ontology_Class10447])
		(genre "Romance")
		(pages 6525)
		(popularity low)
		(rating 384.0)
		(title "TexasDestiny")
		(year 1997))

	([ontology_Class11547] of  Book

		(author [ontology_Class10448])
		(genre "Horror")
		(pages 2049)
		(popularity low)
		(rating 503.0)
		(title "IntheDark")
		(year 1994))

	([ontology_Class11548] of  Book

		(author [ontology_Class10449])
		(genre "Horror")
		(pages 3766)
		(popularity medium)
		(rating 370.0)
		(title "TheLongWalk")
		(year 1979))

	([ontology_Class11549] of  Book

		(author [ontology_Class10210])
		(genre "Horror")
		(pages 4841)
		(popularity medium)
		(rating 315.0)
		(title "TheAmityvilleHorror")
		(year 1977))

	([ontology_Class11550] of  Book

		(author [ontology_Class10232])
		(genre "Horror")
		(pages 4913)
		(popularity medium)
		(rating 208.0)
		(title "Psycho")
		(year 1959))

	([ontology_Class11551] of  Book

		(author [ontology_Class10177])
		(genre "Horror")
		(pages 6307)
		(popularity high)
		(rating 320.0)
		(title "Jaws")
		(year 1973))

	([ontology_Class11552] of  Book

		(author [ontology_Class10338])
		(genre "Thriller")
		(pages 589)
		(popularity medium)
		(rating 341.0)
		(title "TheBeekeeper'sApprentice")
		(year 1994))

	([ontology_Class11553] of  Book

		(author [ontology_Class10238])
		(genre "Horror")
		(pages 12518)
		(popularity medium)
		(rating 308.0)
		(title "Rosemary'sBaby")
		(year 1967))

	([ontology_Class11554] of  Book

		(author [ontology_Class10450])
		(genre "Romance")
		(pages 771)
		(popularity low)
		(rating 346.0)
		(title "OneSummer")
		(year 1993))

	([ontology_Class11555] of  Book

		(author [ontology_Class10451])
		(genre "Romance")
		(pages 1181)
		(popularity low)
		(rating 336.0)
		(title "FlandersPoint")
		(year 1997))

	([ontology_Class11556] of  Book

		(author [ontology_Class10452])
		(genre "Uncategorized")
		(pages 1144)
		(popularity medium)
		(rating 437.0)
		(title "Zeno'sConscience")
		(year 1923))

	([ontology_Class11557] of  Book

		(author [ontology_Class10289])
		(genre "Uncategorized")
		(pages 2195)
		(popularity medium)
		(rating 640.0)
		(title "TheGoldenNotebook")
		(year 1962))

	([ontology_Class11558] of  Book

		(author [ontology_Class10373])
		(genre "Historical")
		(pages 2984)
		(popularity medium)
		(rating 347.0)
		(title "MemoirsofHadrian")
		(year 1951))

	([ontology_Class11559] of  Book

		(author [ontology_Class10056])
		(genre "Classics")
		(pages 4601)
		(popularity high)
		(rating 581.0)
		(title "InvisibleMan")
		(year 1952))

	([ontology_Class11560] of  Book

		(author [ontology_Class10453])
		(genre "Uncategorized")
		(pages 5764)
		(popularity low)
		(rating 512.0)
		(title "Molloy,MaloneDies,TheUnnamable")
		(year 1958))

	([ontology_Class11561] of  Book

		(author [ontology_Class10064])
		(genre "Uncategorized")
		(pages 6694)
		(popularity high)
		(rating 209.0)
		(title "ThingsFallApart")
		(year 1958))

	([ontology_Class11562] of  Book

		(author [ontology_Class10050])
		(genre "Uncategorized")
		(pages 15227)
		(popularity medium)
		(rating 174.0)
		(title "Ficciones")
		(year 1944))

	([ontology_Class11563] of  Book

		(author [ontology_Class10350])
		(genre "Uncategorized")
		(pages 16111)
		(popularity medium)
		(rating 335.0)
		(title "ZorbatheGreek")
		(year 1946))

	([ontology_Class11564] of  Book

		(author [ontology_Class10010])
		(genre "Uncategorized")
		(pages 5593)
		(popularity high)
		(rating 216.0)
		(title "TheReader")
		(year 1995))

	([ontology_Class11565] of  Book

		(author [ontology_Class10144])
		(genre "Young")
		(pages 3076)
		(popularity medium)
		(rating 176.0)
		(title "JulieoftheWolves")
		(year 1972))

	([ontology_Class11566] of  Book

		(author [ontology_Class10141])
		(genre "Uncategorized")
		(pages 4052)
		(popularity medium)
		(rating 309.0)
		(title "JohnnyGotHisGun")
		(year 1939))

	([ontology_Class11567] of  Book

		(author [ontology_Class10142])
		(genre "Classics")
		(pages 4460)
		(popularity medium)
		(rating 352.0)
		(title "TheSwissFamilyRobinson")
		(year 1812))

	([ontology_Class11568] of  Book

		(author [ontology_Class10155])
		(genre "Uncategorized")
		(pages 3023)
		(popularity medium)
		(rating 55.0)
		(title "BrokebackMountain")
		(year 1997))

	([ontology_Class11569] of  Book

		(author [ontology_Class10386])
		(genre "Historical")
		(pages 2070)
		(popularity medium)
		(rating 648.0)
		(title "HistoryofthePeloponnesianWar")
		(year -411))

	([ontology_Class11570] of  Book

		(author [ontology_Class10454])
		(genre "Historical")
		(pages 1138)
		(popularity low)
		(rating 478.0)
		(title "CrossofIron")
		(year 1955))

	([ontology_Class11571] of  Book

		(author [ontology_Class10455])
		(genre "Uncategorized")
		(pages 1192)
		(popularity low)
		(rating 467.0)
		(title "HMSUlysses")
		(year 1955))

	([ontology_Class11572] of  Book

		(author [ontology_Class10302])
		(genre "Historical")
		(pages 1250)
		(popularity medium)
		(rating 191.0)
		(title "WhenHitlerStolePinkRabbit")
		(year 1971))

	([ontology_Class11573] of  Book

		(author [ontology_Class10456])
		(genre "Uncategorized")
		(pages 1299)
		(popularity medium)
		(rating 816.0)
		(title "FromHeretoEternity")
		(year 1951))

	([ontology_Class11574] of  Book

		(author [ontology_Class10298])
		(genre "Historical")
		(pages 1308)
		(popularity low)
		(rating 293.0)
		(title "IfIShouldDieBeforeIWake")
		(year 1994))

	([ontology_Class11575] of  Book

		(author [ontology_Class10457])
		(genre "Uncategorized")
		(pages 1393)
		(popularity low)
		(rating 696.0)
		(title "TheYoungLions")
		(year 1948))

	([ontology_Class11576] of  Book

		(author [ontology_Class10101])
		(genre "Historical")
		(pages 1531)
		(popularity low)
		(rating 694.0)
		(title "BattleCry")
		(year 1953))

	([ontology_Class11577] of  Book

		(author [ontology_Class10297])
		(genre "Historical")
		(pages 1617)
		(popularity medium)
		(rating 203.0)
		(title "SummerofMyGermanSoldier")
		(year 1973))

	([ontology_Class11578] of  Book

		(author [ontology_Class10458])
		(genre "Uncategorized")
		(pages 1891)
		(popularity low)
		(rating 352.0)
		(title "RunSilentRunDeep")
		(year 1955))

	([ontology_Class11579] of  Book

		(author [ontology_Class10185])
		(genre "Uncategorized")
		(pages 2098)
		(popularity high)
		(rating 460.0)
		(title "SnowFallingonCedars")
		(year 1994))

	([ontology_Class11580] of  Book

		(author [ontology_Class10459])
		(genre "Uncategorized")
		(pages 2154)
		(popularity low)
		(rating 520.0)
		(title "TheCruelSea")
		(year 1951))

	([ontology_Class11581] of  Book

		(author [ontology_Class10460])
		(genre "Historical")
		(pages 2434)
		(popularity medium)
		(rating 374.0)
		(title "Enigma")
		(year 1995))

	([ontology_Class11582] of  Book

		(author [ontology_Class10342])
		(genre "Uncategorized")
		(pages 2467)
		(popularity medium)
		(rating 192.0)
		(title "TheEndoftheAffair")
		(year 1951))

	([ontology_Class11583] of  Book

		(author [ontology_Class10323])
		(genre "Classics")
		(pages 2654)
		(popularity high)
		(rating 208.0)
		(title "ASeparatePeace")
		(year 1959))

	([ontology_Class11584] of  Book

		(author [ontology_Class10301])
		(genre "Historical")
		(pages 2778)
		(popularity medium)
		(rating 525.0)
		(title "StonesfromtheRiver")
		(year 1994))

	([ontology_Class11585] of  Book

		(author [ontology_Class10300])
		(genre "Uncategorized")
		(pages 3114)
		(popularity medium)
		(rating 543.0)
		(title "EveryManDiesAlone")
		(year 1947))

	([ontology_Class11586] of  Book

		(author [ontology_Class10461])
		(genre "Uncategorized")
		(pages 3562)
		(popularity medium)
		(rating 352.0)
		(title "TheEagleHasLanded")
		(year 1975))

	([ontology_Class11587] of  Book

		(author [ontology_Class10112])
		(genre "Classics")
		(pages 20071)
		(popularity high)
		(rating 453.0)
		(title "Catch-22")
		(year 1961))

	([ontology_Class11588] of  Book

		(author [ontology_Class10133])
		(genre "Fantasy")
		(pages 421)
		(popularity low)
		(rating 1173.0)
		(title "TheGormenghastNovels")
		(year 1959))

	([ontology_Class11589] of  Book

		(author [ontology_Class10134])
		(genre "Uncategorized")
		(pages 618)
		(popularity low)
		(rating 1408.0)
		(title "TheBourneTrilogy")
		(year 1991))

	([ontology_Class11590] of  Book

		(author [ontology_Class10135])
		(genre "Classics")
		(pages 1018)
		(popularity medium)
		(rating 872.0)
		(title "TheForsyteSaga")
		(year 1921))

	([ontology_Class11591] of  Book

		(author [ontology_Class10146])
		(genre "Uncategorized")
		(pages 1729)
		(popularity medium)
		(rating 128.0)
		(title "Sounder")
		(year 1969))

	([ontology_Class11592] of  Book

		(author [ontology_Class10136])
		(genre "Classics")
		(pages 9882)
		(popularity high)
		(rating 1796.0)
		(title "TheCompleteSherlockHolmes")
		(year 1927))

	([ontology_Class11593] of  Book

		(author [ontology_Class10147])
		(genre "Classics")
		(pages 2843)
		(popularity medium)
		(rating 513.0)
		(title "TheYearling")
		(year 1938))

	([ontology_Class11594] of  Book

		(author [ontology_Class10148])
		(genre "Classics")
		(pages 5225)
		(popularity medium)
		(rating 132.0)
		(title "OldYeller")
		(year 1956))

	([ontology_Class11595] of  Book

		(author [ontology_Class10145])
		(genre "Romance")
		(pages 1611)
		(popularity low)
		(rating 420.0)
		(title "BabyLove")
		(year 1999))

	([ontology_Class11596] of  Book

		(author [ontology_Class10462])
		(genre "Thriller")
		(pages 18455)
		(popularity medium)
		(rating 256.0)
		(title "TheCatWhoCouldReadBackwards")
		(year 1966))

	([ontology_Class11597] of  Book

		(author [ontology_Class10463])
		(genre "Thriller")
		(pages 6909)
		(popularity low)
		(rating 320.0)
		(title "ThymeofDeath")
		(year 1992))

	([ontology_Class11598] of  Book

		(author [ontology_Class10464])
		(genre "Thriller")
		(pages 1920)
		(popularity low)
		(rating 218.0)
		(title "MissZukasandtheLibraryMurders")
		(year 1994))

	([ontology_Class11599] of  Book

		(author [ontology_Class10465])
		(genre "Thriller")
		(pages 1682)
		(popularity low)
		(rating 245.0)
		(title "CrewelWorld")
		(year 1999))

	([ontology_Class11600] of  Book

		(author [ontology_Class10466])
		(genre "Thriller")
		(pages 1958)
		(popularity low)
		(rating 237.0)
		(title "TheCaseoftheGildedFly")
		(year 1944))

	([ontology_Class11601] of  Book

		(author [ontology_Class10467])
		(genre "Thriller")
		(pages 1999)
		(popularity low)
		(rating 320.0)
		(title "JustDesserts")
		(year 1995))

	([ontology_Class11602] of  Book

		(author [ontology_Class10080])
		(genre "Thriller")
		(pages 1995)
		(popularity low)
		(rating 229.0)
		(title "TheNovice'sTale")
		(year 1992))

	([ontology_Class11603] of  Book

		(author [ontology_Class10468])
		(genre "Thriller")
		(pages 2278)
		(popularity low)
		(rating 224.0)
		(title "TheBodyInTheTransept")
		(year 1995))

	([ontology_Class11604] of  Book

		(author [ontology_Class10469])
		(genre "Thriller")
		(pages 2427)
		(popularity low)
		(rating 252.0)
		(title "DeathatWentwaterCourt")
		(year 1994))

	([ontology_Class11605] of  Book

		(author [ontology_Class10470])
		(genre "Thriller")
		(pages 2497)
		(popularity low)
		(rating 293.0)
		(title "BurglarsCan'tBeChoosers")
		(year 1977))

	([ontology_Class11606] of  Book

		(author [ontology_Class10471])
		(genre "Thriller")
		(pages 2670)
		(popularity low)
		(rating 278.0)
		(title "MurderonAstorPlace")
		(year 1999))

	([ontology_Class11607] of  Book

		(author [ontology_Class10472])
		(genre "Fantasy")
		(pages 1177)
		(popularity low)
		(rating 240.0)
		(title "TheKingofElfland'sDaughter")
		(year 1924))

	([ontology_Class11608] of  Book

		(author [ontology_Class10344])
		(genre "Thriller")
		(pages 3105)
		(popularity medium)
		(rating 285.0)
		(title "Fer-de-Lance")
		(year 1934))

	([ontology_Class11609] of  Book

		(author [ontology_Class10033])
		(genre "Fantasy")
		(pages 1276)
		(popularity medium)
		(rating 639.0)
		(title "TheOnceandFutureKing")
		(year 1958))

	([ontology_Class11610] of  Book

		(author [ontology_Class10215])
		(genre "Fantasy")
		(pages 1278)
		(popularity low)
		(rating 468.0)
		(title "TamLin")
		(year 1991))

	([ontology_Class11611] of  Book

		(author [ontology_Class10473])
		(genre "Thriller")
		(pages 3589)
		(popularity low)
		(rating 296.0)
		(title "DeathatBishop'sKeep")
		(year 1994))

	([ontology_Class11612] of  Book

		(author [ontology_Class10474])
		(genre "Thriller")
		(pages 3693)
		(popularity low)
		(rating 336.0)
		(title "ThemBones")
		(year 1999))

	([ontology_Class11613] of  Book

		(author [ontology_Class10475])
		(genre "Thriller")
		(pages 4038)
		(popularity low)
		(rating 256.0)
		(title "Fool'sPuzzle")
		(year 1994))

	([ontology_Class11614] of  Book

		(author [ontology_Class10476])
		(genre "Thriller")
		(pages 4574)
		(popularity medium)
		(rating 339.0)
		(title "DealBreaker")
		(year 1995))

	([ontology_Class11615] of  Book

		(author [ontology_Class10477])
		(genre "Thriller")
		(pages 7068)
		(popularity low)
		(rating 244.0)
		(title "MurderonaGirls'NightOut")
		(year 1996))

	([ontology_Class11616] of  Book

		(author [ontology_Class10478])
		(genre "Thriller")
		(pages 8466)
		(popularity medium)
		(rating 244.0)
		(title "AuntDimity'sDeath")
		(year 1992))

	([ontology_Class11617] of  Book

		(author [ontology_Class10181])
		(genre "Thriller")
		(pages 9782)
		(popularity medium)
		(rating 212.0)
		(title "WhoseBody?")
		(year 1923))

	([ontology_Class11618] of  Book

		(author [ontology_Class10479])
		(genre "Thriller")
		(pages 10003)
		(popularity low)
		(rating 311.0)
		(title "MurderWithPeacocks")
		(year 1999))

	([ontology_Class11619] of  Book

		(author [ontology_Class10480])
		(genre "Thriller")
		(pages 14438)
		(popularity medium)
		(rating 204.0)
		(title "TheUnexpectedMrs.Pollifax")
		(year 1966))

	([ontology_Class11620] of  Book

		(author [ontology_Class10481])
		(genre "Uncategorized")
		(pages 1539)
		(popularity medium)
		(rating 316.0)
		(title "Cry,theBelovedCountry")
		(year 1948))

	([ontology_Class11621] of  Book

		(author [ontology_Class10045])
		(genre "Classics")
		(pages 2248)
		(popularity high)
		(rating 152.0)
		(title "Siddhartha")
		(year 1922))

	([ontology_Class11622] of  Book

		(author [ontology_Class10482])
		(genre "Historical")
		(pages 2140)
		(popularity low)
		(rating 416.0)
		(title "AnnaandtheKingofSiam")
		(year 1943))

	([ontology_Class11623] of  Book

		(author [ontology_Class10162])
		(genre "Classics")
		(pages 5950)
		(popularity high)
		(rating 418.0)
		(title "TheGoodEarth")
		(year 1931))

	([ontology_Class11624] of  Book

		(author [ontology_Class10319])
		(genre "Uncategorized")
		(pages 2439)
		(popularity high)
		(rating 218.0)
		(title "FightClub")
		(year 1996))

	([ontology_Class11625] of  Book

		(author [ontology_Class10483])
		(genre "Uncategorized")
		(pages 2577)
		(popularity medium)
		(rating 208.0)
		(title "Factotum")
		(year 1975))

	([ontology_Class11626] of  Book

		(author [ontology_Class10209])
		(genre "Uncategorized")
		(pages 2641)
		(popularity medium)
		(rating 279.0)
		(title "RequiemforaDream")
		(year 1978))

	([ontology_Class11627] of  Book

		(author [ontology_Class10484])
		(genre "Fantasy")
		(pages 1780)
		(popularity low)
		(rating 245.0)
		(title "MoribitoII:GuardianoftheDarkness")
		(year 1999))

	([ontology_Class11628] of  Book

		(author [ontology_Class10485])
		(genre "Uncategorized")
		(pages 1465)
		(popularity low)
		(rating 134.0)
		(title "പാണ്ഡവപുരം[Pandavapuram]")
		(year 1979))

	([ontology_Class11629] of  Book

		(author [ontology_Class10003])
		(genre "Uncategorized")
		(pages 2641)
		(popularity high)
		(rating 1168.0)
		(title "AtlasShrugged")
		(year 1957))

	([ontology_Class11630] of  Book

		(author [ontology_Class10163])
		(genre "Classics")
		(pages 3584)
		(popularity high)
		(rating 293.0)
		(title "OntheRoad")
		(year 1955))

	([ontology_Class11631] of  Book

		(author [ontology_Class10486])
		(genre "Fantasy")
		(pages 2783)
		(popularity low)
		(rating 401.0)
		(title "SongintheSilence")
		(year 1996))

	([ontology_Class11632] of  Book

		(author [ontology_Class10487])
		(genre "Uncategorized")
		(pages 3130)
		(popularity low)
		(rating 274.0)
		(title "Indulekha")
		(year 1889))

	([ontology_Class11633] of  Book

		(author [ontology_Class10488])
		(genre "Uncategorized")
		(pages 3175)
		(popularity low)
		(rating 264.0)
		(title "സ്മാരകശിലകൾ[Smarakasilakal]")
		(year 1977))

	([ontology_Class11634] of  Book

		(author [ontology_Class10243])
		(genre "Fantasy")
		(pages 3521)
		(popularity low)
		(rating 196.0)
		(title "Dragon'sBait")
		(year 1992))

	([ontology_Class11635] of  Book

		(author [ontology_Class10489])
		(genre "Uncategorized")
		(pages 7876)
		(popularity low)
		(rating 108.0)
		(title "അഗ്നിസാക്ഷി[Agnisakshi]")
		(year 1976))

	([ontology_Class11636] of  Book

		(author [ontology_Class10490])
		(genre "Fantasy")
		(pages 4183)
		(popularity low)
		(rating 160.0)
		(title "JeremyThatcher,DragonHatcher")
		(year 1991))

	([ontology_Class11637] of  Book

		(author [ontology_Class10491])
		(genre "Fantasy")
		(pages 4754)
		(popularity medium)
		(rating 566.0)
		(title "TheElvenbane")
		(year 1991))

	([ontology_Class11638] of  Book

		(author [ontology_Class10205])
		(genre "Young")
		(pages 2633)
		(popularity medium)
		(rating 276.0)
		(title "Tomorrow,WhentheWarBegan")
		(year 1993))

	([ontology_Class11639] of  Book

		(author [ontology_Class10492])
		(genre "Fantasy")
		(pages 1760)
		(popularity low)
		(rating 464.0)
		(title "TheTwelveKingdoms:SeaofShadow")
		(year 1992))

	([ontology_Class11640] of  Book

		(author [ontology_Class10493])
		(genre "Horror")
		(pages 1998)
		(popularity low)
		(rating 346.0)
		(title "MySoultoKeep")
		(year 1997))

	([ontology_Class11641] of  Book

		(author [ontology_Class10208])
		(genre "Uncategorized")
		(pages 2852)
		(popularity medium)
		(rating 320.0)
		(title "BastardOutofCarolina")
		(year 1992))

	([ontology_Class11642] of  Book

		(author [ontology_Class10494])
		(genre "Uncategorized")
		(pages 1463)
		(popularity medium)
		(rating 750.0)
		(title "WithoutRemorse")
		(year 1993))

	([ontology_Class11643] of  Book

		(author [ontology_Class10495])
		(genre "Uncategorized")
		(pages 1497)
		(popularity medium)
		(rating 245.0)
		(title "River,CrossMyHeart")
		(year 1999))

	([ontology_Class11644] of  Book

		(author [ontology_Class10496])
		(genre "Uncategorized")
		(pages 1792)
		(popularity medium)
		(rating 465.0)
		(title "MotherofPearl")
		(year 1999))

	([ontology_Class11645] of  Book

		(author [ontology_Class10497])
		(genre "Uncategorized")
		(pages 2053)
		(popularity medium)
		(rating 740.0)
		(title "SongsinOrdinaryTime")
		(year 1995))

	([ontology_Class11646] of  Book

		(author [ontology_Class10498])
		(genre "Uncategorized")
		(pages 2673)
		(popularity medium)
		(rating 272.0)
		(title "VinegarHill")
		(year 1994))

	([ontology_Class11647] of  Book

		(author [ontology_Class10499])
		(genre "Uncategorized")
		(pages 2691)
		(popularity medium)
		(rating 535.0)
		(title "Jewel")
		(year 1991))

	([ontology_Class11648] of  Book

		(author [ontology_Class10500])
		(genre "Uncategorized")
		(pages 3289)
		(popularity medium)
		(rating 352.0)
		(title "BackRoads")
		(year 1999))

	([ontology_Class11649] of  Book

		(author [ontology_Class10501])
		(genre "Uncategorized")
		(pages 3619)
		(popularity medium)
		(rating 234.0)
		(title "Breath,Eyes,Memory")
		(year 1994))

	([ontology_Class11650] of  Book

		(author [ontology_Class10502])
		(genre "Uncategorized")
		(pages 4029)
		(popularity medium)
		(rating 304.0)
		(title "WhileIWasGone")
		(year 1999))

	([ontology_Class11651] of  Book

		(author [ontology_Class10503])
		(genre "Uncategorized")
		(pages 4812)
		(popularity medium)
		(rating 400.0)
		(title "AMapoftheWorld")
		(year 1992))

	([ontology_Class11652] of  Book

		(author [ontology_Class10504])
		(genre "Uncategorized")
		(pages 5294)
		(popularity medium)
		(rating 326.0)
		(title "GapCreek")
		(year 1999))

	([ontology_Class11653] of  Book

		(author [ontology_Class10223])
		(genre "Romance")
		(pages 1864)
		(popularity low)
		(rating 368.0)
		(title "RegencyBuck")
		(year 1935))

	([ontology_Class11654] of  Book

		(author [ontology_Class10394])
		(genre "Uncategorized")
		(pages 6573)
		(popularity medium)
		(rating 256.0)
		(title "ALessonBeforeDying")
		(year 1993))

	([ontology_Class11655] of  Book

		(author [ontology_Class10505])
		(genre "Uncategorized")
		(pages 7522)
		(popularity medium)
		(rating 508.0)
		(title "FallonYourKnees")
		(year 1996))

	([ontology_Class11656] of  Book

		(author [ontology_Class10314])
		(genre "Uncategorized")
		(pages 7684)
		(popularity medium)
		(rating 454.0)
		(title "WeWeretheMulvaneys")
		(year 1996))

	([ontology_Class11657] of  Book

		(author [ontology_Class10506])
		(genre "Romance")
		(pages 2661)
		(popularity low)
		(rating 256.0)
		(title "Frisco'sKid")
		(year 1997))

	([ontology_Class11658] of  Book

		(author [ontology_Class10102])
		(genre "Historical")
		(pages 3059)
		(popularity medium)
		(rating 500.0)
		(title "Katherine")
		(year 1954))

	([ontology_Class11659] of  Book

		(author [ontology_Class10204])
		(genre "Classics")
		(pages 3620)
		(popularity high)
		(rating 521.0)
		(title "NorthandSouth")
		(year 1855))

	([ontology_Class11660] of  Book

		(author [ontology_Class10098])
		(genre "Classics")
		(pages 1188)
		(popularity medium)
		(rating 544.0)
		(title "Ivanhoe")
		(year 1819))

	([ontology_Class11661] of  Book

		(author [ontology_Class10507])
		(genre "Adventure")
		(pages 1430)
		(popularity medium)
		(rating 384.0)
		(title "TheMediterraneanCaper")
		(year 1973))

	([ontology_Class11662] of  Book

		(author [ontology_Class10346])
		(genre "Thriller")
		(pages 1407)
		(popularity high)
		(rating 528.0)
		(title "TheBoneCollector")
		(year 1997))

	([ontology_Class11663] of  Book

		(author [ontology_Class10189])
		(genre "Thriller")
		(pages 5261)
		(popularity high)
		(rating 424.0)
		(title "KillingFloor")
		(year 1997))

	([ontology_Class11664] of  Book

		(author [ontology_Class10359])
		(genre "Romance")
		(pages 1604)
		(popularity low)
		(rating 384.0)
		(title "OntheNightoftheSeventhMoon")
		(year 1972))

	([ontology_Class11665] of  Book

		(author [ontology_Class10353])
		(genre "Historical")
		(pages 1634)
		(popularity low)
		(rating 410.0)
		(title "TheMorningGift")
		(year 1993))

	([ontology_Class11666] of  Book

		(author [ontology_Class10508])
		(genre "Romance")
		(pages 1166)
		(popularity low)
		(rating 453.0)
		(title "OnceinaBlueMoon")
		(year 1993))

	([ontology_Class11667] of  Book

		(author [ontology_Class10509])
		(genre "Horror")
		(pages 651)
		(popularity low)
		(rating 188.0)
		(title "ConjureWife")
		(year 1943))

	([ontology_Class11668] of  Book

		(author [ontology_Class10510])
		(genre "Historical")
		(pages 1618)
		(popularity low)
		(rating 592.0)
		(title "TheBrethren:InsidetheSupremeCourt")
		(year 1979))

	([ontology_Class11669] of  Book

		(author [ontology_Class10387])
		(genre "Religious")
		(pages 2550)
		(popularity medium)
		(rating 300.0)
		(title "ThePrincess")
		(year 1999))

	([ontology_Class11670] of  Book

		(author [ontology_Class10096])
		(genre "Historical")
		(pages 2807)
		(popularity medium)
		(rating 972.0)
		(title "ForeverAmber")
		(year 1944))

	([ontology_Class11671] of  Book

		(author [ontology_Class10511])
		(genre "Fantasy")
		(pages 717)
		(popularity low)
		(rating 273.0)
		(title "Nobody'sSon")
		(year 1993))

	([ontology_Class11672] of  Book

		(author [ontology_Class10512])
		(genre "Fantasy")
		(pages 736)
		(popularity low)
		(rating 239.0)
		(title "Lud-in-the-Mist")
		(year 1926))

	([ontology_Class11673] of  Book

		(author [ontology_Class10513])
		(genre "Historical")
		(pages 2974)
		(popularity low)
		(rating 810.0)
		(title "Angelique")
		(year 1956))

	([ontology_Class11674] of  Book

		(author [ontology_Class10514])
		(genre "Historical")
		(pages 2036)
		(popularity low)
		(rating 346.0)
		(title "MiracleatPhiladelphia:TheStoryoftheConstitutionalConvention,MaytoSeptember1787")
		(year 1966))

	([ontology_Class11675] of  Book

		(author [ontology_Class10389])
		(genre "Uncategorized")
		(pages 4069)
		(popularity medium)
		(rating 512.0)
		(title "Christy")
		(year 1967))

	([ontology_Class11676] of  Book

		(author [ontology_Class10515])
		(genre "Fantasy")
		(pages 857)
		(popularity low)
		(rating 608.0)
		(title "Aurian")
		(year 1994))

	([ontology_Class11677] of  Book

		(author [ontology_Class10516])
		(genre "Fantasy")
		(pages 863)
		(popularity low)
		(rating 928.0)
		(title "TheRuinsofAmbrai")
		(year 1994))

	([ontology_Class11678] of  Book

		(author [ontology_Class10203])
		(genre "Religious")
		(pages 5009)
		(popularity medium)
		(rating 1468.0)
		(title "MarkoftheLionTrilogy")
		(year 1993))

	([ontology_Class11679] of  Book

		(author [ontology_Class10378])
		(genre "Fantasy")
		(pages 961)
		(popularity low)
		(rating 384.0)
		(title "Silverlock")
		(year 1949))

	([ontology_Class11680] of  Book

		(author [ontology_Class10517])
		(genre "Fantasy")
		(pages 981)
		(popularity low)
		(rating 674.0)
		(title "Illusion")
		(year 1991))

	([ontology_Class11681] of  Book

		(author [ontology_Class10518])
		(genre "Young")
		(pages 1049)
		(popularity medium)
		(rating 184.0)
		(title "RunningOutofTime")
		(year 1995))

	([ontology_Class11682] of  Book

		(author [ontology_Class10519])
		(genre "Classics")
		(pages 2823)
		(popularity medium)
		(rating 324.0)
		(title "TarzanoftheApes")
		(year 1912))

	([ontology_Class11683] of  Book

		(author [ontology_Class10520])
		(genre "Young")
		(pages 2933)
		(popularity medium)
		(rating 267.0)
		(title "TheChocolateWar")
		(year 1974))

	([ontology_Class11684] of  Book

		(author [ontology_Class10355])
		(genre "Historical")
		(pages 1761)
		(popularity low)
		(rating 279.0)
		(title "Mara,DaughteroftheNile")
		(year 1953))

	([ontology_Class11685] of  Book

		(author [ontology_Class10192])
		(genre "Thriller")
		(pages 2482)
		(popularity medium)
		(rating 266.0)
		(title "TheLadyintheLake")
		(year 1943))

	([ontology_Class11686] of  Book

		(author [ontology_Class10336])
		(genre "Historical")
		(pages 3812)
		(popularity low)
		(rating 452.0)
		(title "Talwar")
		(year 1993))

	([ontology_Class11687] of  Book

		(author [ontology_Class10521])
		(genre "Thriller")
		(pages 2674)
		(popularity low)
		(rating 480.0)
		(title "InaDrySeason")
		(year 1999))

	([ontology_Class11688] of  Book

		(author [ontology_Class10084])
		(genre "Historical")
		(pages 3216)
		(popularity low)
		(rating 592.0)
		(title "TheReckoning")
		(year 1991))

	([ontology_Class11689] of  Book

		(author [ontology_Class10180])
		(genre "Thriller")
		(pages 2824)
		(popularity medium)
		(rating 280.0)
		(title "FacelessKillers")
		(year 1991))

	([ontology_Class11690] of  Book

		(author [ontology_Class10522])
		(genre "Thriller")
		(pages 2894)
		(popularity low)
		(rating 336.0)
		(title "BaltimoreBlues")
		(year 1997))

	([ontology_Class11691] of  Book

		(author [ontology_Class10523])
		(genre "Thriller")
		(pages 2990)
		(popularity medium)
		(rating 580.0)
		(title "TheQuietGame")
		(year 1999))

	([ontology_Class11692] of  Book

		(author [ontology_Class10524])
		(genre "Thriller")
		(pages 3204)
		(popularity low)
		(rating 512.0)
		(title "HardTime")
		(year 1999))

	([ontology_Class11693] of  Book

		(author [ontology_Class10525])
		(genre "Thriller")
		(pages 3433)
		(popularity low)
		(rating 329.0)
		(title "Mallory'sOracle")
		(year 1994))

	([ontology_Class11694] of  Book

		(author [ontology_Class10526])
		(genre "Thriller")
		(pages 4153)
		(popularity medium)
		(rating 310.0)
		(title "TheDeepBlueGood-By")
		(year 1964))

	([ontology_Class11695] of  Book

		(author [ontology_Class10186])
		(genre "Thriller")
		(pages 4226)
		(popularity medium)
		(rating 454.0)
		(title "AngelsFlight")
		(year 1999))

	([ontology_Class11696] of  Book

		(author [ontology_Class10527])
		(genre "Thriller")
		(pages 4587)
		(popularity medium)
		(rating 208.0)
		(title "TheGodwulfManuscript")
		(year 1973))

	([ontology_Class11697] of  Book

		(author [ontology_Class10528])
		(genre "Thriller")
		(pages 4721)
		(popularity medium)
		(rating 270.0)
		(title "DeathatLaFenice")
		(year 1992))

	([ontology_Class11698] of  Book

		(author [ontology_Class10201])
		(genre "Uncategorized")
		(pages 3600)
		(popularity high)
		(rating 383.0)
		(title "DivineSecretsoftheYa-YaSisterhood")
		(year 1996))

	([ontology_Class11699] of  Book

		(author [ontology_Class10199])
		(genre "Uncategorized")
		(pages 5001)
		(popularity high)
		(rating 342.0)
		(title "LeftBehind")
		(year 1995))

	([ontology_Class11700] of  Book

		(author [ontology_Class10529])
		(genre "Historical")
		(pages 1913)
		(popularity low)
		(rating 430.0)
		(title "Burr")
		(year 1973))

	([ontology_Class11701] of  Book

		(author [ontology_Class10087])
		(genre "Historical")
		(pages 2055)
		(popularity medium)
		(rating 691.0)
		(title "AnInstanceoftheFingerpost")
		(year 1997))

	([ontology_Class11702] of  Book

		(author [ontology_Class10333])
		(genre "Historical")
		(pages 2177)
		(popularity low)
		(rating 336.0)
		(title "TheBullfromtheSea")
		(year 1962))

	([ontology_Class11703] of  Book

		(author [ontology_Class10530])
		(genre "Historical")
		(pages 2200)
		(popularity medium)
		(rating 664.0)
		(title "RiverGod")
		(year 1993))

	([ontology_Class11704] of  Book

		(author [ontology_Class10091])
		(genre "Historical")
		(pages 2699)
		(popularity medium)
		(rating 1104.0)
		(title "TheSource")
		(year 1965))

	([ontology_Class11705] of  Book

		(author [ontology_Class10531])
		(genre "Historical")
		(pages 2739)
		(popularity medium)
		(rating 299.0)
		(title "Flashman")
		(year 1969))

	([ontology_Class11706] of  Book

		(author [ontology_Class10081])
		(genre "Historical")
		(pages 2843)
		(popularity low)
		(rating 543.0)
		(title "TheGameofKings")
		(year 1961))

	([ontology_Class11707] of  Book

		(author [ontology_Class10099])
		(genre "Historical")
		(pages 3122)
		(popularity medium)
		(rating 776.0)
		(title "TheAgonyandtheEcstasy")
		(year 1958))

	([ontology_Class11708] of  Book

		(author [ontology_Class10532])
		(genre "Fantasy")
		(pages 1649)
		(popularity low)
		(rating 410.0)
		(title "SingtheFourQuarters")
		(year 1994))

	([ontology_Class11709] of  Book

		(author [ontology_Class10106])
		(genre "Historical")
		(pages 4218)
		(popularity high)
		(rating 356.0)
		(title "ColdMountain")
		(year 1997))

	([ontology_Class11710] of  Book

		(author [ontology_Class10093])
		(genre "Historical")
		(pages 3762)
		(popularity medium)
		(rating 411.0)
		(title "MasterandCommander")
		(year 1969))

	([ontology_Class11711] of  Book

		(author [ontology_Class10026])
		(genre "Horror")
		(pages 3760)
		(popularity low)
		(rating 416.0)
		(title "DrawingBlood")
		(year 1993))

	([ontology_Class11712] of  Book

		(author [ontology_Class10273])
		(genre "Young")
		(pages 1783)
		(popularity medium)
		(rating 169.0)
		(title "FreaktheMighty")
		(year 1993))

	([ontology_Class11713] of  Book

		(author [ontology_Class10316])
		(genre "Uncategorized")
		(pages 1199)
		(popularity medium)
		(rating 274.0)
		(title "Portnoy'sComplaint")
		(year 1969))

	([ontology_Class11714] of  Book

		(author [ontology_Class10218])
		(genre "Uncategorized")
		(pages 5363)
		(popularity medium)
		(rating 233.0)
		(title "ColdComfortFarm")
		(year 1932))

	([ontology_Class11715] of  Book

		(author [ontology_Class10533])
		(genre "Classics")
		(pages 5953)
		(popularity low)
		(rating 1408.0)
		(title "AndQuietFlowstheDon")
		(year 1934))

	([ontology_Class11716] of  Book

		(author [ontology_Class10534])
		(genre "Classics")
		(pages 9741)
		(popularity medium)
		(rating 586.0)
		(title "Oblomov")
		(year 1859))

	([ontology_Class11717] of  Book

		(author [ontology_Class10225])
		(genre "Romance")
		(pages 5877)
		(popularity medium)
		(rating 533.0)
		(title "FlowersfromtheStorm")
		(year 1992))

	([ontology_Class11718] of  Book

		(author [ontology_Class10535])
		(genre "Fantasy")
		(pages 20170)
		(popularity medium)
		(rating 497.0)
		(title "Mythology:TimelessTalesofGodsandHeroes")
		(year 1942))

	([ontology_Class11719] of  Book

		(author [ontology_Class10198])
		(genre "Uncategorized")
		(pages 15571)
		(popularity medium)
		(rating 1088.0)
		(title "InfiniteJest")
		(year 1996))

	([ontology_Class11720] of  Book

		(author [ontology_Class10248])
		(genre "Short Stories")
		(pages 2266)
		(popularity medium)
		(rating 269.0)
		(title "EverythingThatRisesMustConverge:Stories")
		(year 1965))

	([ontology_Class11721] of  Book

		(author [ontology_Class10388])
		(genre "Uncategorized")
		(pages 2442)
		(popularity medium)
		(rating 413.0)
		(title "AtHomeinMitford")
		(year 1994))

	([ontology_Class11722] of  Book

		(author [ontology_Class10088])
		(genre "Thriller")
		(pages 821)
		(popularity low)
		(rating 288.0)
		(title "BratFarrar")
		(year 1949))

	([ontology_Class11723] of  Book

		(author [ontology_Class10536])
		(genre "Uncategorized")
		(pages 1181)
		(popularity low)
		(rating 752.0)
		(title "JR")
		(year 1975))

	([ontology_Class11724] of  Book

		(author [ontology_Class10537])
		(genre "Uncategorized")
		(pages 1284)
		(popularity medium)
		(rating 397.0)
		(title "UndertheVolcano")
		(year 1947))

	([ontology_Class11725] of  Book

		(author [ontology_Class10229])
		(genre "Classics")
		(pages 1576)
		(popularity high)
		(rating 195.0)
		(title "TheAwakening")
		(year 1899))

	([ontology_Class11726] of  Book

		(author [ontology_Class10538])
		(genre "Uncategorized")
		(pages 1717)
		(popularity medium)
		(rating 318.0)
		(title "TropicofCancer")
		(year 1934))

	([ontology_Class11727] of  Book

		(author [ontology_Class10197])
		(genre "Uncategorized")
		(pages 11100)
		(popularity medium)
		(rating 289.0)
		(title "NakedLunch")
		(year 1959))

	([ontology_Class11728] of  Book

		(author [ontology_Class10244])
		(genre "Uncategorized")
		(pages 1365)
		(popularity medium)
		(rating 144.0)
		(title "Einstein'sDreams")
		(year 1992))

	([ontology_Class11729] of  Book

		(author [ontology_Class10539])
		(genre "Short Stories")
		(pages 1410)
		(popularity low)
		(rating 159.0)
		(title "TheGardenPartyandOtherStories")
		(year 1922))

	([ontology_Class11730] of  Book

		(author [ontology_Class10540])
		(genre "Short Stories")
		(pages 1758)
		(popularity low)
		(rating 1262.0)
		(title "TheCollectedStories")
		(year 1992))

	([ontology_Class11731] of  Book

		(author [ontology_Class10541])
		(genre "Historical")
		(pages 1694)
		(popularity low)
		(rating 294.0)
		(title "ThePolishOfficer")
		(year 1995))

	([ontology_Class11732] of  Book

		(author [ontology_Class10542])
		(genre "Classics")
		(pages 2086)
		(popularity medium)
		(rating 464.0)
		(title "SelectedStories")
		(year 1977))

	([ontology_Class11733] of  Book

		(author [ontology_Class10340])
		(genre "Thriller")
		(pages 1769)
		(popularity low)
		(rating 304.0)
		(title "ACoffinforDimitrios")
		(year 1939))

	([ontology_Class11734] of  Book

		(author [ontology_Class10543])
		(genre "Short Stories")
		(pages 2999)
		(popularity medium)
		(rating 160.0)
		(title "Jesus'Son")
		(year 1992))

	([ontology_Class11735] of  Book

		(author [ontology_Class10252])
		(genre "Uncategorized")
		(pages 3334)
		(popularity medium)
		(rating 480.0)
		(title "Shibumi")
		(year 1979))

	([ontology_Class11736] of  Book

		(author [ontology_Class10544])
		(genre "Uncategorized")
		(pages 4722)
		(popularity medium)
		(rating 240.0)
		(title "Winesburg,Ohio")
		(year 1919))

	([ontology_Class11737] of  Book

		(author [ontology_Class10545])
		(genre "Short Stories")
		(pages 4812)
		(popularity medium)
		(rating 693.0)
		(title "TheStoriesofJohnCheever")
		(year 1978))

	([ontology_Class11738] of  Book

		(author [ontology_Class10546])
		(genre "Fantasy")
		(pages 2934)
		(popularity low)
		(rating 154.0)
		(title "D'Aulaires'BookofNorseMyths")
		(year 1967))

	([ontology_Class11739] of  Book

		(author [ontology_Class10547])
		(genre "Classics")
		(pages 1271)
		(popularity low)
		(rating 225.0)
		(title "SaveMetheWaltz")
		(year 1932))

	([ontology_Class11740] of  Book

		(author [ontology_Class10290])
		(genre "Uncategorized")
		(pages 4906)
		(popularity medium)
		(rating 171.0)
		(title "WideSargassoSea")
		(year 1966))

	([ontology_Class11741] of  Book

		(author [ontology_Class10548])
		(genre "Religious")
		(pages 1465)
		(popularity low)
		(rating 355.0)
		(title "DaughterofJoy")
		(year 1999))

	([ontology_Class11742] of  Book

		(author [ontology_Class10549])
		(genre "Uncategorized")
		(pages 1634)
		(popularity high)
		(rating 250.0)
		(title "TheVirginSuicides")
		(year 1993))

	([ontology_Class11743] of  Book

		(author [ontology_Class10550])
		(genre "Romance")
		(pages 1274)
		(popularity low)
		(rating 256.0)
		(title "ThePrideofJaredMacKade")
		(year 1995))

	([ontology_Class11744] of  Book

		(author [ontology_Class10013])
		(genre "Thriller")
		(pages 1343)
		(popularity high)
		(rating 306.0)
		(title "NakedinDeath")
		(year 1995))

	([ontology_Class11745] of  Book

		(author [ontology_Class10034])
		(genre "Uncategorized")
		(pages 2112)
		(popularity high)
		(rating 176.0)
		(title "TheBadBeginning")
		(year 1999))

	([ontology_Class11746] of  Book

		(author [ontology_Class10014])
		(genre "Uncategorized")
		(pages 2234)
		(popularity high)
		(rating 434.0)
		(title "MemoirsofaGeisha")
		(year 1997))

	([ontology_Class11747] of  Book

		(author [ontology_Class10056])
		(genre "Classics")
		(pages 1038)
		(popularity high)
		(rating 581.0)
		(title "InvisibleMan")
		(year 1952))

	([ontology_Class11748] of  Book

		(author [ontology_Class10060])
		(genre "Classics")
		(pages 1052)
		(popularity high)
		(rating 112.0)
		(title "OfMiceandMen")
		(year 1937))

	([ontology_Class11749] of  Book

		(author [ontology_Class10074])
		(genre "Classics")
		(pages 2457)
		(popularity high)
		(rating 277.0)
		(title "TheCatcherintheRye")
		(year 1951))

	([ontology_Class11750] of  Book

		(author [ontology_Class10107])
		(genre "Historical")
		(pages 1179)
		(popularity high)
		(rating 336.0)
		(title "TheRedTent")
		(year 1997))

	([ontology_Class11751] of  Book

		(author [ontology_Class10070])
		(genre "Classics")
		(pages 1450)
		(popularity high)
		(rating 123.0)
		(title "TheStranger")
		(year 1942))

	([ontology_Class11752] of  Book

		(author [ontology_Class10182])
		(genre "Thriller")
		(pages 560)
		(popularity high)
		(rating 264.0)
		(title "AndThenThereWereNone")
		(year 1939))

	([ontology_Class11753] of  Book

		(author [ontology_Class10551])
		(genre "Short Stories")
		(pages 1689)
		(popularity low)
		(rating 255.0)
		(title "TheWaysofWhiteFolks")
		(year 1934))

	([ontology_Class11754] of  Book

		(author [ontology_Class10075])
		(genre "Classics")
		(pages 3269)
		(popularity high)
		(rating 182.0)
		(title "LordoftheFlies")
		(year 1954))

	([ontology_Class11755] of  Book

		(author [ontology_Class10330])
		(genre "Classics")
		(pages 2344)
		(popularity medium)
		(rating 324.0)
		(title "ThePilgrim'sProgress")
		(year 1678))

	([ontology_Class11756] of  Book

		(author [ontology_Class10155])
		(genre "Uncategorized")
		(pages 2230)
		(popularity medium)
		(rating 55.0)
		(title "BrokebackMountain")
		(year 1997))

	([ontology_Class11757] of  Book

		(author [ontology_Class10552])
		(genre "Classics")
		(pages 2530)
		(popularity high)
		(rating 198.0)
		(title "LittleHouseintheBigWoods")
		(year 1932))

	([ontology_Class11758] of  Book

		(author [ontology_Class10402])
		(genre "Horror")
		(pages 3681)
		(popularity high)
		(rating 342.0)
		(title "InterviewwiththeVampire")
		(year 1976))

	([ontology_Class11759] of  Book

		(author [ontology_Class10387])
		(genre "Religious")
		(pages 2680)
		(popularity medium)
		(rating 300.0)
		(title "ThePrincess")
		(year 1999))

	([ontology_Class11760] of  Book

		(author [ontology_Class10077])
		(genre "Classics")
		(pages 2020)
		(popularity high)
		(rating 180.0)
		(title "TheGreatGatsby")
		(year 1925))

	([ontology_Class11761] of  Book

		(author [ontology_Class10185])
		(genre "Uncategorized")
		(pages 2076)
		(popularity high)
		(rating 460.0)
		(title "SnowFallingonCedars")
		(year 1994))

	([ontology_Class11762] of  Book

		(author [ontology_Class10028])
		(genre "Classics")
		(pages 3763)
		(popularity high)
		(rating 488.0)
		(title "Dracula")
		(year 1897))

	([ontology_Class11763] of  Book

		(author [ontology_Class10110])
		(genre "Classics")
		(pages 4019)
		(popularity high)
		(rating 960.0)
		(title "AnnaKarenina")
		(year 1877))

	([ontology_Class11764] of  Book

		(author [ontology_Class10401])
		(genre "Fantasy")
		(pages 4333)
		(popularity high)
		(rating 848.0)
		(title "AGameofThrones")
		(year 1996))

	([ontology_Class11765] of  Book

		(author [ontology_Class10389])
		(genre "Uncategorized")
		(pages 3788)
		(popularity medium)
		(rating 512.0)
		(title "Christy")
		(year 1967))

	([ontology_Class11766] of  Book

		(author [ontology_Class10038])
		(genre "Fantasy")
		(pages 5764)
		(popularity high)
		(rating 398.0)
		(title "ThePrincessBride")
		(year 1973))

	([ontology_Class11767] of  Book

		(author [ontology_Class10055])
		(genre "Classics")
		(pages 2850)
		(popularity high)
		(rating 489.0)
		(title "ATaleofTwoCities")
		(year 1859))

	([ontology_Class11768] of  Book

		(author [ontology_Class10073])
		(genre "Classics")
		(pages 7841)
		(popularity high)
		(rating 326.0)
		(title "1984")
		(year 1949))

	([ontology_Class11769] of  Book

		(author [ontology_Class10138])
		(genre "Historical")
		(pages 3190)
		(popularity high)
		(rating 729.0)
		(title "Roots:TheSagaofanAmericanFamily")
		(year 1976))

	([ontology_Class11770] of  Book

		(author [ontology_Class10030])
		(genre "Fantasy")
		(pages 937)
		(popularity medium)
		(rating 362.0)
		(title "WildMagic")
		(year 1992))

	([ontology_Class11771] of  Book

		(author [ontology_Class10428])
		(genre "Classics")
		(pages 1168)
		(popularity medium)
		(rating 512.0)
		(title "LeMorted'Arthur:KingArthurandtheLegendsoftheRoundTable")
		(year 1485))

	([ontology_Class11772] of  Book

		(author [ontology_Class10040])
		(genre "Fantasy")
		(pages 1178)
		(popularity medium)
		(rating 278.0)
		(title "ASwiftlyTiltingPlanet")
		(year 1978))

	([ontology_Class11773] of  Book

		(author [ontology_Class10036])
		(genre "Fantasy")
		(pages 1272)
		(popularity high)
		(rating 396.0)
		(title "TheNeverendingStory")
		(year 1979))

	([ontology_Class11774] of  Book

		(author [ontology_Class10291])
		(genre "Fantasy")
		(pages 1288)
		(popularity high)
		(rating 836.0)
		(title "Wizard'sFirstRule")
		(year 1994))

	([ontology_Class11775] of  Book

		(author [ontology_Class10120])
		(genre "Fantasy")
		(pages 1342)
		(popularity medium)
		(rating 726.0)
		(title "TheSwordofShannara")
		(year 1977))

	([ontology_Class11776] of  Book

		(author [ontology_Class10067])
		(genre "Fantasy")
		(pages 1406)
		(popularity high)
		(rating 399.0)
		(title "TheGoldenCompass")
		(year 1995))

	([ontology_Class11777] of  Book

		(author [ontology_Class10222])
		(genre "Romance")
		(pages 1686)
		(popularity low)
		(rating 352.0)
		(title "Dangerous")
		(year 1993))

	([ontology_Class11778] of  Book

		(author [ontology_Class10005])
		(genre "Classics")
		(pages 1697)
		(popularity high)
		(rating 449.0)
		(title "Rebecca")
		(year 1938))

	([ontology_Class11779] of  Book

		(author [ontology_Class10029])
		(genre "Fantasy")
		(pages 1708)
		(popularity medium)
		(rating 294.0)
		(title "TheLastUnicorn")
		(year 1968))

	([ontology_Class11780] of  Book

		(author [ontology_Class10017])
		(genre "Fantasy")
		(pages 1718)
		(popularity high)
		(rating 240.0)
		(title "PrinceCaspian")
		(year 1951))

	([ontology_Class11781] of  Book

		(author [ontology_Class10224])
		(genre "Romance")
		(pages 1881)
		(popularity medium)
		(rating 430.0)
		(title "TheFlameandtheFlower")
		(year 1972))

	([ontology_Class11782] of  Book

		(author [ontology_Class10033])
		(genre "Fantasy")
		(pages 1903)
		(popularity medium)
		(rating 639.0)
		(title "TheOnceandFutureKing")
		(year 1958))

	([ontology_Class11783] of  Book

		(author [ontology_Class10321])
		(genre "Fantasy")
		(pages 2484)
		(popularity high)
		(rating 460.0)
		(title "Assassin'sApprentice")
		(year 1995))

	([ontology_Class11784] of  Book

		(author [ontology_Class10553])
		(genre "Fantasy")
		(pages 2544)
		(popularity low)
		(rating 315.0)
		(title "IntotheDarkLands")
		(year 1991))

	([ontology_Class11785] of  Book

		(author [ontology_Class10223])
		(genre "Romance")
		(pages 2814)
		(popularity medium)
		(rating 352.0)
		(title "TheseOldShades")
		(year 1926))

	([ontology_Class11786] of  Book

		(author [ontology_Class10167])
		(genre "Fantasy")
		(pages 2880)
		(popularity medium)
		(rating 480.0)
		(title "LordFoul'sBane")
		(year 1977))

	([ontology_Class11787] of  Book

		(author [ontology_Class10011])
		(genre "Fantasy")
		(pages 12190)
		(popularity high)
		(rating 322.0)
		(title "TheTwoTowers")
		(year 1954))

	([ontology_Class11788] of  Book

		(author [ontology_Class10068])
		(genre "Classics")
		(pages 3890)
		(popularity high)
		(rating 478.0)
		(title "WatershipDown")
		(year 1972))

	([ontology_Class11789] of  Book

		(author [ontology_Class10469])
		(genre "Thriller")
		(pages 2201)
		(popularity low)
		(rating 252.0)
		(title "DeathatWentwaterCourt")
		(year 1994))

	([ontology_Class11790] of  Book

		(author [ontology_Class10119])
		(genre "Uncategorized")
		(pages 1466)
		(popularity medium)
		(rating 368.0)
		(title "ThePromise")
		(year 1969))

	([ontology_Class11791] of  Book

		(author [ontology_Class10143])
		(genre "Uncategorized")
		(pages 1215)
		(popularity medium)
		(rating 562.0)
		(title "Sophie'sChoice")
		(year 1979))

	([ontology_Class11792] of  Book

		(author [ontology_Class10432])
		(genre "Horror")
		(pages 825)
		(popularity high)
		(rating 317.0)
		(title "IAmLegendandOtherStories")
		(year 1954))

	([ontology_Class11793] of  Book

		(author [ontology_Class10554])
		(genre "Uncategorized")
		(pages 973)
		(popularity medium)
		(rating 304.0)
		(title "TheFuck-Up")
		(year 1997))

	([ontology_Class11794] of  Book

		(author [ontology_Class10002])
		(genre "Uncategorized")
		(pages 831)
		(popularity medium)
		(rating 336.0)
		(title "Amerika")
		(year 1927))

	([ontology_Class11795] of  Book

		(author [ontology_Class10238])
		(genre "Horror")
		(pages 3645)
		(popularity medium)
		(rating 308.0)
		(title "Rosemary'sBaby")
		(year 1967))

	([ontology_Class11796] of  Book

		(author [ontology_Class10209])
		(genre "Uncategorized")
		(pages 898)
		(popularity medium)
		(rating 279.0)
		(title "RequiemforaDream")
		(year 1978))

	([ontology_Class11797] of  Book

		(author [ontology_Class10555])
		(genre "Short Stories")
		(pages 823)
		(popularity low)
		(rating 656.0)
		(title "GuysandDollsandOtherWritings")
		(year 1932))

	([ontology_Class11798] of  Book

		(author [ontology_Class10187])
		(genre "Thriller")
		(pages 2243)
		(popularity medium)
		(rating 201.0)
		(title "TheThinMan")
		(year 1934))

	([ontology_Class11799] of  Book

		(author [ontology_Class10556])
		(genre "Uncategorized")
		(pages 1024)
		(popularity low)
		(rating 199.0)
		(title "MissLonelyheartsandACoolMillion")
		(year 1933))

	([ontology_Class11800] of  Book

		(author [ontology_Class10076])
		(genre "Classics")
		(pages 1469)
		(popularity high)
		(rating 192.0)
		(title "TheOutsiders")
		(year 1967))

	([ontology_Class11801] of  Book

		(author [ontology_Class10473])
		(genre "Thriller")
		(pages 1542)
		(popularity low)
		(rating 296.0)
		(title "DeathatBishop'sKeep")
		(year 1994))

	([ontology_Class11802] of  Book

		(author [ontology_Class10557])
		(genre "Historical")
		(pages 1492)
		(popularity low)
		(rating 406.0)
		(title "APlagueonBothYourHouses")
		(year 1996))

	([ontology_Class11803] of  Book

		(author [ontology_Class10338])
		(genre "Thriller")
		(pages 1594)
		(popularity medium)
		(rating 336.0)
		(title "AMonstrousRegimentofWomen")
		(year 1995))

	([ontology_Class11804] of  Book

		(author [ontology_Class10085])
		(genre "Historical")
		(pages 1609)
		(popularity low)
		(rating 496.0)
		(title "Catilina'sRiddle")
		(year 1993))

	([ontology_Class11805] of  Book

		(author [ontology_Class10082])
		(genre "Thriller")
		(pages 1708)
		(popularity low)
		(rating 336.0)
		(title "BlindJustice")
		(year 1994))

	([ontology_Class11806] of  Book

		(author [ontology_Class10558])
		(genre "Romance")
		(pages 887)
		(popularity low)
		(rating 352.0)
		(title "ChristmasAngel")
		(year 1992))

	([ontology_Class11807] of  Book

		(author [ontology_Class10127])
		(genre "Uncategorized")
		(pages 4528)
		(popularity medium)
		(rating 320.0)
		(title "Ragtime")
		(year 1975))

	([ontology_Class11808] of  Book

		(author [ontology_Class10559])
		(genre "Thriller")
		(pages 1925)
		(popularity low)
		(rating 319.0)
		(title "TheApothecaryRose")
		(year 1993))

	([ontology_Class11809] of  Book

		(author [ontology_Class10084])
		(genre "Historical")
		(pages 1894)
		(popularity low)
		(rating 288.0)
		(title "TheQueen'sMan")
		(year 1996))

	([ontology_Class11810] of  Book

		(author [ontology_Class10560])
		(genre "Thriller")
		(pages 2036)
		(popularity low)
		(rating 432.0)
		(title "AFreeManofColor")
		(year 1997))

	([ontology_Class11811] of  Book

		(author [ontology_Class10008])
		(genre "Classics")
		(pages 16485)
		(popularity high)
		(rating 496.0)
		(title "ATreeGrowsinBrooklyn")
		(year 1943))

	([ontology_Class11812] of  Book

		(author [ontology_Class10561])
		(genre "Thriller")
		(pages 2045)
		(popularity low)
		(rating 437.0)
		(title "Shinju")
		(year 1994))

	([ontology_Class11813] of  Book

		(author [ontology_Class10088])
		(genre "Thriller")
		(pages 2157)
		(popularity medium)
		(rating 206.0)
		(title "TheDaughterofTime")
		(year 1949))

	([ontology_Class11814] of  Book

		(author [ontology_Class10345])
		(genre "Historical")
		(pages 3930)
		(popularity high)
		(rating 498.0)
		(title "TheAlienist")
		(year 1994))

	([ontology_Class11815] of  Book

		(author [ontology_Class10181])
		(genre "Thriller")
		(pages 2169)
		(popularity medium)
		(rating 212.0)
		(title "WhoseBody?")
		(year 1923))

	([ontology_Class11816] of  Book

		(author [ontology_Class10471])
		(genre "Thriller")
		(pages 4518)
		(popularity low)
		(rating 278.0)
		(title "MurderonAstorPlace")
		(year 1999))

	([ontology_Class11817] of  Book

		(author [ontology_Class10009])
		(genre "Classics")
		(pages 8031)
		(popularity high)
		(rating 294.0)
		(title "TheBellJar")
		(year 1963))

	([ontology_Class11818] of  Book

		(author [ontology_Class10193])
		(genre "Uncategorized")
		(pages 6945)
		(popularity high)
		(rating 448.0)
		(title "TheGodfather")
		(year 1969))

	([ontology_Class11819] of  Book

		(author [ontology_Class10307])
		(genre "Classics")
		(pages 12958)
		(popularity high)
		(rating 142.0)
		(title "BreakfastatTiffany's")
		(year 1958))

	([ontology_Class11820] of  Book

		(author [ontology_Class10562])
		(genre "Fantasy")
		(pages 1170)
		(popularity low)
		(rating 280.0)
		(title "ANightintheLonesomeOctober")
		(year 1993))

	([ontology_Class11821] of  Book

		(author [ontology_Class10025])
		(genre "Horror")
		(pages 1250)
		(popularity medium)
		(rating 381.0)
		(title "AnnoDracula")
		(year 1992))

	([ontology_Class11822] of  Book

		(author [ontology_Class10563])
		(genre "Fantasy")
		(pages 1334)
		(popularity low)
		(rating 308.0)
		(title "Thieves'World")
		(year 1979))

	([ontology_Class11823] of  Book

		(author [ontology_Class10296])
		(genre "Uncategorized")
		(pages 550)
		(popularity high)
		(rating 692.0)
		(title "TheThornBirds")
		(year 1977))

	([ontology_Class11824] of  Book

		(author [ontology_Class10564])
		(genre "Romance")
		(pages 1076)
		(popularity medium)
		(rating 372.0)
		(title "LadyBeGood")
		(year 1999))

	([ontology_Class11825] of  Book

		(author [ontology_Class10565])
		(genre "Uncategorized")
		(pages 648)
		(popularity low)
		(rating 304.0)
		(title "PattyJane'sHouseofCurl")
		(year 1995))

	([ontology_Class11826] of  Book

		(author [ontology_Class10566])
		(genre "Historical")
		(pages 1390)
		(popularity low)
		(rating 418.0)
		(title "Depraved:TheDefinitiveTrueStoryofH.H.Holmes,WhoseGrotesqueCrimesShatteredTurn-Of-The-CenturyChicago")
		(year 1994))

	([ontology_Class11827] of  Book

		(author [ontology_Class10288])
		(genre "Uncategorized")
		(pages 708)
		(popularity medium)
		(rating 416.0)
		(title "TheKitchenGod'sWife")
		(year 1991))

	([ontology_Class11828] of  Book

		(author [ontology_Class10380])
		(genre "Uncategorized")
		(pages 711)
		(popularity medium)
		(rating 247.0)
		(title "TheEnchantedApril")
		(year 1922))

	([ontology_Class11829] of  Book

		(author [ontology_Class10037])
		(genre "Fantasy")
		(pages 3369)
		(popularity medium)
		(rating 190.0)
		(title "TheBookofThree")
		(year 1964))

	([ontology_Class11830] of  Book

		(author [ontology_Class10567])
		(genre "Uncategorized")
		(pages 780)
		(popularity medium)
		(rating 496.0)
		(title "TheGroup")
		(year 1963))

	([ontology_Class11831] of  Book

		(author [ontology_Class10170])
		(genre "Uncategorized")
		(pages 1010)
		(popularity low)
		(rating 288.0)
		(title "Ecstasy")
		(year 1996))

	([ontology_Class11832] of  Book

		(author [ontology_Class10537])
		(genre "Uncategorized")
		(pages 1079)
		(popularity medium)
		(rating 397.0)
		(title "UndertheVolcano")
		(year 1947))

	([ontology_Class11833] of  Book

		(author [ontology_Class10156])
		(genre "Fantasy")
		(pages 4432)
		(popularity high)
		(rating 406.0)
		(title "Wicked:TheLifeandTimesoftheWickedWitchoftheWest")
		(year 1995))

	([ontology_Class11834] of  Book

		(author [ontology_Class10317])
		(genre "Fantasy")
		(pages 4669)
		(popularity high)
		(rating 491.0)
		(title "Sabriel")
		(year 1995))

	([ontology_Class11835] of  Book

		(author [ontology_Class10568])
		(genre "Uncategorized")
		(pages 1060)
		(popularity low)
		(rating 384.0)
		(title "PeytonPlace")
		(year 1956))

	([ontology_Class11836] of  Book

		(author [ontology_Class10569])
		(genre "Historical")
		(pages 978)
		(popularity low)
		(rating 336.0)
		(title "Restoration")
		(year 1994))

	([ontology_Class11837] of  Book

		(author [ontology_Class10570])
		(genre "Uncategorized")
		(pages 1112)
		(popularity low)
		(rating 254.0)
		(title "HowtoMakeanAmericanQuilt")
		(year 1991))

	([ontology_Class11838] of  Book

		(author [ontology_Class10198])
		(genre "Uncategorized")
		(pages 1477)
		(popularity medium)
		(rating 1088.0)
		(title "InfiniteJest")
		(year 1996))

	([ontology_Class11839] of  Book

		(author [ontology_Class10483])
		(genre "Uncategorized")
		(pages 1542)
		(popularity medium)
		(rating 208.0)
		(title "PostOffice")
		(year 1971))

	([ontology_Class11840] of  Book

		(author [ontology_Class10414])
		(genre "Horror")
		(pages 6295)
		(popularity medium)
		(rating 420.0)
		(title "TheCallofCthulhuandOtherWeirdStories")
		(year 1926))

	([ontology_Class11841] of  Book

		(author [ontology_Class10065])
		(genre "Classics")
		(pages 1385)
		(popularity high)
		(rating 325.0)
		(title "OneFlewOvertheCuckoo'sNest")
		(year 1962))

	([ontology_Class11842] of  Book

		(author [ontology_Class10204])
		(genre "Classics")
		(pages 1257)
		(popularity medium)
		(rating 257.0)
		(title "Cranford")
		(year 1853))

	([ontology_Class11843] of  Book

		(author [ontology_Class10168])
		(genre "Fantasy")
		(pages 8128)
		(popularity medium)
		(rating 666.0)
		(title "GardensoftheMoon")
		(year 1999))

	([ontology_Class11844] of  Book

		(author [ontology_Class10571])
		(genre "Young")
		(pages 2156)
		(popularity medium)
		(rating 293.0)
		(title "Smack")
		(year 1996))

	([ontology_Class11845] of  Book

		(author [ontology_Class10572])
		(genre "Uncategorized")
		(pages 2119)
		(popularity medium)
		(rating 449.0)
		(title "ValleyoftheDolls")
		(year 1966))

	([ontology_Class11846] of  Book

		(author [ontology_Class10573])
		(genre "Uncategorized")
		(pages 2149)
		(popularity medium)
		(rating 480.0)
		(title "TheFirstWivesClub")
		(year 1992))

	([ontology_Class11847] of  Book

		(author [ontology_Class10197])
		(genre "Uncategorized")
		(pages 2864)
		(popularity medium)
		(rating 289.0)
		(title "NakedLunch")
		(year 1959))

	([ontology_Class11848] of  Book

		(author [ontology_Class10574])
		(genre "Uncategorized")
		(pages 2531)
		(popularity medium)
		(rating 416.0)
		(title "TheSavingGraces")
		(year 1999))

	([ontology_Class11849] of  Book

		(author [ontology_Class10375])
		(genre "Thriller")
		(pages 1368)
		(popularity low)
		(rating 448.0)
		(title "SheWalksTheseHills")
		(year 1994))

	([ontology_Class11850] of  Book

		(author [ontology_Class10199])
		(genre "Uncategorized")
		(pages 760)
		(popularity medium)
		(rating 450.0)
		(title "TribulationForce")
		(year 1996))

	([ontology_Class11851] of  Book

		(author [ontology_Class10575])
		(genre "Fantasy")
		(pages 745)
		(popularity medium)
		(rating 381.0)
		(title "AlvinJourneyman")
		(year 1995))

	([ontology_Class11852] of  Book

		(author [ontology_Class10025])
		(genre "Horror")
		(pages 1580)
		(popularity medium)
		(rating 381.0)
		(title "AnnoDracula")
		(year 1992))

	([ontology_Class11853] of  Book

		(author [ontology_Class10061])
		(genre "Classics")
		(pages 4496)
		(popularity medium)
		(rating 480.0)
		(title "AConnecticutYankeeinKingArthur'sCourt")
		(year 1889))

	([ontology_Class11854] of  Book

		(author [ontology_Class10460])
		(genre "Uncategorized")
		(pages 13379)
		(popularity medium)
		(rating 380.0)
		(title "Fatherland")
		(year 1992))

	([ontology_Class11855] of  Book

		(author [ontology_Class10203])
		(genre "Religious")
		(pages 1244)
		(popularity medium)
		(rating 384.0)
		(title "TheAtonementChild")
		(year 1997))

	([ontology_Class11856] of  Book

		(author [ontology_Class10576])
		(genre "Uncategorized")
		(pages 671)
		(popularity low)
		(rating 626.0)
		(title "CastingOff")
		(year 1995))

	([ontology_Class11857] of  Book

		(author [ontology_Class10577])
		(genre "Historical")
		(pages 675)
		(popularity low)
		(rating 527.0)
		(title "ThePassingBells")
		(year 1978))

	([ontology_Class11858] of  Book

		(author [ontology_Class10578])
		(genre "Uncategorized")
		(pages 778)
		(popularity low)
		(rating 224.0)
		(title "Loving")
		(year 1945))

	([ontology_Class11859] of  Book

		(author [ontology_Class10221])
		(genre "Classics")
		(pages 903)
		(popularity high)
		(rating 912.0)
		(title "Middlemarch")
		(year 1871))

	([ontology_Class11860] of  Book

		(author [ontology_Class10579])
		(genre "Uncategorized")
		(pages 920)
		(popularity low)
		(rating 19.0)
		(title "CompleteBarchesterChronicles")
		(year 1857))

	([ontology_Class11861] of  Book

		(author [ontology_Class10387])
		(genre "Religious")
		(pages 2069)
		(popularity low)
		(rating 426.0)
		(title "Sophie'sHeart")
		(year 1995))

	([ontology_Class11862] of  Book

		(author [ontology_Class10415])
		(genre "Classics")
		(pages 1097)
		(popularity medium)
		(rating 256.0)
		(title "Maurice")
		(year 1971))

	([ontology_Class11863] of  Book

		(author [ontology_Class10181])
		(genre "Thriller")
		(pages 1436)
		(popularity medium)
		(rating 288.0)
		(title "CloudsofWitness")
		(year 1926))

	([ontology_Class11864] of  Book

		(author [ontology_Class10338])
		(genre "Thriller")
		(pages 1452)
		(popularity medium)
		(rating 341.0)
		(title "TheBeekeeper'sApprentice")
		(year 1994))

	([ontology_Class11865] of  Book

		(author [ontology_Class10580])
		(genre "Young")
		(pages 1525)
		(popularity low)
		(rating 224.0)
		(title "Flambards")
		(year 1967))

	([ontology_Class11866] of  Book

		(author [ontology_Class10581])
		(genre "Classics")
		(pages 1965)
		(popularity low)
		(rating 326.0)
		(title "TheGo-Between")
		(year 1953))

	([ontology_Class11867] of  Book

		(author [ontology_Class10582])
		(genre "Historical")
		(pages 2791)
		(popularity medium)
		(rating 483.0)
		(title "Birdsong")
		(year 1993))

	([ontology_Class11868] of  Book

		(author [ontology_Class10227])
		(genre "Classics")
		(pages 2975)
		(popularity medium)
		(rating 635.0)
		(title "ThePortraitofaLady")
		(year 1881))

	([ontology_Class11869] of  Book

		(author [ontology_Class10402])
		(genre "Horror")
		(pages 742)
		(popularity medium)
		(rating 354.0)
		(title "MemnochtheDevil")
		(year 1995))

	([ontology_Class11870] of  Book

		(author [ontology_Class10583])
		(genre "Fantasy")
		(pages 874)
		(popularity low)
		(rating 400.0)
		(title "Archangel")
		(year 1996))

	([ontology_Class11871] of  Book

		(author [ontology_Class10135])
		(genre "Classics")
		(pages 7511)
		(popularity medium)
		(rating 872.0)
		(title "TheForsyteSaga")
		(year 1921))

	([ontology_Class11872] of  Book

		(author [ontology_Class10045])
		(genre "Classics")
		(pages 20995)
		(popularity high)
		(rating 152.0)
		(title "Siddhartha")
		(year 1922))

	([ontology_Class11873] of  Book

		(author [ontology_Class10584])
		(genre "Historical")
		(pages 493)
		(popularity low)
		(rating 1024.0)
		(title "TheLightBearer")
		(year 1994))

	([ontology_Class11874] of  Book

		(author [ontology_Class10397])
		(genre "Fantasy")
		(pages 520)
		(popularity low)
		(rating 928.0)
		(title "MaryStewart'sMerlinTrilogy")
		(year 1978))

	([ontology_Class11875] of  Book

		(author [ontology_Class10005])
		(genre "Uncategorized")
		(pages 544)
		(popularity low)
		(rating 329.0)
		(title "TheHouseontheStrand")
		(year 1969))

	([ontology_Class11876] of  Book

		(author [ontology_Class10102])
		(genre "Historical")
		(pages 562)
		(popularity low)
		(rating 526.0)
		(title "DevilWater")
		(year 1961))

	([ontology_Class11877] of  Book

		(author [ontology_Class10223])
		(genre "Romance")
		(pages 683)
		(popularity low)
		(rating 352.0)
		(title "TheUnknownAjax")
		(year 1959))

	([ontology_Class11878] of  Book

		(author [ontology_Class10585])
		(genre "Historical")
		(pages 782)
		(popularity low)
		(rating 832.0)
		(title "TheProudBreed")
		(year 1978))

	([ontology_Class11879] of  Book

		(author [ontology_Class10358])
		(genre "Thriller")
		(pages 851)
		(popularity medium)
		(rating 337.0)
		(title "CrocodileontheSandbank")
		(year 1975))

	([ontology_Class11880] of  Book

		(author [ontology_Class10586])
		(genre "Historical")
		(pages 941)
		(popularity low)
		(rating 320.0)
		(title "CeliaGarth")
		(year 1959))

	([ontology_Class11881] of  Book

		(author [ontology_Class10587])
		(genre "Historical")
		(pages 942)
		(popularity low)
		(rating 703.0)
		(title "NowFacetoFace")
		(year 1995))

	([ontology_Class11882] of  Book

		(author [ontology_Class10588])
		(genre "Romance")
		(pages 1036)
		(popularity low)
		(rating 608.0)
		(title "Alinor")
		(year 1978))

	([ontology_Class11883] of  Book

		(author [ontology_Class10224])
		(genre "Romance")
		(pages 1082)
		(popularity low)
		(rating 664.0)
		(title "AshesintheWind")
		(year 1979))

	([ontology_Class11884] of  Book

		(author [ontology_Class10399])
		(genre "Fantasy")
		(pages 365)
		(popularity medium)
		(rating 256.0)
		(title "Beauty:ARetellingoftheStoryofBeautyandtheBeast")
		(year 1978))

	([ontology_Class11885] of  Book

		(author [ontology_Class10092])
		(genre "Historical")
		(pages 1135)
		(popularity low)
		(rating 553.0)
		(title "TradeWind")
		(year 1963))

	([ontology_Class11886] of  Book

		(author [ontology_Class10589])
		(genre "Historical")
		(pages 1180)
		(popularity low)
		(rating 704.0)
		(title "Penmarric")
		(year 1971))

	([ontology_Class11887] of  Book

		(author [ontology_Class10325])
		(genre "Young")
		(pages 470)
		(popularity medium)
		(rating 698.0)
		(title "KissedbyanAngel/ThePowerofLove/Soulmates")
		(year 1995))

	([ontology_Class11888] of  Book

		(author [ontology_Class10590])
		(genre "Historical")
		(pages 1333)
		(popularity medium)
		(rating 455.0)
		(title "RossPoldark")
		(year 1945))

	([ontology_Class11889] of  Book

		(author [ontology_Class10591])
		(genre "Historical")
		(pages 1380)
		(popularity medium)
		(rating 448.0)
		(title "TheManyLivesSecretSorrowsofJosephineB.")
		(year 1995))

	([ontology_Class11890] of  Book

		(author [ontology_Class10204])
		(genre "Classics")
		(pages 1884)
		(popularity high)
		(rating 521.0)
		(title "NorthandSouth")
		(year 1855))

	([ontology_Class11891] of  Book

		(author [ontology_Class10202])
		(genre "Classics")
		(pages 2173)
		(popularity medium)
		(rating 495.0)
		(title "DoctorZhivago")
		(year 1957))

	([ontology_Class11892] of  Book

		(author [ontology_Class10096])
		(genre "Historical")
		(pages 3401)
		(popularity medium)
		(rating 972.0)
		(title "ForeverAmber")
		(year 1944))

	([ontology_Class11893] of  Book

		(author [ontology_Class10014])
		(genre "Uncategorized")
		(pages 6602)
		(popularity high)
		(rating 503.0)
		(title "MemoirsofaGeisha")
		(year 1997))

	([ontology_Class11894] of  Book

		(author [ontology_Class10592])
		(genre "Uncategorized")
		(pages 449)
		(popularity low)
		(rating 376.0)
		(title "SoBig")
		(year 1924))

	([ontology_Class11895] of  Book

		(author [ontology_Class10519])
		(genre "Classics")
		(pages 1449)
		(popularity medium)
		(rating 324.0)
		(title "TarzanoftheApes")
		(year 1912))

	([ontology_Class11896] of  Book

		(author [ontology_Class10413])
		(genre "Classics")
		(pages 3694)
		(popularity medium)
		(rating 277.0)
		(title "TheJungleBook")
		(year 1893))

	([ontology_Class11897] of  Book

		(author [ontology_Class10552])
		(genre "Classics")
		(pages 1129)
		(popularity medium)
		(rating 358.0)
		(title "OntheBanksofPlumCreek")
		(year 1937))

	([ontology_Class11898] of  Book

		(author [ontology_Class10593])
		(genre "Classics")
		(pages 1134)
		(popularity medium)
		(rating 228.0)
		(title "Emily'sQuest")
		(year 1927))

	([ontology_Class11899] of  Book

		(author [ontology_Class10054])
		(genre "Classics")
		(pages 1155)
		(popularity medium)
		(rating 448.0)
		(title "TheReturnoftheNative")
		(year 1878))

	([ontology_Class11900] of  Book

		(author [ontology_Class10155])
		(genre "Uncategorized")
		(pages 1185)
		(popularity high)
		(rating 337.0)
		(title "TheShippingNews")
		(year 1993))

	([ontology_Class11901] of  Book

		(author [ontology_Class10142])
		(genre "Classics")
		(pages 1250)
		(popularity medium)
		(rating 496.0)
		(title "TheSwissFamilyRobinson")
		(year 1812))

	([ontology_Class11902] of  Book

		(author [ontology_Class10055])
		(genre "Classics")
		(pages 1294)
		(popularity high)
		(rating 882.0)
		(title "DavidCopperfield")
		(year 1849))

	([ontology_Class11903] of  Book

		(author [ontology_Class10374])
		(genre "Classics")
		(pages 1307)
		(popularity medium)
		(rating 351.0)
		(title "BridesheadRevisited:TheSacredandProfaneMemoriesofCaptainCharlesRyder")
		(year 1945))

	([ontology_Class11904] of  Book

		(author [ontology_Class10064])
		(genre "Uncategorized")
		(pages 1426)
		(popularity high)
		(rating 209.0)
		(title "ThingsFallApart")
		(year 1958))

	([ontology_Class11905] of  Book

		(author [ontology_Class10594])
		(genre "Classics")
		(pages 1517)
		(popularity medium)
		(rating 159.0)
		(title "OPioneers!")
		(year 1913))

	([ontology_Class11906] of  Book

		(author [ontology_Class10296])
		(genre "Uncategorized")
		(pages 1655)
		(popularity high)
		(rating 692.0)
		(title "TheThornBirds")
		(year 1977))

	([ontology_Class11907] of  Book

		(author [ontology_Class10149])
		(genre "Classics")
		(pages 1816)
		(popularity high)
		(rating 272.0)
		(title "WheretheRedFernGrows")
		(year 1961))

	([ontology_Class11908] of  Book

		(author [ontology_Class10241])
		(genre "Uncategorized")
		(pages 2217)
		(popularity medium)
		(rating 343.0)
		(title "ICapturetheCastle")
		(year 1948))

	([ontology_Class11909] of  Book

		(author [ontology_Class10106])
		(genre "Historical")
		(pages 2223)
		(popularity high)
		(rating 356.0)
		(title "ColdMountain")
		(year 1997))

	([ontology_Class11910] of  Book

		(author [ontology_Class10389])
		(genre "Uncategorized")
		(pages 2319)
		(popularity medium)
		(rating 512.0)
		(title "Christy")
		(year 1967))

	([ontology_Class11911] of  Book

		(author [ontology_Class10218])
		(genre "Uncategorized")
		(pages 2446)
		(popularity medium)
		(rating 240.0)
		(title "ColdComfortFarm")
		(year 1932))

	([ontology_Class11912] of  Book

		(author [ontology_Class10162])
		(genre "Classics")
		(pages 3109)
		(popularity high)
		(rating 418.0)
		(title "TheGoodEarth")
		(year 1931))

	([ontology_Class11913] of  Book

		(author [ontology_Class10113])
		(genre "Classics")
		(pages 3128)
		(popularity high)
		(rating 239.0)
		(title "Alice'sAdventuresinWonderlandThroughtheLooking-Glass")
		(year 1872))

	([ontology_Class11914] of  Book

		(author [ontology_Class10032])
		(genre "Fantasy")
		(pages 3222)
		(popularity high)
		(rating 139.0)
		(title "TuckEverlasting")
		(year 1975))

	([ontology_Class11915] of  Book

		(author [ontology_Class10028])
		(genre "Classics")
		(pages 3826)
		(popularity high)
		(rating 433.0)
		(title "Dracula")
		(year 1897))

	([ontology_Class11916] of  Book

		(author [ontology_Class10060])
		(genre "Classics")
		(pages 4737)
		(popularity high)
		(rating 601.0)
		(title "EastofEden")
		(year 1952))

	([ontology_Class11917] of  Book

		(author [ontology_Class10068])
		(genre "Classics")
		(pages 4795)
		(popularity high)
		(rating 478.0)
		(title "WatershipDown")
		(year 1972))

	([ontology_Class11918] of  Book

		(author [ontology_Class10073])
		(genre "Classics")
		(pages 6767)
		(popularity high)
		(rating 122.0)
		(title "AnimalFarm")
		(year 1945))

	([ontology_Class11919] of  Book

		(author [ontology_Class10011])
		(genre "Fantasy")
		(pages 7451)
		(popularity high)
		(rating 366.0)
		(title "TheHobbit")
		(year 1937))

	([ontology_Class11920] of  Book

		(author [ontology_Class10016])
		(genre "Classics")
		(pages 7622)
		(popularity high)
		(rating 1037.0)
		(title "GonewiththeWind")
		(year 1936))

	([ontology_Class11921] of  Book

		(author [ontology_Class10007])
		(genre "Classics")
		(pages 12067)
		(popularity high)
		(rating 449.0)
		(title "LittleWomen")
		(year 1868))

	([ontology_Class11922] of  Book

		(author [ontology_Class10265])
		(genre "Classics")
		(pages 15491)
		(popularity high)
		(rating 331.0)
		(title "TheSecretGarden")
		(year 1911))

	([ontology_Class11923] of  Book

		(author [ontology_Class10067])
		(genre "Fantasy")
		(pages 797)
		(popularity high)
		(rating 399.0)
		(title "TheGoldenCompass")
		(year 1995))

	([ontology_Class11924] of  Book

		(author [ontology_Class10595])
		(genre "Young")
		(pages 975)
		(popularity medium)
		(rating 228.0)
		(title "KeepingtheMoon")
		(year 1999))

	([ontology_Class11925] of  Book

		(author [ontology_Class10057])
		(genre "Thriller")
		(pages 1344)
		(popularity high)
		(rating 182.0)
		(title "TheWestingGame")
		(year 1978))

	([ontology_Class11926] of  Book

		(author [ontology_Class10034])
		(genre "Uncategorized")
		(pages 1433)
		(popularity high)
		(rating 176.0)
		(title "TheBadBeginning")
		(year 1999))

	([ontology_Class11927] of  Book

		(author [ontology_Class10038])
		(genre "Fantasy")
		(pages 2274)
		(popularity high)
		(rating 398.0)
		(title "ThePrincessBride")
		(year 1973))

	([ontology_Class11928] of  Book

		(author [ontology_Class10040])
		(genre "Fantasy")
		(pages 3300)
		(popularity high)
		(rating 211.0)
		(title "AWrinkleinTime")
		(year 1962))

	([ontology_Class11929] of  Book

		(author [ontology_Class10076])
		(genre "Classics")
		(pages 3955)
		(popularity high)
		(rating 192.0)
		(title "TheOutsiders")
		(year 1967))

	([ontology_Class11930] of  Book

		(author [ontology_Class10052])
		(genre "Young")
		(pages 3828)
		(popularity high)
		(rating 280.0)
		(title "WalkTwoMoons")
		(year 1994))

	([ontology_Class11931] of  Book

		(author [ontology_Class10009])
		(genre "Classics")
		(pages 676)
		(popularity high)
		(rating 294.0)
		(title "TheBellJar")
		(year 1963))

	([ontology_Class11932] of  Book

		(author [ontology_Class10596])
		(genre "Uncategorized")
		(pages 583)
		(popularity medium)
		(rating 369.0)
		(title "PicturePerfect")
		(year 1995))

	([ontology_Class11933] of  Book

		(author [ontology_Class10094])
		(genre "Historical")
		(pages 282)
		(popularity medium)
		(rating 1152.0)
		(title "London")
		(year 1997))

	([ontology_Class11934] of  Book

		(author [ontology_Class10415])
		(genre "Classics")
		(pages 239)
		(popularity medium)
		(rating 376.0)
		(title "APassagetoIndia")
		(year 1924))

	([ontology_Class11935] of  Book

		(author [ontology_Class10333])
		(genre "Historical")
		(pages 276)
		(popularity low)
		(rating 352.0)
		(title "TheKingMustDie")
		(year 1958))

	([ontology_Class11936] of  Book

		(author [ontology_Class10030])
		(genre "Fantasy")
		(pages 614)
		(popularity medium)
		(rating 362.0)
		(title "WildMagic")
		(year 1992))

	([ontology_Class11937] of  Book

		(author [ontology_Class10550])
		(genre "Romance")
		(pages 234)
		(popularity medium)
		(rating 512.0)
		(title "CarnalInnocence")
		(year 1991))

	([ontology_Class11938] of  Book

		(author [ontology_Class10288])
		(genre "Uncategorized")
		(pages 659)
		(popularity medium)
		(rating 406.0)
		(title "TheHundredSecretSenses")
		(year 1995))

	([ontology_Class11939] of  Book

		(author [ontology_Class10073])
		(genre "Uncategorized")
		(pages 693)
		(popularity medium)
		(rating 376.0)
		(title "BurmeseDays")
		(year 1934))

	([ontology_Class11940] of  Book

		(author [ontology_Class10067])
		(genre "Fantasy")
		(pages 655)
		(popularity high)
		(rating 326.0)
		(title "TheSubtleKnife")
		(year 1997))

	([ontology_Class11941] of  Book

		(author [ontology_Class10051])
		(genre "Uncategorized")
		(pages 249)
		(popularity high)
		(rating 373.0)
		(title "TheMasterandMargarita")
		(year 1967))

	([ontology_Class11942] of  Book

		(author [ontology_Class10066])
		(genre "Classics")
		(pages 252)
		(popularity high)
		(rating 293.0)
		(title "AFarewelltoArms")
		(year 1929))

	([ontology_Class11943] of  Book

		(author [ontology_Class10111])
		(genre "Classics")
		(pages 757)
		(popularity high)
		(rating 417.0)
		(title "Lolita")
		(year 1955))

	([ontology_Class11944] of  Book

		(author [ontology_Class10097])
		(genre "Historical")
		(pages 955)
		(popularity medium)
		(rating 734.0)
		(title "Tai-Pan")
		(year 1966))

	([ontology_Class11945] of  Book

		(author [ontology_Class10597])
		(genre "Uncategorized")
		(pages 566)
		(popularity high)
		(rating 384.0)
		(title "Midwives")
		(year 1997))

	([ontology_Class11946] of  Book

		(author [ontology_Class10182])
		(genre "Thriller")
		(pages 2901)
		(popularity high)
		(rating 322.0)
		(title "MurderontheOrientExpress")
		(year 1934))

	([ontology_Class11947] of  Book

		(author [ontology_Class10598])
		(genre "Uncategorized")
		(pages 300)
		(popularity medium)
		(rating 0.0)
		(title "ThePigman")
		(year 1968))

	([ontology_Class11948] of  Book

		(author [ontology_Class10342])
		(genre "Uncategorized")
		(pages 344)
		(popularity low)
		(rating 254.0)
		(title "TravelswithMyAunt")
		(year 1969))

	([ontology_Class11949] of  Book

		(author [ontology_Class10010])
		(genre "Uncategorized")
		(pages 851)
		(popularity high)
		(rating 216.0)
		(title "TheReader")
		(year 1995))

	([ontology_Class11950] of  Book

		(author [ontology_Class10015])
		(genre "Romance")
		(pages 671)
		(popularity high)
		(rating 240.0)
		(title "AWalktoRemember")
		(year 1999))

	([ontology_Class11951] of  Book

		(author [ontology_Class10045])
		(genre "Classics")
		(pages 1887)
		(popularity high)
		(rating 152.0)
		(title "Siddhartha")
		(year 1922))

	([ontology_Class11952] of  Book

		(author [ontology_Class10208])
		(genre "Uncategorized")
		(pages 900)
		(popularity medium)
		(rating 320.0)
		(title "BastardOutofCarolina")
		(year 1992))

	([ontology_Class11953] of  Book

		(author [ontology_Class10240])
		(genre "Horror")
		(pages 1226)
		(popularity medium)
		(rating 146.0)
		(title "WeHaveAlwaysLivedintheCastle")
		(year 1962))

	([ontology_Class11954] of  Book

		(author [ontology_Class10335])
		(genre "Thriller")
		(pages 807)
		(popularity medium)
		(rating 197.0)
		(title "AMorbidTasteforBones")
		(year 1977))

	([ontology_Class11955] of  Book

		(author [ontology_Class10265])
		(genre "Classics")
		(pages 475)
		(popularity high)
		(rating 368.0)
		(title "TheSecretGarden")
		(year 1911))

	([ontology_Class11956] of  Book

		(author [ontology_Class10223])
		(genre "Romance")
		(pages 2673)
		(popularity medium)
		(rating 352.0)
		(title "TheseOldShades")
		(year 1926))

	([ontology_Class11957] of  Book

		(author [ontology_Class10197])
		(genre "Uncategorized")
		(pages 826)
		(popularity medium)
		(rating 289.0)
		(title "NakedLunch")
		(year 1959))

	([ontology_Class11958] of  Book

		(author [ontology_Class10599])
		(genre "Uncategorized")
		(pages 1067)
		(popularity medium)
		(rating 320.0)
		(title "OneTrueThing")
		(year 1994))

	([ontology_Class11959] of  Book

		(author [ontology_Class10229])
		(genre "Classics")
		(pages 490)
		(popularity high)
		(rating 190.0)
		(title "TheAwakening")
		(year 1899))

	([ontology_Class11960] of  Book

		(author [ontology_Class10248])
		(genre "Short Stories")
		(pages 1529)
		(popularity medium)
		(rating 252.0)
		(title "AGoodManisHardtoFindandOtherStories")
		(year 1953))

	([ontology_Class11961] of  Book

		(author [ontology_Class10306])
		(genre "Classics")
		(pages 854)
		(popularity high)
		(rating 275.0)
		(title "Slaughterhouse-Five")
		(year 1969))

	([ontology_Class11962] of  Book

		(author [ontology_Class10201])
		(genre "Uncategorized")
		(pages 887)
		(popularity high)
		(rating 383.0)
		(title "DivineSecretsoftheYa-YaSisterhood")
		(year 1996))

	([ontology_Class11963] of  Book

		(author [ontology_Class10600])
		(genre "Uncategorized")
		(pages 612)
		(popularity medium)
		(rating 592.0)
		(title "BeachMusic")
		(year 1995))

	([ontology_Class11964] of  Book

		(author [ontology_Class10099])
		(genre "Historical")
		(pages 618)
		(popularity medium)
		(rating 776.0)
		(title "TheAgonyandtheEcstasy")
		(year 1958))

	([ontology_Class11965] of  Book

		(author [ontology_Class10110])
		(genre "Classics")
		(pages 1887)
		(popularity high)
		(rating 960.0)
		(title "AnnaKarenina")
		(year 1877))

	([ontology_Class11966] of  Book

		(author [ontology_Class10040])
		(genre "Fantasy")
		(pages 1969)
		(popularity high)
		(rating 211.0)
		(title "AWrinkleinTime")
		(year 1962))

	([ontology_Class11967] of  Book

		(author [ontology_Class10012])
		(genre "Romance")
		(pages 695)
		(popularity medium)
		(rating 352.0)
		(title "BridgetJones:TheEdgeofReason")
		(year 1999))

	([ontology_Class11968] of  Book

		(author [ontology_Class10200])
		(genre "Uncategorized")
		(pages 1247)
		(popularity high)
		(rating 376.0)
		(title "WheretheHeartIs")
		(year 1995))

	([ontology_Class11969] of  Book

		(author [ontology_Class10101])
		(genre "Historical")
		(pages 715)
		(popularity medium)
		(rating 832.0)
		(title "Trinity")
		(year 1976))

	([ontology_Class11970] of  Book

		(author [ontology_Class10549])
		(genre "Uncategorized")
		(pages 1029)
		(popularity high)
		(rating 260.0)
		(title "TheVirginSuicides")
		(year 1993))

	([ontology_Class11971] of  Book

		(author [ontology_Class10049])
		(genre "Uncategorized")
		(pages 1113)
		(popularity medium)
		(rating 260.0)
		(title "IfonaWinter'sNightaTraveler")
		(year 1979))

	([ontology_Class11972] of  Book

		(author [ontology_Class10107])
		(genre "Historical")
		(pages 1537)
		(popularity high)
		(rating 336.0)
		(title "TheRedTent")
		(year 1997))

	([ontology_Class11973] of  Book

		(author [ontology_Class10520])
		(genre "Young")
		(pages 1190)
		(popularity medium)
		(rating 233.0)
		(title "IAmtheCheese")
		(year 1977))

	([ontology_Class11974] of  Book

		(author [ontology_Class10185])
		(genre "Uncategorized")
		(pages 1879)
		(popularity high)
		(rating 460.0)
		(title "SnowFallingonCedars")
		(year 1994))

	([ontology_Class11975] of  Book

		(author [ontology_Class10163])
		(genre "Classics")
		(pages 1145)
		(popularity high)
		(rating 307.0)
		(title "OntheRoad")
		(year 1955))

	([ontology_Class11976] of  Book

		(author [ontology_Class10014])
		(genre "Uncategorized")
		(pages 1922)
		(popularity high)
		(rating 434.0)
		(title "MemoirsofaGeisha")
		(year 1997))

	([ontology_Class11977] of  Book

		(author [ontology_Class10113])
		(genre "Classics")
		(pages 6401)
		(popularity high)
		(rating 239.0)
		(title "Alice'sAdventuresinWonderlandThroughtheLooking-Glass")
		(year 1872))

	([ontology_Class11978] of  Book

		(author [ontology_Class10296])
		(genre "Uncategorized")
		(pages 1402)
		(popularity high)
		(rating 692.0)
		(title "TheThornBirds")
		(year 1977))

	([ontology_Class11979] of  Book

		(author [ontology_Class10006])
		(genre "Classics")
		(pages 1991)
		(popularity high)
		(rating 279.0)
		(title "PrideandPrejudice")
		(year 1813))

	([ontology_Class11980] of  Book

		(author [ontology_Class10156])
		(genre "Fantasy")
		(pages 2026)
		(popularity high)
		(rating 406.0)
		(title "Wicked:TheLifeandTimesoftheWickedWitchoftheWest")
		(year 1995))

	([ontology_Class11981] of  Book

		(author [ontology_Class10402])
		(genre "Horror")
		(pages 1829)
		(popularity high)
		(rating 342.0)
		(title "InterviewwiththeVampire")
		(year 1976))

	([ontology_Class11982] of  Book

		(author [ontology_Class10008])
		(genre "Classics")
		(pages 2389)
		(popularity high)
		(rating 496.0)
		(title "ATreeGrowsinBrooklyn")
		(year 1943))

	([ontology_Class11983] of  Book

		(author [ontology_Class10068])
		(genre "Classics")
		(pages 2163)
		(popularity high)
		(rating 478.0)
		(title "WatershipDown")
		(year 1972))

	([ontology_Class11984] of  Book

		(author [ontology_Class10261])
		(genre "Horror")
		(pages 2236)
		(popularity medium)
		(rating 293.0)
		(title "SomethingWickedThisWayComes")
		(year 1962))

	([ontology_Class11985] of  Book

		(author [ontology_Class10112])
		(genre "Classics")
		(pages 2424)
		(popularity high)
		(rating 453.0)
		(title "Catch-22")
		(year 1961))

	([ontology_Class11986] of  Book

		(author [ontology_Class10065])
		(genre "Classics")
		(pages 2558)
		(popularity high)
		(rating 325.0)
		(title "OneFlewOvertheCuckoo'sNest")
		(year 1962))

	([ontology_Class11987] of  Book

		(author [ontology_Class10075])
		(genre "Classics")
		(pages 3495)
		(popularity high)
		(rating 182.0)
		(title "LordoftheFlies")
		(year 1954))

	([ontology_Class11988] of  Book

		(author [ontology_Class10601])
		(genre "Thriller")
		(pages 339)
		(popularity high)
		(rating 449.0)
		(title "AlongCameaSpider")
		(year 1993))

	([ontology_Class11989] of  Book

		(author [ontology_Class10038])
		(genre "Uncategorized")
		(pages 374)
		(popularity medium)
		(rating 236.0)
		(title "MarathonMan")
		(year 1974))

	([ontology_Class11990] of  Book

		(author [ontology_Class10054])
		(genre "Classics")
		(pages 379)
		(popularity high)
		(rating 518.0)
		(title "TessoftheD'Urbervilles")
		(year 1891))

	([ontology_Class11991] of  Book

		(author [ontology_Class10602])
		(genre "Horror")
		(pages 388)
		(popularity low)
		(rating 448.0)
		(title "Valentine")
		(year 1996))

	([ontology_Class11992] of  Book

		(author [ontology_Class10443])
		(genre "Romance")
		(pages 819)
		(popularity low)
		(rating 224.0)
		(title "TheTemporaryWife")
		(year 1997))

	([ontology_Class11993] of  Book

		(author [ontology_Class10292])
		(genre "Horror")
		(pages 426)
		(popularity high)
		(rating 1153.0)
		(title "TheStand")
		(year 1978))

	([ontology_Class11994] of  Book

		(author [ontology_Class10417])
		(genre "Romance")
		(pages 881)
		(popularity medium)
		(rating 533.0)
		(title "PrinceCharming")
		(year 1994))

	([ontology_Class11995] of  Book

		(author [ontology_Class10603])
		(genre "Romance")
		(pages 992)
		(popularity low)
		(rating 382.0)
		(title "ThunderRoses")
		(year 1993))

	([ontology_Class11996] of  Book

		(author [ontology_Class10604])
		(genre "Romance")
		(pages 1100)
		(popularity medium)
		(rating 400.0)
		(title "DreamingofYou")
		(year 1994))

	([ontology_Class11997] of  Book

		(author [ontology_Class10280])
		(genre "Fantasy")
		(pages 542)
		(popularity high)
		(rating 435.0)
		(title "HarryPotterandthePrisonerofAzkaban")
		(year 1999))

	([ontology_Class11998] of  Book

		(author [ontology_Class10064])
		(genre "Uncategorized")
		(pages 567)
		(popularity high)
		(rating 209.0)
		(title "ThingsFallApart")
		(year 1958))

	([ontology_Class11999] of  Book

		(author [ontology_Class10225])
		(genre "Romance")
		(pages 1350)
		(popularity medium)
		(rating 533.0)
		(title "FlowersfromtheStorm")
		(year 1992))

	([ontology_Class12000] of  Book

		(author [ontology_Class10442])
		(genre "Romance")
		(pages 1516)
		(popularity low)
		(rating 342.0)
		(title "CharmingthePrince")
		(year 1999))

	([ontology_Class12001] of  Book

		(author [ontology_Class10035])
		(genre "Fantasy")
		(pages 680)
		(popularity medium)
		(rating 220.0)
		(title "TheThief")
		(year 1996))

	([ontology_Class12002] of  Book

		(author [ontology_Class10162])
		(genre "Classics")
		(pages 553)
		(popularity high)
		(rating 418.0)
		(title "TheGoodEarth")
		(year 1931))

	([ontology_Class12003] of  Book

		(author [ontology_Class10224])
		(genre "Romance")
		(pages 1816)
		(popularity low)
		(rating 672.0)
		(title "Shanna")
		(year 1977))

	([ontology_Class12004] of  Book

		(author [ontology_Class10193])
		(genre "Uncategorized")
		(pages 839)
		(popularity high)
		(rating 448.0)
		(title "TheGodfather")
		(year 1969))

	([ontology_Class12005] of  Book

		(author [ontology_Class10145])
		(genre "Romance")
		(pages 2185)
		(popularity low)
		(rating 483.0)
		(title "ComancheMoon")
		(year 1991))

	([ontology_Class12006] of  Book

		(author [ontology_Class10238])
		(genre "Horror")
		(pages 959)
		(popularity medium)
		(rating 144.0)
		(title "TheStepfordWives")
		(year 1972))

	([ontology_Class12007] of  Book

		(author [ontology_Class10077])
		(genre "Classics")
		(pages 1237)
		(popularity high)
		(rating 180.0)
		(title "TheGreatGatsby")
		(year 1925))

	([ontology_Class12008] of  Book

		(author [ontology_Class10005])
		(genre "Classics")
		(pages 1151)
		(popularity high)
		(rating 410.0)
		(title "Rebecca")
		(year 1938))

	([ontology_Class12009] of  Book

		(author [ontology_Class10317])
		(genre "Fantasy")
		(pages 761)
		(popularity high)
		(rating 491.0)
		(title "Sabriel")
		(year 1995))

	([ontology_Class12010] of  Book

		(author [ontology_Class10397])
		(genre "Fantasy")
		(pages 653)
		(popularity medium)
		(rating 513.0)
		(title "TheLastEnchantment")
		(year 1979))

	([ontology_Class12011] of  Book

		(author [ontology_Class10134])
		(genre "Uncategorized")
		(pages 996)
		(popularity low)
		(rating 1408.0)
		(title "TheBourneTrilogy")
		(year 1991))

	([ontology_Class12012] of  Book

		(author [ontology_Class10338])
		(genre "Thriller")
		(pages 662)
		(popularity medium)
		(rating 341.0)
		(title "TheBeekeeper'sApprentice")
		(year 1994))

	([ontology_Class12013] of  Book

		(author [ontology_Class10246])
		(genre "Historical")
		(pages 663)
		(popularity low)
		(rating 192.0)
		(title "TheGentlemanOutlawandMe--Eli")
		(year 1996))

	([ontology_Class12014] of  Book

		(author [ontology_Class10016])
		(genre "Classics")
		(pages 3927)
		(popularity high)
		(rating 1037.0)
		(title "GonewiththeWind")
		(year 1936))

	([ontology_Class12015] of  Book

		(author [ontology_Class10011])
		(genre "Fantasy")
		(pages 1743)
		(popularity high)
		(rating 277.0)
		(title "TheReturnoftheKing")
		(year 1955))

	([ontology_Class12016] of  Book

		(author [ontology_Class10605])
		(genre "Young")
		(pages 2236)
		(popularity high)
		(rating 204.0)
		(title "TheGiver")
		(year 1993))

	([ontology_Class12017] of  Book

		(author [ontology_Class10606])
		(genre "Uncategorized")
		(pages 458)
		(popularity medium)
		(rating 217.0)
		(title "ARiverRunsThroughitandOtherStories")
		(year 1976))

	([ontology_Class12018] of  Book

		(author [ontology_Class10607])
		(genre "Short Stories")
		(pages 470)
		(popularity low)
		(rating 378.0)
		(title "ParisStories")
		(year 1995))

	([ontology_Class12019] of  Book

		(author [ontology_Class10399])
		(genre "Fantasy")
		(pages 964)
		(popularity medium)
		(rating 304.0)
		(title "RoseDaughter")
		(year 1997))

	([ontology_Class12020] of  Book

		(author [ontology_Class10608])
		(genre "Westerns")
		(pages 484)
		(popularity low)
		(rating 544.0)
		(title "TheCompleteWesternStoriesofElmoreLeonard")
		(year 1975))

	([ontology_Class12021] of  Book

		(author [ontology_Class10100])
		(genre "Historical")
		(pages 1027)
		(popularity medium)
		(rating 422.0)
		(title "PopeJoan")
		(year 1996))

	([ontology_Class12022] of  Book

		(author [ontology_Class10558])
		(genre "Romance")
		(pages 1044)
		(popularity low)
		(rating 371.0)
		(title "MyLadyNotorious")
		(year 1993))

	([ontology_Class12023] of  Book

		(author [ontology_Class10609])
		(genre "Romance")
		(pages 1427)
		(popularity low)
		(rating 384.0)
		(title "LadyRogue")
		(year 1997))

	([ontology_Class12024] of  Book

		(author [ontology_Class10220])
		(genre "Uncategorized")
		(pages 615)
		(popularity medium)
		(rating 384.0)
		(title "DeathinVeniceandOtherTales")
		(year 1911))

	([ontology_Class12025] of  Book

		(author [ontology_Class10307])
		(genre "Short Stories")
		(pages 642)
		(popularity low)
		(rating 320.0)
		(title "TheCompleteStoriesofTrumanCapote")
		(year 1993))

	([ontology_Class12026] of  Book

		(author [ontology_Class10136])
		(genre "Classics")
		(pages 648)
		(popularity high)
		(rating 339.0)
		(title "TheAdventuresofSherlockHolmes")
		(year 1892))

	([ontology_Class12027] of  Book

		(author [ontology_Class10539])
		(genre "Short Stories")
		(pages 680)
		(popularity low)
		(rating 159.0)
		(title "TheGardenPartyandOtherStories")
		(year 1922))

	([ontology_Class12028] of  Book

		(author [ontology_Class10610])
		(genre "Uncategorized")
		(pages 683)
		(popularity medium)
		(rating 242.0)
		(title "TheLoneRangerandTontoFistfightinHeaven")
		(year 1993))

	([ontology_Class12029] of  Book

		(author [ontology_Class10542])
		(genre "Classics")
		(pages 690)
		(popularity low)
		(rating 1692.0)
		(title "TheCompleteWorksofO.Henry")
		(year 1937))

	([ontology_Class12030] of  Book

		(author [ontology_Class10212])
		(genre "Classics")
		(pages 711)
		(popularity medium)
		(rating 70.0)
		(title "TheYellowWallpaperandOtherStories")
		(year 1892))

	([ontology_Class12031] of  Book

		(author [ontology_Class10061])
		(genre "Classics")
		(pages 741)
		(popularity low)
		(rating 848.0)
		(title "TheCompleteShortStoriesofMarkTwain")
		(year 1957))

	([ontology_Class12032] of  Book

		(author [ontology_Class10544])
		(genre "Uncategorized")
		(pages 750)
		(popularity medium)
		(rating 240.0)
		(title "Winesburg,Ohio")
		(year 1919))

	([ontology_Class12033] of  Book

		(author [ontology_Class10228])
		(genre "Classics")
		(pages 750)
		(popularity medium)
		(rating 84.0)
		(title "DiaryofaMadmanandOtherStories")
		(year 1835))

	([ontology_Class12034] of  Book

		(author [ontology_Class10153])
		(genre "Fantasy")
		(pages 3505)
		(popularity medium)
		(rating 471.0)
		(title "CrownDuel")
		(year 1997))

	([ontology_Class12035] of  Book

		(author [ontology_Class10155])
		(genre "Short Stories")
		(pages 875)
		(popularity medium)
		(rating 285.0)
		(title "CloseRange")
		(year 1999))

	([ontology_Class12036] of  Book

		(author [ontology_Class10043])
		(genre "Short Stories")
		(pages 1068)
		(popularity medium)
		(rating 149.0)
		(title "TheBloodyChamber")
		(year 1979))

	([ontology_Class12037] of  Book

		(author [ontology_Class10540])
		(genre "Short Stories")
		(pages 1195)
		(popularity low)
		(rating 1262.0)
		(title "TheCollectedStories")
		(year 1992))

	([ontology_Class12038] of  Book

		(author [ontology_Class10543])
		(genre "Short Stories")
		(pages 1422)
		(popularity medium)
		(rating 160.0)
		(title "Jesus'Son")
		(year 1992))

	([ontology_Class12039] of  Book

		(author [ontology_Class10545])
		(genre "Short Stories")
		(pages 1536)
		(popularity medium)
		(rating 693.0)
		(title "TheStoriesofJohnCheever")
		(year 1978))

	([ontology_Class12040] of  Book

		(author [ontology_Class10050])
		(genre "Uncategorized")
		(pages 1707)
		(popularity medium)
		(rating 565.0)
		(title "CollectedFictions")
		(year 1975))

	([ontology_Class12041] of  Book

		(author [ontology_Class10002])
		(genre "Uncategorized")
		(pages 2500)
		(popularity medium)
		(rating 486.0)
		(title "TheCompleteStories")
		(year 1946))

	([ontology_Class12042] of  Book

		(author [ontology_Class10074])
		(genre "Short Stories")
		(pages 4947)
		(popularity high)
		(rating 198.0)
		(title "NineStories")
		(year 1953))

	([ontology_Class12043] of  Book

		(author [ontology_Class10160])
		(genre "Classics")
		(pages 5289)
		(popularity high)
		(rating 207.0)
		(title "Dubliners")
		(year 1914))

	([ontology_Class12044] of  Book

		(author [ontology_Class10159])
		(genre "Classics")
		(pages 846)
		(popularity high)
		(rating 194.0)
		(title "Mrs.Dalloway")
		(year 1921))

	([ontology_Class12045] of  Book

		(author [ontology_Class10611])
		(genre "Uncategorized")
		(pages 1165)
		(popularity medium)
		(rating 228.0)
		(title "TheEducationofLittleTree")
		(year 1976))

	([ontology_Class12046] of  Book

		(author [ontology_Class10176])
		(genre "Classics")
		(pages 649)
		(popularity medium)
		(rating 576.0)
		(title "TheDeerslayer")
		(year 1841))

	([ontology_Class12047] of  Book

		(author [ontology_Class10341])
		(genre "Thriller")
		(pages 901)
		(popularity low)
		(rating 320.0)
		(title "SacredClowns")
		(year 1992))

	([ontology_Class12048] of  Book

		(author [ontology_Class10612])
		(genre "Uncategorized")
		(pages 527)
		(popularity low)
		(rating 467.0)
		(title "PeopleoftheFire")
		(year 1991))

	([ontology_Class12049] of  Book

		(author [ontology_Class10613])
		(genre "Historical")
		(pages 537)
		(popularity low)
		(rating 608.0)
		(title "PeopleoftheLightning")
		(year 1995))

	([ontology_Class12050] of  Book

		(author [ontology_Class10614])
		(genre "Historical")
		(pages 671)
		(popularity low)
		(rating 208.0)
		(title "Zia")
		(year 1976))

	([ontology_Class12051] of  Book

		(author [ontology_Class10615])
		(genre "Uncategorized")
		(pages 673)
		(popularity low)
		(rating 193.0)
		(title "LaughingBoy:ANavajoLoveStory")
		(year 1929))

	([ontology_Class12052] of  Book

		(author [ontology_Class10616])
		(genre "Uncategorized")
		(pages 810)
		(popularity low)
		(rating 352.0)
		(title "SolarStorms")
		(year 1994))

	([ontology_Class12053] of  Book

		(author [ontology_Class10617])
		(genre "Uncategorized")
		(pages 1099)
		(popularity low)
		(rating 177.0)
		(title "WinterintheBlood")
		(year 1974))

	([ontology_Class12054] of  Book

		(author [ontology_Class10293])
		(genre "Historical")
		(pages 1169)
		(popularity medium)
		(rating 1424.0)
		(title "Sacajawea")
		(year 1978))

	([ontology_Class12055] of  Book

		(author [ontology_Class10618])
		(genre "Uncategorized")
		(pages 1430)
		(popularity low)
		(rating 140.0)
		(title "TwoOldWomen:AnAlaskanLegendofBetrayal,CourageandSurvival")
		(year 1993))

	([ontology_Class12056] of  Book

		(author [ontology_Class10619])
		(genre "Uncategorized")
		(pages 1550)
		(popularity low)
		(rating 352.0)
		(title "TheGrassDancer")
		(year 1994))

	([ontology_Class12057] of  Book

		(author [ontology_Class10206])
		(genre "Fantasy")
		(pages 424)
		(popularity low)
		(rating 0.0)
		(title "TheLightPrincess")
		(year 1864))

	([ontology_Class12058] of  Book

		(author [ontology_Class10620])
		(genre "Uncategorized")
		(pages 1923)
		(popularity low)
		(rating 422.0)
		(title "LittleBigMan")
		(year 1964))

	([ontology_Class12059] of  Book

		(author [ontology_Class10140])
		(genre "Classics")
		(pages 618)
		(popularity high)
		(rating 245.0)
		(title "BlackBeauty")
		(year 1877))

	([ontology_Class12060] of  Book

		(author [ontology_Class10115])
		(genre "Horror")
		(pages 286)
		(popularity medium)
		(rating 567.0)
		(title "GhostStory")
		(year 1979))

	([ontology_Class12061] of  Book

		(author [ontology_Class10052])
		(genre "Young")
		(pages 2036)
		(popularity high)
		(rating 280.0)
		(title "WalkTwoMoons")
		(year 1994))

	([ontology_Class12062] of  Book

		(author [ontology_Class10621])
		(genre "Uncategorized")
		(pages 2699)
		(popularity low)
		(rating 198.0)
		(title "HouseMadeofDawn")
		(year 1968))

	([ontology_Class12063] of  Book

		(author [ontology_Class10270])
		(genre "Fantasy")
		(pages 621)
		(popularity medium)
		(rating 400.0)
		(title "TheVoyagesofDoctorDolittle")
		(year 1922))

	([ontology_Class12064] of  Book

		(author [ontology_Class10622])
		(genre "Fantasy")
		(pages 386)
		(popularity medium)
		(rating 179.0)
		(title "TheHousewithaClockinItsWalls")
		(year 1973))

	([ontology_Class12065] of  Book

		(author [ontology_Class10076])
		(genre "Classics")
		(pages 1337)
		(popularity high)
		(rating 192.0)
		(title "TheOutsiders")
		(year 1967))

	([ontology_Class12066] of  Book

		(author [ontology_Class10210])
		(genre "Horror")
		(pages 457)
		(popularity medium)
		(rating 315.0)
		(title "TheAmityvilleHorror")
		(year 1977))

	([ontology_Class12067] of  Book

		(author [ontology_Class10314])
		(genre "Horror")
		(pages 562)
		(popularity low)
		(rating 544.0)
		(title "AmericanGothicTales")
		(year 1996))

	([ontology_Class12068] of  Book

		(author [ontology_Class10623])
		(genre "Horror")
		(pages 658)
		(popularity medium)
		(rating 352.0)
		(title "TickTock")
		(year 1996))

	([ontology_Class12069] of  Book

		(author [ontology_Class10546])
		(genre "Fantasy")
		(pages 1231)
		(popularity medium)
		(rating 192.0)
		(title "D'Aulaires'BookofGreekMyths")
		(year 1962))

	([ontology_Class12070] of  Book

		(author [ontology_Class10624])
		(genre "Fantasy")
		(pages 670)
		(popularity medium)
		(rating 225.0)
		(title "TheThiefofAlways")
		(year 1992))

	([ontology_Class12071] of  Book

		(author [ontology_Class10218])
		(genre "Uncategorized")
		(pages 375)
		(popularity medium)
		(rating 233.0)
		(title "ColdComfortFarm")
		(year 1932))

	([ontology_Class12072] of  Book

		(author [ontology_Class10007])
		(genre "Classics")
		(pages 2095)
		(popularity high)
		(rating 449.0)
		(title "LittleWomen")
		(year 1868))

	([ontology_Class12073] of  Book

		(author [ontology_Class10114])
		(genre "Fantasy")
		(pages 2246)
		(popularity high)
		(rating 256.0)
		(title "ThePhantomTollbooth")
		(year 1961))

	([ontology_Class12074] of  Book

		(author [ontology_Class10562])
		(genre "Fantasy")
		(pages 2848)
		(popularity low)
		(rating 280.0)
		(title "ANightintheLonesomeOctober")
		(year 1993))

	([ontology_Class12075] of  Book

		(author [ontology_Class10191])
		(genre "Classics")
		(pages 2990)
		(popularity high)
		(rating 144.0)
		(title "TheStrangeCaseofDr.JekyllandMr.Hyde")
		(year 1886))

	([ontology_Class12076] of  Book

		(author [ontology_Class10071])
		(genre "Classics")
		(pages 6126)
		(popularity high)
		(rating 273.0)
		(title "Frankenstein")
		(year 1818))

	([ontology_Class12077] of  Book

		(author [ontology_Class10028])
		(genre "Classics")
		(pages 8350)
		(popularity high)
		(rating 488.0)
		(title "Dracula")
		(year 1897))

	([ontology_Class12078] of  Book

		(author [ontology_Class10625])
		(genre "Romance")
		(pages 286)
		(popularity low)
		(rating 186.0)
		(title "TheCaseoftheConfirmedBachelor")
		(year 1992))

	([ontology_Class12079] of  Book

		(author [ontology_Class10044])
		(genre "Uncategorized")
		(pages 1461)
		(popularity medium)
		(rating 338.0)
		(title "TheMistressofSpices")
		(year 1997))

	([ontology_Class12080] of  Book

		(author [ontology_Class10036])
		(genre "Fantasy")
		(pages 486)
		(popularity high)
		(rating 396.0)
		(title "TheNeverendingStory")
		(year 1979))

	([ontology_Class12081] of  Book

		(author [ontology_Class10626])
		(genre "Uncategorized")
		(pages 582)
		(popularity low)
		(rating 257.0)
		(title "TheLoveLetter")
		(year 1995))

	([ontology_Class12082] of  Book

		(author [ontology_Class10055])
		(genre "Classics")
		(pages 2075)
		(popularity high)
		(rating 104.0)
		(title "AChristmasCarol")
		(year 1843))

	([ontology_Class12083] of  Book

		(author [ontology_Class10627])
		(genre "Young")
		(pages 672)
		(popularity low)
		(rating 240.0)
		(title "TheHunter")
		(year 1994))

	([ontology_Class12084] of  Book

		(author [ontology_Class10416])
		(genre "Romance")
		(pages 1111)
		(popularity low)
		(rating 384.0)
		(title "TheSilverDevil")
		(year 1978))

	([ontology_Class12085] of  Book

		(author [ontology_Class10465])
		(genre "Thriller")
		(pages 1953)
		(popularity low)
		(rating 245.0)
		(title "CrewelWorld")
		(year 1999))

	([ontology_Class12086] of  Book

		(author [ontology_Class10062])
		(genre "Classics")
		(pages 1266)
		(popularity high)
		(rating 188.0)
		(title "HeartofDarkness")
		(year 1899))

	([ontology_Class12087] of  Book

		(author [ontology_Class10058])
		(genre "Classics")
		(pages 1306)
		(popularity high)
		(rating 219.0)
		(title "TheirEyesWereWatchingGod")
		(year 1937))

	([ontology_Class12088] of  Book

		(author [ontology_Class10471])
		(genre "Thriller")
		(pages 1582)
		(popularity low)
		(rating 278.0)
		(title "MurderonAstorPlace")
		(year 1999))

	([ontology_Class12089] of  Book

		(author [ontology_Class10481])
		(genre "Uncategorized")
		(pages 1351)
		(popularity medium)
		(rating 316.0)
		(title "Cry,theBelovedCountry")
		(year 1948))

	([ontology_Class12090] of  Book

		(author [ontology_Class10098])
		(genre "Classics")
		(pages 1515)
		(popularity medium)
		(rating 544.0)
		(title "Ivanhoe")
		(year 1819))

	([ontology_Class12091] of  Book

		(author [ontology_Class10196])
		(genre "Classics")
		(pages 1571)
		(popularity high)
		(rating 912.0)
		(title "VanityFair")
		(year 1848))

	([ontology_Class12092] of  Book

		(author [ontology_Class10078])
		(genre "Classics")
		(pages 1635)
		(popularity medium)
		(rating 528.0)
		(title "TheMoonstone")
		(year 1868))

	([ontology_Class12093] of  Book

		(author [ontology_Class10478])
		(genre "Thriller")
		(pages 1563)
		(popularity medium)
		(rating 244.0)
		(title "AuntDimity'sDeath")
		(year 1992))

	([ontology_Class12094] of  Book

		(author [ontology_Class10059])
		(genre "Classics")
		(pages 2468)
		(popularity high)
		(rating 329.0)
		(title "MadameBovary")
		(year 1856))

	([ontology_Class12095] of  Book

		(author [ontology_Class10139])
		(genre "Classics")
		(pages 2699)
		(popularity high)
		(rating 720.0)
		(title "Moby-Dick,or,theWhale")
		(year 1851))

	([ontology_Class12096] of  Book

		(author [ontology_Class10105])
		(genre "Classics")
		(pages 3413)
		(popularity high)
		(rating 625.0)
		(title "TheThreeMusketeers")
		(year 1844))

	([ontology_Class12097] of  Book

		(author [ontology_Class10628])
		(genre "Thriller")
		(pages 486)
		(popularity low)
		(rating 419.0)
		(title "Studiosex")
		(year 1999))

	([ontology_Class12098] of  Book

		(author [ontology_Class10001])
		(genre "Classics")
		(pages 7569)
		(popularity high)
		(rating 288.0)
		(title "BraveNewWorld")
		(year 1932))

	([ontology_Class12099] of  Book

		(author [ontology_Class10629])
		(genre "Young")
		(pages 602)
		(popularity low)
		(rating 160.0)
		(title "HappyEndingsAreAllAlike")
		(year 1978))

	([ontology_Class12100] of  Book

		(author [ontology_Class10630])
		(genre "Thriller")
		(pages 764)
		(popularity low)
		(rating 448.0)
		(title "Blackwater")
		(year 1993))

	([ontology_Class12101] of  Book

		(author [ontology_Class10180])
		(genre "Thriller")
		(pages 1703)
		(popularity low)
		(rating 392.0)
		(title "ThePyramid:AndFourOtherKurtWallanderMysteries")
		(year 1999))

	([ontology_Class12102] of  Book

		(author [ontology_Class10631])
		(genre "Fantasy")
		(pages 340)
		(popularity low)
		(rating 286.0)
		(title "NightWinds")
		(year 1978))

	([ontology_Class12103] of  Book

		(author [ontology_Class10632])
		(genre "Thriller")
		(pages 911)
		(popularity low)
		(rating 237.0)
		(title "TheFamilyVault")
		(year 1979))

	([ontology_Class12104] of  Book

		(author [ontology_Class10633])
		(genre "Thriller")
		(pages 928)
		(popularity low)
		(rating 320.0)
		(title "TheDeadCatBounce")
		(year 1997))

	([ontology_Class12105] of  Book

		(author [ontology_Class10634])
		(genre "Thriller")
		(pages 923)
		(popularity low)
		(rating 215.0)
		(title "EdwinoftheIronShoes")
		(year 1977))

	([ontology_Class12106] of  Book

		(author [ontology_Class10133])
		(genre "Fantasy")
		(pages 620)
		(popularity low)
		(rating 1173.0)
		(title "TheGormenghastNovels")
		(year 1959))

	([ontology_Class12107] of  Book

		(author [ontology_Class10464])
		(genre "Thriller")
		(pages 1064)
		(popularity low)
		(rating 218.0)
		(title "MissZukasandtheLibraryMurders")
		(year 1994))

	([ontology_Class12108] of  Book

		(author [ontology_Class10635])
		(genre "Thriller")
		(pages 1209)
		(popularity low)
		(rating 240.0)
		(title "TheAlpineAdvocate")
		(year 1992))

	([ontology_Class12109] of  Book

		(author [ontology_Class10636])
		(genre "Thriller")
		(pages 1279)
		(popularity low)
		(rating 256.0)
		(title "TooManyCrooksSpoiltheBroth")
		(year 1993))

	([ontology_Class12110] of  Book

		(author [ontology_Class10637])
		(genre "Fantasy")
		(pages 961)
		(popularity low)
		(rating 471.0)
		(title "TheElricSagaPartII")
		(year 1979))

	([ontology_Class12111] of  Book

		(author [ontology_Class10109])
		(genre "Classics")
		(pages 475)
		(popularity low)
		(rating 352.0)
		(title "TheRoadBack")
		(year 1931))

	([ontology_Class12112] of  Book

		(author [ontology_Class10181])
		(genre "Thriller")
		(pages 1787)
		(popularity medium)
		(rating 212.0)
		(title "WhoseBody?")
		(year 1923))

	([ontology_Class12113] of  Book

		(author [ontology_Class10469])
		(genre "Thriller")
		(pages 1824)
		(popularity low)
		(rating 252.0)
		(title "DeathatWentwaterCourt")
		(year 1994))

	([ontology_Class12114] of  Book

		(author [ontology_Class10638])
		(genre "Fantasy")
		(pages 409)
		(popularity low)
		(rating 404.0)
		(title "TheTowerofGeburah")
		(year 1978))

	([ontology_Class12115] of  Book

		(author [ontology_Class10594])
		(genre "Uncategorized")
		(pages 636)
		(popularity low)
		(rating 343.0)
		(title "OneofOurs")
		(year 1922))

	([ontology_Class12116] of  Book

		(author [ontology_Class10171])
		(genre "Uncategorized")
		(pages 672)
		(popularity low)
		(rating 326.0)
		(title "Ashenden")
		(year 1928))

	([ontology_Class12117] of  Book

		(author [ontology_Class10639])
		(genre "Uncategorized")
		(pages 680)
		(popularity low)
		(rating 218.0)
		(title "TheWars")
		(year 1977))

	([ontology_Class12118] of  Book

		(author [ontology_Class10640])
		(genre "Uncategorized")
		(pages 785)
		(popularity low)
		(rating 272.0)
		(title "Greenmantle")
		(year 1916))

	([ontology_Class12119] of  Book

		(author [ontology_Class10641])
		(genre "Uncategorized")
		(pages 533)
		(popularity medium)
		(rating 656.0)
		(title "TheOath")
		(year 1995))

	([ontology_Class12120] of  Book

		(author [ontology_Class10642])
		(genre "Uncategorized")
		(pages 833)
		(popularity low)
		(rating 362.0)
		(title "ThreeSoldiers")
		(year 1921))

	([ontology_Class12121] of  Book

		(author [ontology_Class10013])
		(genre "Thriller")
		(pages 3054)
		(popularity high)
		(rating 294.0)
		(title "NakedinDeath")
		(year 1995))

	([ontology_Class12122] of  Book

		(author [ontology_Class10479])
		(genre "Thriller")
		(pages 3214)
		(popularity low)
		(rating 311.0)
		(title "MurderWithPeacocks")
		(year 1999))

	([ontology_Class12123] of  Book

		(author [ontology_Class10643])
		(genre "Uncategorized")
		(pages 925)
		(popularity low)
		(rating 112.0)
		(title "TheReturnoftheSoldier")
		(year 1918))

	([ontology_Class12124] of  Book

		(author [ontology_Class10462])
		(genre "Thriller")
		(pages 4095)
		(popularity medium)
		(rating 256.0)
		(title "TheCatWhoCouldReadBackwards")
		(year 1966))

	([ontology_Class12125] of  Book

		(author [ontology_Class10480])
		(genre "Thriller")
		(pages 4554)
		(popularity medium)
		(rating 204.0)
		(title "TheUnexpectedMrs.Pollifax")
		(year 1966))

	([ontology_Class12126] of  Book

		(author [ontology_Class10644])
		(genre "Uncategorized")
		(pages 1183)
		(popularity low)
		(rating 638.0)
		(title "ToServeThemAllMyDays")
		(year 1972))

	([ontology_Class12127] of  Book

		(author [ontology_Class10645])
		(genre "Uncategorized")
		(pages 1349)
		(popularity low)
		(rating 384.0)
		(title "TheRadetzkyMarch")
		(year 1932))

	([ontology_Class12128] of  Book

		(author [ontology_Class10533])
		(genre "Classics")
		(pages 1487)
		(popularity low)
		(rating 1408.0)
		(title "AndQuietFlowstheDon")
		(year 1934))

	([ontology_Class12129] of  Book

		(author [ontology_Class10322])
		(genre "Uncategorized")
		(pages 1740)
		(popularity low)
		(rating 896.0)
		(title "August1914")
		(year 1971))

	([ontology_Class12130] of  Book

		(author [ontology_Class10141])
		(genre "Uncategorized")
		(pages 2673)
		(popularity medium)
		(rating 309.0)
		(title "JohnnyGotHisGun")
		(year 1939))

	([ontology_Class12131] of  Book

		(author [ontology_Class10582])
		(genre "Historical")
		(pages 5807)
		(popularity medium)
		(rating 483.0)
		(title "Birdsong")
		(year 1993))

	([ontology_Class12132] of  Book

		(author [ontology_Class10330])
		(genre "Classics")
		(pages 3391)
		(popularity medium)
		(rating 324.0)
		(title "ThePilgrim'sProgress")
		(year 1678))

	([ontology_Class12133] of  Book

		(author [ontology_Class10203])
		(genre "Religious")
		(pages 1828)
		(popularity high)
		(rating 464.0)
		(title "RedeemingLove")
		(year 1991))

	([ontology_Class12134] of  Book

		(author [ontology_Class10646])
		(genre "Romance")
		(pages 798)
		(popularity low)
		(rating 288.0)
		(title "VanityandVexation:ANovelofPrideandPrejudice")
		(year 1991))

	([ontology_Class12135] of  Book

		(author [ontology_Class10647])
		(genre "Uncategorized")
		(pages 2172)
		(popularity low)
		(rating 277.0)
		(title "Darcy'sStory")
		(year 1999))

	([ontology_Class12136] of  Book

		(author [ontology_Class10192])
		(genre "Thriller")
		(pages 277)
		(popularity high)
		(rating 231.0)
		(title "TheBigSleep")
		(year 1939))

	([ontology_Class12137] of  Book

		(author [ontology_Class10648])
		(genre "Uncategorized")
		(pages 384)
		(popularity medium)
		(rating 192.0)
		(title "GenerationX:TalesforanAcceleratedCulture")
		(year 1991))

	([ontology_Class12138] of  Book

		(author [ontology_Class10446])
		(genre "Romance")
		(pages 1475)
		(popularity low)
		(rating 355.0)
		(title "TheProposition")
		(year 1999))

	([ontology_Class12139] of  Book

		(author [ontology_Class10574])
		(genre "Romance")
		(pages 1526)
		(popularity low)
		(rating 356.0)
		(title "WildatHeart")
		(year 1997))

	([ontology_Class12140] of  Book

		(author [ontology_Class10309])
		(genre "Uncategorized")
		(pages 473)
		(popularity high)
		(rating 610.0)
		(title "TheWorldAccordingtoGarp")
		(year 1978))

	([ontology_Class12141] of  Book

		(author [ontology_Class10095])
		(genre "Uncategorized")
		(pages 296)
		(popularity medium)
		(rating 283.0)
		(title "TheCollector")
		(year 1963))

	([ontology_Class12142] of  Book

		(author [ontology_Class10350])
		(genre "Uncategorized")
		(pages 297)
		(popularity medium)
		(rating 335.0)
		(title "ZorbatheGreek")
		(year 1946))

	([ontology_Class12143] of  Book

		(author [ontology_Class10649])
		(genre "Romance")
		(pages 2851)
		(popularity low)
		(rating 325.0)
		(title "SimpleJess")
		(year 1996))

	([ontology_Class12144] of  Book

		(author [ontology_Class10650])
		(genre "Romance")
		(pages 774)
		(popularity low)
		(rating 356.0)
		(title "HisWickedWays")
		(year 1999))

	([ontology_Class12145] of  Book

		(author [ontology_Class10651])
		(genre "Classics")
		(pages 288)
		(popularity low)
		(rating 272.0)
		(title "TheBlazingWorldandOtherWritings")
		(year 1666))

	([ontology_Class12146] of  Book

		(author [ontology_Class10652])
		(genre "Classics")
		(pages 883)
		(popularity low)
		(rating 144.0)
		(title "Oroonoko")
		(year 1688))

	([ontology_Class12147] of  Book

		(author [ontology_Class10653])
		(genre "Historical")
		(pages 653)
		(popularity low)
		(rating 306.0)
		(title "YankeeStranger")
		(year 1944))

	([ontology_Class12148] of  Book

		(author [ontology_Class10209])
		(genre "Uncategorized")
		(pages 416)
		(popularity medium)
		(rating 279.0)
		(title "RequiemforaDream")
		(year 1978))

	([ontology_Class12149] of  Book

		(author [ontology_Class10654])
		(genre "Thriller")
		(pages 409)
		(popularity medium)
		(rating 416.0)
		(title "FromPotter'sField:Scarpetta6")
		(year 1995))

	([ontology_Class12150] of  Book

		(author [ontology_Class10655])
		(genre "Thriller")
		(pages 463)
		(popularity low)
		(rating 371.0)
		(title "TheVig")
		(year 1991))

	([ontology_Class12151] of  Book

		(author [ontology_Class10526])
		(genre "Thriller")
		(pages 474)
		(popularity medium)
		(rating 252.0)
		(title "TheDeepBlueGood-by")
		(year 1964))

	([ontology_Class12152] of  Book

		(author [ontology_Class10032])
		(genre "Fantasy")
		(pages 565)
		(popularity high)
		(rating 139.0)
		(title "TuckEverlasting")
		(year 1975))

	([ontology_Class12153] of  Book

		(author [ontology_Class10053])
		(genre "Classics")
		(pages 514)
		(popularity high)
		(rating 212.0)
		(title "AClockworkOrange")
		(year 1962))

	([ontology_Class12154] of  Book

		(author [ontology_Class10521])
		(genre "Thriller")
		(pages 533)
		(popularity low)
		(rating 480.0)
		(title "InaDrySeason")
		(year 1999))

	([ontology_Class12155] of  Book

		(author [ontology_Class10483])
		(genre "Uncategorized")
		(pages 541)
		(popularity medium)
		(rating 208.0)
		(title "Factotum")
		(year 1975))

	([ontology_Class12156] of  Book

		(author [ontology_Class10656])
		(genre "Thriller")
		(pages 562)
		(popularity low)
		(rating 458.0)
		(title "AGameofProof")
		(year 1992))

	([ontology_Class12157] of  Book

		(author [ontology_Class10657])
		(genre "Thriller")
		(pages 586)
		(popularity low)
		(rating 272.0)
		(title "Let'sHearItfortheDeafMan")
		(year 1972))

	([ontology_Class12158] of  Book

		(author [ontology_Class10658])
		(genre "Thriller")
		(pages 675)
		(popularity low)
		(rating 480.0)
		(title "RiverofDarkness")
		(year 1999))

	([ontology_Class12159] of  Book

		(author [ontology_Class10659])
		(genre "Thriller")
		(pages 1092)
		(popularity low)
		(rating 358.0)
		(title "Bushfire")
		(year 1996))

	([ontology_Class12160] of  Book

		(author [ontology_Class10660])
		(genre "Historical")
		(pages 724)
		(popularity low)
		(rating 427.0)
		(title "Confederates")
		(year 1979))

	([ontology_Class12161] of  Book

		(author [ontology_Class10138])
		(genre "Historical")
		(pages 1976)
		(popularity high)
		(rating 729.0)
		(title "Roots:TheSagaofanAmericanFamily")
		(year 1976))

	([ontology_Class12162] of  Book

		(author [ontology_Class10271])
		(genre "Historical")
		(pages 2011)
		(popularity medium)
		(rating 224.0)
		(title "AcrossFiveAprils")
		(year 1964))

	([ontology_Class12163] of  Book

		(author [ontology_Class10241])
		(genre "Uncategorized")
		(pages 975)
		(popularity medium)
		(rating 343.0)
		(title "ICapturetheCastle")
		(year 1948))

	([ontology_Class12164] of  Book

		(author [ontology_Class10661])
		(genre "Historical")
		(pages 3125)
		(popularity low)
		(rating 766.0)
		(title "Andersonville")
		(year 1955))

	([ontology_Class12165] of  Book

		(author [ontology_Class10157])
		(genre "Classics")
		(pages 8094)
		(popularity medium)
		(rating 170.0)
		(title "TheRedBadgeofCourage")
		(year 1895))

	([ontology_Class12166] of  Book

		(author [ontology_Class10106])
		(genre "Historical")
		(pages 11776)
		(popularity high)
		(rating 356.0)
		(title "ColdMountain")
		(year 1997))

	([ontology_Class12167] of  Book

		(author [ontology_Class10126])
		(genre "Historical")
		(pages 24897)
		(popularity medium)
		(rating 345.0)
		(title "TheKillerAngels")
		(year 1974))

	([ontology_Class12168] of  Book

		(author [ontology_Class10398])
		(genre "Uncategorized")
		(pages 3059)
		(popularity high)
		(rating 465.0)
		(title "She'sComeUndone")
		(year 1992))

	([ontology_Class12169] of  Book

		(author [ontology_Class10037])
		(genre "Fantasy")
		(pages 724)
		(popularity medium)
		(rating 253.0)
		(title "TheHighKing")
		(year 1968))

	([ontology_Class12170] of  Book

		(author [ontology_Class10120])
		(genre "Fantasy")
		(pages 876)
		(popularity medium)
		(rating 726.0)
		(title "TheSwordofShannara")
		(year 1977))

	([ontology_Class12171] of  Book

		(author [ontology_Class10291])
		(genre "Fantasy")
		(pages 1314)
		(popularity high)
		(rating 836.0)
		(title "Wizard'sFirstRule")
		(year 1994))

	([ontology_Class12172] of  Book

		(author [ontology_Class10150])
		(genre "Fantasy")
		(pages 1750)
		(popularity medium)
		(rating 384.0)
		(title "TheLastWish")
		(year 1993))

	([ontology_Class12173] of  Book

		(author [ontology_Class10033])
		(genre "Fantasy")
		(pages 1801)
		(popularity medium)
		(rating 639.0)
		(title "TheOnceandFutureKing")
		(year 1958))

	([ontology_Class12174] of  Book

		(author [ontology_Class10518])
		(genre "Young")
		(pages 912)
		(popularity medium)
		(rating 192.0)
		(title "RunningOutofTime")
		(year 1995))

	([ontology_Class12175] of  Book

		(author [ontology_Class10149])
		(genre "Classics")
		(pages 1662)
		(popularity high)
		(rating 272.0)
		(title "WheretheRedFernGrows")
		(year 1961))

	([ontology_Class12176] of  Book

		(author [ontology_Class10034])
		(genre "Uncategorized")
		(pages 1980)
		(popularity high)
		(rating 176.0)
		(title "TheBadBeginning")
		(year 1999))

	([ontology_Class12177] of  Book

		(author [ontology_Class10057])
		(genre "Thriller")
		(pages 2669)
		(popularity high)
		(rating 182.0)
		(title "TheWestingGame")
		(year 1978))

	([ontology_Class12178] of  Book

		(author [ontology_Class10184])
		(genre "Uncategorized")
		(pages 1561)
		(popularity high)
		(rating 559.0)
		(title "TheSecretHistory")
		(year 1992))

	([ontology_Class12179] of  Book

		(author [ontology_Class10009])
		(genre "Classics")
		(pages 1816)
		(popularity high)
		(rating 216.0)
		(title "TheBellJar")
		(year 1963))

	([ontology_Class12180] of  Book

		(author [ontology_Class10662])
		(genre "Young")
		(pages 829)
		(popularity medium)
		(rating 272.0)
		(title "BloodandChocolate")
		(year 1997))

	([ontology_Class12181] of  Book

		(author [ontology_Class10231])
		(genre "Uncategorized")
		(pages 927)
		(popularity medium)
		(rating 311.0)
		(title "PayItForward")
		(year 1999))

	([ontology_Class12182] of  Book

		(author [ontology_Class10072])
		(genre "Uncategorized")
		(pages 1394)
		(popularity high)
		(rating 311.0)
		(title "FlowersforAlgernon")
		(year 1966))

	([ontology_Class12183] of  Book

		(author [ontology_Class10268])
		(genre "Young")
		(pages 940)
		(popularity medium)
		(rating 312.0)
		(title "Tangerine")
		(year 1997))

	([ontology_Class12184] of  Book

		(author [ontology_Class10410])
		(genre "Young")
		(pages 2015)
		(popularity low)
		(rating 240.0)
		(title "WhenJeffComesHome")
		(year 1999))

	([ontology_Class12185] of  Book

		(author [ontology_Class10663])
		(genre "Uncategorized")
		(pages 2662)
		(popularity low)
		(rating 532.0)
		(title "ForLoveAlone")
		(year 1992))

	([ontology_Class12186] of  Book

		(author [ontology_Class10003])
		(genre "Uncategorized")
		(pages 3381)
		(popularity high)
		(rating 1168.0)
		(title "AtlasShrugged")
		(year 1957))

	([ontology_Class12187] of  Book

		(author [ontology_Class10158])
		(genre "Romance")
		(pages 4761)
		(popularity medium)
		(rating 304.0)
		(title "SexandtheCity")
		(year 1996))

	([ontology_Class12188] of  Book

		(author [ontology_Class10199])
		(genre "Uncategorized")
		(pages 7621)
		(popularity high)
		(rating 342.0)
		(title "LeftBehind")
		(year 1995))

	([ontology_Class12189] of  Book

		(author [ontology_Class10432])
		(genre "Uncategorized")
		(pages 669)
		(popularity medium)
		(rating 288.0)
		(title "WhatDreamsMayCome")
		(year 1978))

	([ontology_Class12190] of  Book

		(author [ontology_Class10169])
		(genre "Uncategorized")
		(pages 433)
		(popularity medium)
		(rating 244.0)
		(title "TheKillerInsideMe")
		(year 1952))

	([ontology_Class12191] of  Book

		(author [ontology_Class10177])
		(genre "Horror")
		(pages 495)
		(popularity high)
		(rating 320.0)
		(title "Jaws")
		(year 1973))

	([ontology_Class12192] of  Book

		(author [ontology_Class10119])
		(genre "Uncategorized")
		(pages 1257)
		(popularity medium)
		(rating 369.0)
		(title "MyNameIsAsherLev")
		(year 1972))

	([ontology_Class12193] of  Book

		(author [ontology_Class10535])
		(genre "Fantasy")
		(pages 1575)
		(popularity medium)
		(rating 497.0)
		(title "Mythology:TimelessTalesofGodsandHeroes")
		(year 1942))

	([ontology_Class12194] of  Book

		(author [ontology_Class10664])
		(genre "Uncategorized")
		(pages 768)
		(popularity low)
		(rating 384.0)
		(title "HungerPoint")
		(year 1997))

	([ontology_Class12195] of  Book

		(author [ontology_Class10148])
		(genre "Classics")
		(pages 596)
		(popularity medium)
		(rating 132.0)
		(title "OldYeller")
		(year 1956))

	([ontology_Class12196] of  Book

		(author [ontology_Class10204])
		(genre "Classics")
		(pages 861)
		(popularity high)
		(rating 521.0)
		(title "NorthandSouth")
		(year 1855))

	([ontology_Class12197] of  Book

		(author [ontology_Class10472])
		(genre "Fantasy")
		(pages 495)
		(popularity low)
		(rating 240.0)
		(title "TheKingofElfland'sDaughter")
		(year 1924))

	([ontology_Class12198] of  Book

		(author [ontology_Class10029])
		(genre "Fantasy")
		(pages 3998)
		(popularity medium)
		(rating 294.0)
		(title "TheLastUnicorn")
		(year 1968))

	([ontology_Class12199] of  Book

		(author [ontology_Class10216])
		(genre "Classics")
		(pages 4192)
		(popularity high)
		(rating 880.0)
		(title "TheCompleteGrimm'sFairyTales")
		(year 1812))

	([ontology_Class12200] of  Book

		(author [ontology_Class10325])
		(genre "Young")
		(pages 937)
		(popularity medium)
		(rating 690.0)
		(title "KissedbyanAngel/ThePowerofLove/Soulmates")
		(year 1995))

	([ontology_Class12201] of  Book

		(author [ontology_Class10108])
		(genre "Classics")
		(pages 1514)
		(popularity high)
		(rating 438.0)
		(title "UncleTom'sCabin")
		(year 1852))

	([ontology_Class12202] of  Book

		(author [ontology_Class10221])
		(genre "Classics")
		(pages 1857)
		(popularity high)
		(rating 904.0)
		(title "Middlemarch")
		(year 1871))

	([ontology_Class12203] of  Book

		(author [ontology_Class10130])
		(genre "Uncategorized")
		(pages 1958)
		(popularity high)
		(rating 204.0)
		(title "FearandLoathinginLasVegas")
		(year 1971))

	([ontology_Class12204] of  Book

		(author [ontology_Class10198])
		(genre "Uncategorized")
		(pages 1965)
		(popularity medium)
		(rating 1088.0)
		(title "InfiniteJest")
		(year 1996))

	([ontology_Class12205] of  Book

		(author [ontology_Class10070])
		(genre "Classics")
		(pages 4292)
		(popularity high)
		(rating 123.0)
		(title "TheStranger")
		(year 1942))

	([ontology_Class12206] of  Book

		(author [ontology_Class10129])
		(genre "Horror")
		(pages 2954)
		(popularity high)
		(rating 385.0)
		(title "TheExorcist")
		(year 1971))

	([ontology_Class12207] of  Book

		(author [ontology_Class10665])
		(genre "Uncategorized")
		(pages 196)
		(popularity low)
		(rating 212.0)
		(title "GardenState")
		(year 1992))

	([ontology_Class12208] of  Book

		(author [ontology_Class10174])
		(genre "Uncategorized")
		(pages 351)
		(popularity medium)
		(rating 144.0)
		(title "CasinoRoyale")
		(year 1953))

	([ontology_Class12209] of  Book

		(author [ontology_Class10195])
		(genre "Classics")
		(pages 436)
		(popularity medium)
		(rating 468.0)
		(title "Swann'sWay")
		(year 1913))

	([ontology_Class12210] of  Book

		(author [ontology_Class10666])
		(genre "Uncategorized")
		(pages 394)
		(popularity medium)
		(rating 830.0)
		(title "AWomanofSubstance")
		(year 1979))

	([ontology_Class12211] of  Book

		(author [ontology_Class10590])
		(genre "Historical")
		(pages 413)
		(popularity medium)
		(rating 455.0)
		(title "RossPoldark")
		(year 1945))

	([ontology_Class12212] of  Book

		(author [ontology_Class10667])
		(genre "Westerns")
		(pages 497)
		(popularity low)
		(rating 208.0)
		(title "Sackett'sLand")
		(year 1974))

	([ontology_Class12213] of  Book

		(author [ontology_Class10237])
		(genre "Horror")
		(pages 873)
		(popularity medium)
		(rating 480.0)
		(title "Relic")
		(year 1995))

	([ontology_Class12214] of  Book

		(author [ontology_Class10135])
		(genre "Classics")
		(pages 1027)
		(popularity medium)
		(rating 878.0)
		(title "TheForsyteSaga")
		(year 1921))

	([ontology_Class12215] of  Book

		(author [ontology_Class10093])
		(genre "Historical")
		(pages 1312)
		(popularity medium)
		(rating 411.0)
		(title "MasterandCommander")
		(year 1969))

	([ontology_Class12216] of  Book

		(author [ontology_Class10440])
		(genre "Romance")
		(pages 174)
		(popularity low)
		(rating 368.0)
		(title "WiththisKiss")
		(year 1999))

	([ontology_Class12217] of  Book

		(author [ontology_Class10444])
		(genre "Romance")
		(pages 183)
		(popularity low)
		(rating 353.0)
		(title "BeautyandtheBeast")
		(year 1992))

	([ontology_Class12218] of  Book

		(author [ontology_Class10243])
		(genre "Fantasy")
		(pages 197)
		(popularity low)
		(rating 144.0)
		(title "TalesfromtheBrothersGrimmandtheSistersWeird")
		(year 1995))

	([ontology_Class12219] of  Book

		(author [ontology_Class10668])
		(genre "Young")
		(pages 283)
		(popularity low)
		(rating 208.0)
		(title "TheShadowoftheBear")
		(year 1997))

	([ontology_Class12220] of  Book

		(author [ontology_Class10669])
		(genre "Fantasy")
		(pages 560)
		(popularity low)
		(rating 208.0)
		(title "Medea")
		(year 1996))

	([ontology_Class12221] of  Book

		(author [ontology_Class10670])
		(genre "Fantasy")
		(pages 685)
		(popularity low)
		(rating 608.0)
		(title "LadyoftheForest")
		(year 1992))

	([ontology_Class12222] of  Book

		(author [ontology_Class10584])
		(genre "Historical")
		(pages 669)
		(popularity low)
		(rating 1024.0)
		(title "TheLightBearer")
		(year 1994))

	([ontology_Class12223] of  Book

		(author [ontology_Class10671])
		(genre "Classics")
		(pages 1639)
		(popularity low)
		(rating 317.0)
		(title "She:AHistoryofAdventure")
		(year 1886))

	([ontology_Class12224] of  Book

		(author [ontology_Class10355])
		(genre "Historical")
		(pages 2215)
		(popularity low)
		(rating 279.0)
		(title "Mara,DaughteroftheNile")
		(year 1953))

	([ontology_Class12225] of  Book

		(author [ontology_Class10672])
		(genre "Horror")
		(pages 560)
		(popularity low)
		(rating 226.0)
		(title "Grimscribe:HisLivesandWorks")
		(year 1991))

	([ontology_Class12226] of  Book

		(author [ontology_Class10673])
		(genre "Horror")
		(pages 747)
		(popularity low)
		(rating 196.0)
		(title "TheThreeImpostors")
		(year 1895))

	([ontology_Class12227] of  Book

		(author [ontology_Class10674])
		(genre "Romance")
		(pages 207)
		(popularity low)
		(rating 297.0)
		(title "TheKnightsOfChristmas")
		(year 1997))

	([ontology_Class12228] of  Book

		(author [ontology_Class10675])
		(genre "Fantasy")
		(pages 539)
		(popularity low)
		(rating 376.0)
		(title "TheLegendofDeathwalker")
		(year 1996))

	([ontology_Class12229] of  Book

		(author [ontology_Class10676])
		(genre "Fantasy")
		(pages 562)
		(popularity low)
		(rating 667.0)
		(title "TheBarbedCoil")
		(year 1997))

	([ontology_Class12230] of  Book

		(author [ontology_Class10165])
		(genre "Fantasy")
		(pages 664)
		(popularity medium)
		(rating 656.0)
		(title "Rhapsody:ChildofBlood")
		(year 1999))

	([ontology_Class12231] of  Book

		(author [ontology_Class10215])
		(genre "Fantasy")
		(pages 709)
		(popularity low)
		(rating 468.0)
		(title "TamLin")
		(year 1991))

	([ontology_Class12232] of  Book

		(author [ontology_Class10151])
		(genre "Fantasy")
		(pages 690)
		(popularity low)
		(rating 598.0)
		(title "TheOrderWar")
		(year 1995))

	([ontology_Class12233] of  Book

		(author [ontology_Class10677])
		(genre "Fantasy")
		(pages 808)
		(popularity low)
		(rating 830.0)
		(title "TheCurseoftheMistwraith")
		(year 1993))

	([ontology_Class12234] of  Book

		(author [ontology_Class10166])
		(genre "Fantasy")
		(pages 1323)
		(popularity medium)
		(rating 1040.0)
		(title "TheDeedofPaksenarrion")
		(year 1992))

	([ontology_Class12235] of  Book

		(author [ontology_Class10027])
		(genre "Horror")
		(pages 459)
		(popularity low)
		(rating 384.0)
		(title "InaGlassDarkly")
		(year 1872))

	([ontology_Class12236] of  Book

		(author [ontology_Class10678])
		(genre "Uncategorized")
		(pages 682)
		(popularity medium)
		(rating 342.0)
		(title "TheShelteringSky")
		(year 1949))

	([ontology_Class12237] of  Book

		(author [ontology_Class10679])
		(genre "Uncategorized")
		(pages 691)
		(popularity low)
		(rating 96.0)
		(title "Jamilia")
		(year 1958))

	([ontology_Class12238] of  Book

		(author [ontology_Class10680])
		(genre "Uncategorized")
		(pages 271)
		(popularity low)
		(rating 80.0)
		(title "TheSnowGoose")
		(year 1941))

	([ontology_Class12239] of  Book

		(author [ontology_Class10214])
		(genre "Fantasy")
		(pages 283)
		(popularity low)
		(rating 280.0)
		(title "ThePerilousGard")
		(year 1974))

	([ontology_Class12240] of  Book

		(author [ontology_Class10681])
		(genre "Historical")
		(pages 397)
		(popularity low)
		(rating 704.0)
		(title "TheOriginalSin")
		(year 1992))

	([ontology_Class12241] of  Book

		(author [ontology_Class10103])
		(genre "Uncategorized")
		(pages 479)
		(popularity high)
		(rating 320.0)
		(title "TheEnglishPatient")
		(year 1992))

	([ontology_Class12242] of  Book

		(author [ontology_Class10102])
		(genre "Historical")
		(pages 1216)
		(popularity low)
		(rating 511.0)
		(title "GreenDarkness")
		(year 1972))

	([ontology_Class12243] of  Book

		(author [ontology_Class10682])
		(genre "Romance")
		(pages 1325)
		(popularity low)
		(rating 532.0)
		(title "ACottagebytheSea")
		(year 1996))

	([ontology_Class12244] of  Book

		(author [ontology_Class10091])
		(genre "Historical")
		(pages 1597)
		(popularity medium)
		(rating 1136.0)
		(title "Hawaii")
		(year 1959))

	([ontology_Class12245] of  Book

		(author [ontology_Class10202])
		(genre "Classics")
		(pages 1600)
		(popularity medium)
		(rating 592.0)
		(title "DoctorZhivago")
		(year 1957))

	([ontology_Class12246] of  Book

		(author [ontology_Class10683])
		(genre "Uncategorized")
		(pages 670)
		(popularity medium)
		(rating 224.0)
		(title "TrueGrit")
		(year 1968))

	([ontology_Class12247] of  Book

		(author [ontology_Class10684])
		(genre "Uncategorized")
		(pages 163)
		(popularity low)
		(rating 135.0)
		(title "ComedyinaMinorKey")
		(year 1947))

	([ontology_Class12248] of  Book

		(author [ontology_Class10146])
		(genre "Uncategorized")
		(pages 1054)
		(popularity medium)
		(rating 128.0)
		(title "Sounder")
		(year 1969))

	([ontology_Class12249] of  Book

		(author [ontology_Class10056])
		(genre "Classics")
		(pages 1388)
		(popularity high)
		(rating 581.0)
		(title "InvisibleMan")
		(year 1952))

	([ontology_Class12250] of  Book

		(author [ontology_Class10685])
		(genre "Historical")
		(pages 659)
		(popularity low)
		(rating 247.0)
		(title "Elyza")
		(year 1976))

	([ontology_Class12251] of  Book

		(author [ontology_Class10175])
		(genre "Classics")
		(pages 1525)
		(popularity medium)
		(rating 209.0)
		(title "MaryPoppins")
		(year 1934))

	([ontology_Class12252] of  Book

		(author [ontology_Class10492])
		(genre "Fantasy")
		(pages 375)
		(popularity low)
		(rating 464.0)
		(title "TheTwelveKingdoms:SeaofShadow")
		(year 1992))

	([ontology_Class12253] of  Book

		(author [ontology_Class10031])
		(genre "Fantasy")
		(pages 448)
		(popularity low)
		(rating 320.0)
		(title "TheAncientOne")
		(year 1992))

	([ontology_Class12254] of  Book

		(author [ontology_Class10173])
		(genre "Uncategorized")
		(pages 1184)
		(popularity medium)
		(rating 224.0)
		(title "TheBridgesofMadisonCounty")
		(year 1992))

	([ontology_Class12255] of  Book

		(author [ontology_Class10686])
		(genre "Horror")
		(pages 310)
		(popularity low)
		(rating 148.0)
		(title "Goon")
		(year 1996))

	([ontology_Class12256] of  Book

		(author [ontology_Class10687])
		(genre "Horror")
		(pages 342)
		(popularity low)
		(rating 416.0)
		(title "Skin")
		(year 1993))

	([ontology_Class12257] of  Book

		(author [ontology_Class10688])
		(genre "Horror")
		(pages 379)
		(popularity low)
		(rating 330.0)
		(title "MasterofLies")
		(year 1991))

	([ontology_Class12258] of  Book

		(author [ontology_Class10689])
		(genre "Horror")
		(pages 441)
		(popularity low)
		(rating 248.0)
		(title "Offspring:TheSequeltoOffSeason")
		(year 1991))

	([ontology_Class12259] of  Book

		(author [ontology_Class10690])
		(genre "Horror")
		(pages 585)
		(popularity low)
		(rating 282.0)
		(title "Let'sGoPlayattheAdams'")
		(year 1974))

	([ontology_Class12260] of  Book

		(author [ontology_Class10691])
		(genre "Romance")
		(pages 191)
		(popularity low)
		(rating 200.0)
		(title "WickedwiththeScoundrel"))

	([ontology_Class12261] of  Book

		(author [ontology_Class10692])
		(genre "Thriller")
		(pages 290)
		(popularity medium)
		(rating 208.0)
		(title "AColdDayForMurder")
		(year 1992))

	([ontology_Class12262] of  Book

		(author [ontology_Class10693])
		(genre "Contemporary")
		(pages 701)
		(popularity low)
		(rating 320.0)
		(title "TellMeHowYouReallyFeel"))

	([ontology_Class12263] of  Book

		(author [ontology_Class10694])
		(genre "Fantasy")
		(pages 994)
		(popularity low)
		(rating 416.0)
		(title "Titanshade"))

	([ontology_Class12264] of  Book

		(author [ontology_Class10404])
		(genre "Romance")
		(pages 1004)
		(popularity low)
		(rating 291.0)
		(title "MoonlightWhiskey"))

	([ontology_Class12265] of  Book

		(author [ontology_Class10695])
		(genre "Fantasy")
		(pages 263)
		(popularity low)
		(rating 169.0)
		(title "SwordWoman")
		(year 1977))

	([ontology_Class12266] of  Book

		(author [ontology_Class10696])
		(genre "Fantasy")
		(pages 383)
		(popularity low)
		(rating 212.0)
		(title "JirelofJoiry")
		(year 1934))

	([ontology_Class12267] of  Book

		(author [ontology_Class10697])
		(genre "Uncategorized")
		(pages 351)
		(popularity low)
		(rating 458.0)
		(title "TheQuest")
		(year 1975))

	([ontology_Class12268] of  Book

		(author [ontology_Class10698])
		(genre "Young")
		(pages 343)
		(popularity low)
		(rating 288.0)
		(title "BorrowedLight")
		(year 1999))

	([ontology_Class12269] of  Book

		(author [ontology_Class10699])
		(genre "Young")
		(pages 451)
		(popularity low)
		(rating 208.0)
		(title "Mr.andMrs.BoJoJones")
		(year 1967))

	([ontology_Class12270] of  Book

		(author [ontology_Class10700])
		(genre "Young")
		(pages 639)
		(popularity low)
		(rating 224.0)
		(title "ImaniAllMine")
		(year 1999))

	([ontology_Class12271] of  Book

		(author [ontology_Class10701])
		(genre "Young")
		(pages 661)
		(popularity low)
		(rating 160.0)
		(title "DearNobody")
		(year 1991))

	([ontology_Class12272] of  Book

		(author [ontology_Class10144])
		(genre "Uncategorized")
		(pages 637)
		(popularity medium)
		(rating 192.0)
		(title "MySideoftheMountain")
		(year 1959))

	([ontology_Class12273] of  Book

		(author [ontology_Class10273])
		(genre "Young")
		(pages 660)
		(popularity medium)
		(rating 169.0)
		(title "FreaktheMighty")
		(year 1993))

	([ontology_Class12274] of  Book

		(author [ontology_Class10702])
		(genre "Fantasy")
		(pages 586)
		(popularity low)
		(rating 320.0)
		(title "TheNightLifeoftheGods")
		(year 1931))

	([ontology_Class12275] of  Book

		(author [ontology_Class10703])
		(genre "Historical")
		(pages 2282)
		(popularity low)
		(rating 128.0)
		(title "BlackShipsBeforeTroy")
		(year 1993))

	([ontology_Class12276] of  Book

		(author [ontology_Class10704])
		(genre "Fantasy")
		(pages 397)
		(popularity low)
		(rating 318.0)
		(title "AMidsummerTempest")
		(year 1974))

	([ontology_Class12277] of  Book

		(author [ontology_Class10128])
		(genre "Uncategorized")
		(pages 593)
		(popularity low)
		(rating 204.0)
		(title "ASeveredHead")
		(year 1961))

	([ontology_Class12278] of  Book

		(author [ontology_Class10705])
		(genre "Short Stories")
		(pages 813)
		(popularity low)
		(rating 720.0)
		(title "CollectedStories")
		(year 1966))

	([ontology_Class12279] of  Book

		(author [ontology_Class10408])
		(genre "Romance")
		(pages 921)
		(popularity medium)
		(rating 578.0)
		(title "Rachel'sHoliday")
		(year 1997))

	([ontology_Class12280] of  Book

		(author [ontology_Class10706])
		(genre "Uncategorized")
		(pages 1200)
		(popularity low)
		(rating 352.0)
		(title "TheGingerMan")
		(year 1955))

	([ontology_Class12281] of  Book

		(author [ontology_Class10194])
		(genre "Classics")
		(pages 414)
		(popularity medium)
		(rating 654.0)
		(title "SonsandLovers")
		(year 1913))

	([ontology_Class12282] of  Book

		(author [ontology_Class10323])
		(genre "Classics")
		(pages 1499)
		(popularity high)
		(rating 208.0)
		(title "ASeparatePeace")
		(year 1959))

	([ontology_Class12283] of  Book

		(author [ontology_Class10707])
		(genre "Horror")
		(pages 1861)
		(popularity medium)
		(rating 580.0)
		(title "Boy'sLife")
		(year 1991))

	([ontology_Class12284] of  Book

		(author [ontology_Class10301])
		(genre "Historical")
		(pages 140)
		(popularity medium)
		(rating 525.0)
		(title "StonesfromtheRiver")
		(year 1994))

	([ontology_Class12285] of  Book

		(author [ontology_Class10290])
		(genre "Uncategorized")
		(pages 2234)
		(popularity medium)
		(rating 160.0)
		(title "WideSargassoSea")
		(year 1966))

	([ontology_Class12286] of  Book

		(author [ontology_Class10708])
		(genre "Uncategorized")
		(pages 587)
		(popularity low)
		(rating 313.0)
		(title "Wired")
		(year 1993))

	([ontology_Class12287] of  Book

		(author [ontology_Class10709])
		(genre "Uncategorized")
		(pages 633)
		(popularity low)
		(rating 160.0)
		(title "TheStreetofCrocodiles")
		(year 1933))

	([ontology_Class12288] of  Book

		(author [ontology_Class10710])
		(genre "Fantasy")
		(pages 839)
		(popularity low)
		(rating 154.0)
		(title "TheCircusofDr.Lao")
		(year 1935))

	([ontology_Class12289] of  Book

		(author [ontology_Class10512])
		(genre "Fantasy")
		(pages 906)
		(popularity low)
		(rating 239.0)
		(title "Lud-in-the-Mist")
		(year 1926))

	([ontology_Class12290] of  Book

		(author [ontology_Class10711])
		(genre "Fantasy")
		(pages 1222)
		(popularity low)
		(rating 446.0)
		(title "TheWormOuroboros")
		(year 1926))

	([ontology_Class12291] of  Book

		(author [ontology_Class10712])
		(genre "Fantasy")
		(pages 1462)
		(popularity low)
		(rating 652.0)
		(title "TheChroniclesofMasterLiandNumberTenOx")
		(year 1996))

	([ontology_Class12292] of  Book

		(author [ontology_Class10178])
		(genre "Thriller")
		(pages 908)
		(popularity medium)
		(rating 364.0)
		(title "TheMermaidsSinging")
		(year 1995))

	([ontology_Class12293] of  Book

		(author [ontology_Class10713])
		(genre "Thriller")
		(pages 929)
		(popularity medium)
		(rating 282.0)
		(title "LastBustoWoodstock")
		(year 1975))

	([ontology_Class12294] of  Book

		(author [ontology_Class10714])
		(genre "Uncategorized")
		(pages 973)
		(popularity medium)
		(rating 241.0)
		(title "LostHorizon")
		(year 1933))

	([ontology_Class12295] of  Book

		(author [ontology_Class10715])
		(genre "Uncategorized")
		(pages 1152)
		(popularity low)
		(rating 368.0)
		(title "TheChoirboys")
		(year 1975))

	([ontology_Class12296] of  Book

		(author [ontology_Class10580])
		(genre "Young")
		(pages 689)
		(popularity low)
		(rating 224.0)
		(title "Flambards")
		(year 1967))

	([ontology_Class12297] of  Book

		(author [ontology_Class10716])
		(genre "Fantasy")
		(pages 787)
		(popularity medium)
		(rating 224.0)
		(title "TheLittleWhiteHorse")
		(year 1946))

	([ontology_Class12298] of  Book

		(author [ontology_Class10283])
		(genre "Uncategorized")
		(pages 939)
		(popularity medium)
		(rating 371.0)
		(title "AThousandAcres")
		(year 1991))

	([ontology_Class12299] of  Book

		(author [ontology_Class10717])
		(genre "Classics")
		(pages 3774)
		(popularity medium)
		(rating 245.0)
		(title "NationalVelvet")
		(year 1935))

	([ontology_Class12300] of  Book

		(author [ontology_Class10718])
		(genre "Historical")
		(pages 1963)
		(popularity low)
		(rating 192.0)
		(title "EmmaHamilton")
		(year 1978))

	([ontology_Class12301] of  Book

		(author [ontology_Class10719])
		(genre "Historical")
		(pages 828)
		(popularity low)
		(rating 256.0)
		(title "TheEndlessSteppe:GrowingUpinSiberia")
		(year 1968))

	([ontology_Class12302] of  Book

		(author [ontology_Class10457])
		(genre "Uncategorized")
		(pages 838)
		(popularity low)
		(rating 696.0)
		(title "TheYoungLions")
		(year 1948))

	([ontology_Class12303] of  Book

		(author [ontology_Class10720])
		(genre "Historical")
		(pages 862)
		(popularity low)
		(rating 378.0)
		(title "LandGirls")
		(year 1994))

	([ontology_Class12304] of  Book

		(author [ontology_Class10456])
		(genre "Uncategorized")
		(pages 995)
		(popularity medium)
		(rating 821.0)
		(title "FromHeretoEternity")
		(year 1951))

	([ontology_Class12305] of  Book

		(author [ontology_Class10721])
		(genre "Uncategorized")
		(pages 1205)
		(popularity medium)
		(rating 380.0)
		(title "ItCan'tHappenHere")
		(year 1935))

	([ontology_Class12306] of  Book

		(author [ontology_Class10025])
		(genre "Horror")
		(pages 1463)
		(popularity medium)
		(rating 381.0)
		(title "AnnoDracula")
		(year 1992))

	([ontology_Class12307] of  Book

		(author [ontology_Class10118])
		(genre "Historical")
		(pages 1629)
		(popularity medium)
		(rating 1042.0)
		(title "WarandRemembrance")
		(year 1978))

	([ontology_Class12308] of  Book

		(author [ontology_Class10143])
		(genre "Uncategorized")
		(pages 1813)
		(popularity medium)
		(rating 562.0)
		(title "Sophie'sChoice")
		(year 1979))

	([ontology_Class12309] of  Book

		(author [ontology_Class10532])
		(genre "Fantasy")
		(pages 367)
		(popularity low)
		(rating 336.0)
		(title "BloodPrice")
		(year 1991))

	([ontology_Class12310] of  Book

		(author [ontology_Class10428])
		(genre "Classics")
		(pages 1847)
		(popularity medium)
		(rating 512.0)
		(title "LeMorted'Arthur:KingArthurandtheLegendsoftheRoundTable")
		(year 1485))

	([ontology_Class12311] of  Book

		(author [ontology_Class10722])
		(genre "Classics")
		(pages 1106)
		(popularity low)
		(rating 336.0)
		(title "BetsyandJoe")
		(year 1948))

	([ontology_Class12312] of  Book

		(author [ontology_Class10723])
		(genre "Classics")
		(pages 2312)
		(popularity medium)
		(rating 304.0)
		(title "Pollyanna")
		(year 1912))

	([ontology_Class12313] of  Book

		(author [ontology_Class10530])
		(genre "Uncategorized")
		(pages 362)
		(popularity low)
		(rating 615.0)
		(title "TheSunbird")
		(year 1972))

	([ontology_Class12314] of  Book

		(author [ontology_Class10724])
		(genre "Uncategorized")
		(pages 724)
		(popularity medium)
		(rating 341.0)
		(title "HendersontheRainKing")
		(year 1959))

	([ontology_Class12315] of  Book

		(author [ontology_Class10374])
		(genre "Uncategorized")
		(pages 1223)
		(popularity medium)
		(rating 222.0)
		(title "Scoop")
		(year 1938))

	([ontology_Class12316] of  Book

		(author [ontology_Class10725])
		(genre "Thriller")
		(pages 1017)
		(popularity low)
		(rating 288.0)
		(title "FalseConfessions")
		(year 1993))

	([ontology_Class12317] of  Book

		(author [ontology_Class10726])
		(genre "Horror")
		(pages 432)
		(popularity low)
		(rating 546.0)
		(title "100GhastlyLittleGhostStories")
		(year 1993))

	([ontology_Class12318] of  Book

		(author [ontology_Class10727])
		(genre "Horror")
		(pages 469)
		(popularity low)
		(rating 504.0)
		(title "TheOxfordBookofEnglishGhostStories")
		(year 1918))

	([ontology_Class12319] of  Book

		(author [ontology_Class10728])
		(genre "Short Stories")
		(pages 513)
		(popularity low)
		(rating 416.0)
		(title "SplatterpunksII:OvertheEdge")
		(year 1993))

	([ontology_Class12320] of  Book

		(author [ontology_Class10298])
		(genre "Historical")
		(pages 641)
		(popularity low)
		(rating 293.0)
		(title "IfIShouldDieBeforeIWake")
		(year 1994))

	([ontology_Class12321] of  Book

		(author [ontology_Class10729])
		(genre "Horror")
		(pages 657)
		(popularity low)
		(rating 336.0)
		(title "HotterBlood:MoreTalesofEroticHorror")
		(year 1991))

	([ontology_Class12322] of  Book

		(author [ontology_Class10730])
		(genre "Fantasy")
		(pages 1955)
		(popularity medium)
		(rating 498.0)
		(title "FireBringer")
		(year 1999))

	([ontology_Class12323] of  Book

		(author [ontology_Class10302])
		(genre "Historical")
		(pages 1094)
		(popularity medium)
		(rating 191.0)
		(title "WhenHitlerStolePinkRabbit")
		(year 1971))

	([ontology_Class12324] of  Book

		(author [ontology_Class10455])
		(genre "Thriller")
		(pages 294)
		(popularity low)
		(rating 224.0)
		(title "TheSatanBug")
		(year 1962))

	([ontology_Class12325] of  Book

		(author [ontology_Class10731])
		(genre "Uncategorized")
		(pages 862)
		(popularity low)
		(rating 256.0)
		(title "FreddytheDetective")
		(year 1932))

	([ontology_Class12326] of  Book

		(author [ontology_Class10233])
		(genre "Classics")
		(pages 1567)
		(popularity medium)
		(rating 192.0)
		(title "Bambi")
		(year 1923))

	([ontology_Class12327] of  Book

		(author [ontology_Class10303])
		(genre "Uncategorized")
		(pages 745)
		(popularity low)
		(rating 213.0)
		(title "TheHomeandtheWorld")
		(year 1916))

	([ontology_Class12328] of  Book

		(author [ontology_Class10732])
		(genre "Uncategorized")
		(pages 745)
		(popularity low)
		(rating 608.0)
		(title "TheRaggedTrouseredPhilanthropists")
		(year 1914))

	([ontology_Class12329] of  Book

		(author [ontology_Class10733])
		(genre "Uncategorized")
		(pages 883)
		(popularity low)
		(rating 252.0)
		(title "ZuleikaDobson")
		(year 1911))

	([ontology_Class12330] of  Book

		(author [ontology_Class10734])
		(genre "Westerns")
		(pages 1090)
		(popularity low)
		(rating 320.0)
		(title "RidersofthePurpleSage")
		(year 1912))

	([ontology_Class12331] of  Book

		(author [ontology_Class10735])
		(genre "Uncategorized")
		(pages 1754)
		(popularity medium)
		(rating 176.0)
		(title "UnderstoodBetsy")
		(year 1916))

	([ontology_Class12332] of  Book

		(author [ontology_Class10377])
		(genre "Uncategorized")
		(pages 2149)
		(popularity low)
		(rating 288.0)
		(title "TheMagnificentAmbersons")
		(year 1918))

	([ontology_Class12333] of  Book

		(author [ontology_Class10116])
		(genre "Historical")
		(pages 967)
		(popularity high)
		(rating 288.0)
		(title "RollofThunder,HearMyCry")
		(year 1976))

	([ontology_Class12334] of  Book

		(author [ontology_Class10736])
		(genre "Uncategorized")
		(pages 494)
		(popularity low)
		(rating 160.0)
		(title "TheAgeofWireandString")
		(year 1995))

	([ontology_Class12335] of  Book

		(author [ontology_Class10207])
		(genre "Uncategorized")
		(pages 1136)
		(popularity medium)
		(rating 103.0)
		(title "StoryoftheEye")
		(year 1928))

	([ontology_Class12336] of  Book

		(author [ontology_Class10161])
		(genre "Classics")
		(pages 1208)
		(popularity high)
		(rating 326.0)
		(title "TheSoundandtheFury")
		(year 1929))

	([ontology_Class12337] of  Book

		(author [ontology_Class10147])
		(genre "Classics")
		(pages 1129)
		(popularity medium)
		(rating 513.0)
		(title "TheYearling")
		(year 1938))

	([ontology_Class12338] of  Book

		(author [ontology_Class10588])
		(genre "Fantasy")
		(pages 1931)
		(popularity low)
		(rating 446.0)
		(title "DazzlingBrightness")
		(year 1994))

	([ontology_Class12339] of  Book

		(author [ontology_Class10376])
		(genre "Fantasy")
		(pages 654)
		(popularity low)
		(rating 240.0)
		(title "TheOwlService")
		(year 1967))

	([ontology_Class12340] of  Book

		(author [ontology_Class10737])
		(genre "Fantasy")
		(pages 1723)
		(popularity low)
		(rating 320.0)
		(title "TheWoodWife")
		(year 1996))

	([ontology_Class12341] of  Book

		(author [ontology_Class10385])
		(genre "Adventure")
		(pages 448)
		(popularity low)
		(rating 296.0)
		(title "CaptainBloodReturns")
		(year 1931))

	([ontology_Class12342] of  Book

		(author [ontology_Class10738])
		(genre "Adventure")
		(pages 548)
		(popularity low)
		(rating 256.0)
		(title "LetigridiMompracem")
		(year 1883))

	([ontology_Class12343] of  Book

		(author [ontology_Class10739])
		(genre "Fantasy")
		(pages 519)
		(popularity low)
		(rating 352.0)
		(title "InkintheBlood"))

	([ontology_Class12344] of  Book

		(author [ontology_Class10740])
		(genre "Young")
		(pages 621)
		(popularity low)
		(rating 360.0)
		(title "AllofUswithWings"))

	([ontology_Class12345] of  Book

		(author [ontology_Class10741])
		(genre "Young")
		(pages 759)
		(popularity low)
		(rating 320.0)
		(title "Reconnected"))

	([ontology_Class12346] of  Book

		(author [ontology_Class10142])
		(genre "Classics")
		(pages 1932)
		(popularity medium)
		(rating 352.0)
		(title "TheSwissFamilyRobinson")
		(year 1812))

	([ontology_Class12347] of  Book

		(author [ontology_Class10742])
		(genre "Young")
		(pages 1125)
		(popularity low)
		(rating 240.0)
		(title "AlltheWallsofBelfast"))

	([ontology_Class12348] of  Book

		(author [ontology_Class10743])
		(genre "Historical")
		(pages 1529)
		(popularity low)
		(rating 368.0)
		(title "Spectacle"))

	([ontology_Class12349] of  Book

		(author [ontology_Class10744])
		(genre "Fantasy")
		(pages 583)
		(popularity low)
		(rating 432.0)
		(title "ThePurpleEmperor")
		(year 1999))

	([ontology_Class12350] of  Book

		(author [ontology_Class10745])
		(genre "Fantasy")
		(pages 3699)
		(popularity low)
		(rating 336.0)
		(title "TheseWitchesDon'tBurn"))

	([ontology_Class12351] of  Book

		(author [ontology_Class10746])
		(genre "Historical")
		(pages 280)
		(popularity low)
		(rating 480.0)
		(title "TheBrandedMan")
		(year 1997))

	([ontology_Class12352] of  Book

		(author [ontology_Class10747])
		(genre "Uncategorized")
		(pages 684)
		(popularity low)
		(rating 306.0)
		(title "AGameofHideandSeek")
		(year 1951))

	([ontology_Class12353] of  Book

		(author [ontology_Class10304])
		(genre "Uncategorized")
		(pages 747)
		(popularity low)
		(rating 584.0)
		(title "TheSingaporeGrip")
		(year 1978))

	([ontology_Class12354] of  Book

		(author [ontology_Class10748])
		(genre "Uncategorized")
		(pages 747)
		(popularity low)
		(rating 264.0)
		(title "TheExpendableMan")
		(year 1963))

	([ontology_Class12355] of  Book

		(author [ontology_Class10236])
		(genre "Horror")
		(pages 806)
		(popularity medium)
		(rating 272.0)
		(title "TheOther")
		(year 1971))

	([ontology_Class12356] of  Book

		(author [ontology_Class10749])
		(genre "Uncategorized")
		(pages 815)
		(popularity low)
		(rating 133.0)
		(title "TheVet'sDaughter")
		(year 1959))

	([ontology_Class12357] of  Book

		(author [ontology_Class10750])
		(genre "Uncategorized")
		(pages 279)
		(popularity low)
		(rating 688.0)
		(title "TheCarpetbaggers")
		(year 1961))

	([ontology_Class12358] of  Book

		(author [ontology_Class10751])
		(genre "Uncategorized")
		(pages 865)
		(popularity low)
		(rating 136.0)
		(title "JourneyintothePast")
		(year 1976))

	([ontology_Class12359] of  Book

		(author [ontology_Class10427])
		(genre "Classics")
		(pages 371)
		(popularity medium)
		(rating 909.0)
		(title "TheDecameron")
		(year 1353))

	([ontology_Class12360] of  Book

		(author [ontology_Class10752])
		(genre "Uncategorized")
		(pages 909)
		(popularity low)
		(rating 128.0)
		(title "GreatGrannyWebster")
		(year 1977))

	([ontology_Class12361] of  Book

		(author [ontology_Class10753])
		(genre "Uncategorized")
		(pages 988)
		(popularity low)
		(rating 174.0)
		(title "MonsieurMondeVanishes")
		(year 1945))

	([ontology_Class12362] of  Book

		(author [ontology_Class10363])
		(genre "Classics")
		(pages 1038)
		(popularity low)
		(rating 272.0)
		(title "ThePrivateMemoirsandConfessionsofaJustifiedSinner")
		(year 1824))

	([ontology_Class12363] of  Book

		(author [ontology_Class10754])
		(genre "Uncategorized")
		(pages 1044)
		(popularity low)
		(rating 128.0)
		(title "SleeplessNights")
		(year 1979))

	([ontology_Class12364] of  Book

		(author [ontology_Class10755])
		(genre "Uncategorized")
		(pages 1158)
		(popularity low)
		(rating 209.0)
		(title "BlackWingsHasMyAngel")
		(year 1953))

	([ontology_Class12365] of  Book

		(author [ontology_Class10756])
		(genre "Short Stories")
		(pages 1216)
		(popularity low)
		(rating 228.0)
		(title "MemoriesoftheFuture")
		(year 1929))

	([ontology_Class12366] of  Book

		(author [ontology_Class10757])
		(genre "Uncategorized")
		(pages 1246)
		(popularity low)
		(rating 76.0)
		(title "RockCrystal")
		(year 1853))

	([ontology_Class12367] of  Book

		(author [ontology_Class10758])
		(genre "Historical")
		(pages 1328)
		(popularity low)
		(rating 336.0)
		(title "Augustus")
		(year 1972))

	([ontology_Class12368] of  Book

		(author [ontology_Class10759])
		(genre "Uncategorized")
		(pages 1399)
		(popularity low)
		(rating 182.0)
		(title "RogueMale")
		(year 1939))

	([ontology_Class12369] of  Book

		(author [ontology_Class10760])
		(genre "Uncategorized")
		(pages 1469)
		(popularity low)
		(rating 242.0)
		(title "TheSlavesofSolitude")
		(year 1947))

	([ontology_Class12370] of  Book

		(author [ontology_Class10761])
		(genre "Classics")
		(pages 1615)
		(popularity medium)
		(rating 208.0)
		(title "Pinocchio")
		(year 1883))

	([ontology_Class12371] of  Book

		(author [ontology_Class10762])
		(genre "Uncategorized")
		(pages 1804)
		(popularity low)
		(rating 256.0)
		(title "CassandraattheWedding")
		(year 1962))

	([ontology_Class12372] of  Book

		(author [ontology_Class10763])
		(genre "Westerns")
		(pages 1920)
		(popularity low)
		(rating 471.0)
		(title "Warlock")
		(year 1958))

	([ontology_Class12373] of  Book

		(author [ontology_Class10380])
		(genre "Uncategorized")
		(pages 2123)
		(popularity medium)
		(rating 247.0)
		(title "TheEnchantedApril")
		(year 1922))

	([ontology_Class12374] of  Book

		(author [ontology_Class10764])
		(genre "Uncategorized")
		(pages 2134)
		(popularity low)
		(rating 222.0)
		(title "LollyWillowes")
		(year 1926))

	([ontology_Class12375] of  Book

		(author [ontology_Class10765])
		(genre "Uncategorized")
		(pages 2892)
		(popularity low)
		(rating 260.0)
		(title "TheDudAvocado")
		(year 1958))

	([ontology_Class12376] of  Book

		(author [ontology_Class10581])
		(genre "Classics")
		(pages 3485)
		(popularity low)
		(rating 326.0)
		(title "TheGo-Between")
		(year 1953))

	([ontology_Class12377] of  Book

		(author [ontology_Class10766])
		(genre "Historical")
		(pages 3178)
		(popularity low)
		(rating 503.0)
		(title "TheLongShips")
		(year 1941))

	([ontology_Class12378] of  Book

		(author [ontology_Class10767])
		(genre "Historical")
		(pages 629)
		(popularity medium)
		(rating 324.0)
		(title "IntheTimeoftheButterflies")
		(year 1994))

	([ontology_Class12379] of  Book

		(author [ontology_Class10768])
		(genre "Classics")
		(pages 839)
		(popularity medium)
		(rating 176.0)
		(title "TheDiaryofaNobody")
		(year 1892))

	([ontology_Class12380] of  Book

		(author [ontology_Class10769])
		(genre "Historical")
		(pages 328)
		(popularity low)
		(rating 218.0)
		(title "EscapeFromWarsaw")
		(year 1956))

	([ontology_Class12381] of  Book

		(author [ontology_Class10770])
		(genre "Historical")
		(pages 430)
		(popularity low)
		(rating 287.0)
		(title "EnemyBrothers")
		(year 1944))

	([ontology_Class12382] of  Book

		(author [ontology_Class10771])
		(genre "Historical")
		(pages 1122)
		(popularity low)
		(rating 221.0)
		(title "TheBorrowedHouse")
		(year 1975))

	([ontology_Class12383] of  Book

		(author [ontology_Class10299])
		(genre "Historical")
		(pages 1663)
		(popularity medium)
		(rating 208.0)
		(title "TheUpstairsRoom")
		(year 1972))

	([ontology_Class12384] of  Book

		(author [ontology_Class10297])
		(genre "Historical")
		(pages 2107)
		(popularity medium)
		(rating 203.0)
		(title "SummerofMyGermanSoldier")
		(year 1973))

	([ontology_Class12385] of  Book

		(author [ontology_Class10387])
		(genre "Religious")
		(pages 1468)
		(popularity medium)
		(rating 300.0)
		(title "ThePrincess")
		(year 1999))

	([ontology_Class12386] of  Book

		(author [ontology_Class10772])
		(genre "Romance")
		(pages 668)
		(popularity low)
		(rating 192.0)
		(title "TheSpanishGroom")
		(year 1999))

	([ontology_Class12387] of  Book

		(author [ontology_Class10364])
		(genre "Classics")
		(pages 453)
		(popularity medium)
		(rating 455.0)
		(title "LadyAudley'sSecret")
		(year 1862))

	([ontology_Class12388] of  Book

		(author [ontology_Class10096])
		(genre "Historical")
		(pages 500)
		(popularity medium)
		(rating 972.0)
		(title "ForeverAmber")
		(year 1944))

	([ontology_Class12389] of  Book

		(author [ontology_Class10773])
		(genre "Uncategorized")
		(pages 1376)
		(popularity low)
		(rating 468.0)
		(title "ThePursuitofLoveLoveinaColdClimate")
		(year 1974))

	([ontology_Class12390] of  Book

		(author [ontology_Class10774])
		(genre "Uncategorized")
		(pages 1608)
		(popularity medium)
		(rating 234.0)
		(title "MissPettigrewLivesforaDay")
		(year 1938))

	([ontology_Class12391] of  Book

		(author [ontology_Class10775])
		(genre "Uncategorized")
		(pages 461)
		(popularity low)
		(rating 288.0)
		(title "Fail-Safe")
		(year 1962))

	([ontology_Class12392] of  Book

		(author [ontology_Class10326])
		(genre "Uncategorized")
		(pages 768)
		(popularity low)
		(rating 243.0)
		(title "IntotheForest")
		(year 1996))

	([ontology_Class12393] of  Book

		(author [ontology_Class10092])
		(genre "Historical")
		(pages 1012)
		(popularity low)
		(rating 803.0)
		(title "ShadowoftheMoon")
		(year 1957))

	([ontology_Class12394] of  Book

		(author [ontology_Class10776])
		(genre "Uncategorized")
		(pages 1154)
		(popularity low)
		(rating 186.0)
		(title "NectarinaSieve")
		(year 1954))

	([ontology_Class12395] of  Book

		(author [ontology_Class10777])
		(genre "Contemporary")
		(pages 2422)
		(popularity low)
		(rating 217.0)
		(title "BraveLikeLily"))

	([ontology_Class12396] of  Book

		(author [ontology_Class10778])
		(genre "Uncategorized")
		(pages 1076)
		(popularity low)
		(rating 432.0)
		(title "EndlessLove")
		(year 1979))

	([ontology_Class12397] of  Book

		(author [ontology_Class10362])
		(genre "Uncategorized")
		(pages 1459)
		(popularity low)
		(rating 254.0)
		(title "Asylum")
		(year 1996))

	([ontology_Class12398] of  Book

		(author [ontology_Class10373])
		(genre "Historical")
		(pages 428)
		(popularity medium)
		(rating 347.0)
		(title "MemoirsofHadrian")
		(year 1951))

	([ontology_Class12399] of  Book

		(author [ontology_Class10779])
		(genre "Uncategorized")
		(pages 646)
		(popularity low)
		(rating 216.0)
		(title "BrokenApril")
		(year 1978))

	([ontology_Class12400] of  Book

		(author [ontology_Class10389])
		(genre "Uncategorized")
		(pages 947)
		(popularity medium)
		(rating 512.0)
		(title "Christy")
		(year 1967))

	([ontology_Class12401] of  Book

		(author [ontology_Class10372])
		(genre "Uncategorized")
		(pages 531)
		(popularity medium)
		(rating 256.0)
		(title "GoTellItontheMountain")
		(year 1953))

	([ontology_Class12402] of  Book

		(author [ontology_Class10589])
		(genre "Uncategorized")
		(pages 561)
		(popularity low)
		(rating 658.0)
		(title "TheRichAreDifferent")
		(year 1977))

	([ontology_Class12403] of  Book

		(author [ontology_Class10505])
		(genre "Uncategorized")
		(pages 755)
		(popularity medium)
		(rating 508.0)
		(title "FallonYourKnees")
		(year 1996))

	([ontology_Class12404] of  Book

		(author [ontology_Class10780])
		(genre "Uncategorized")
		(pages 831)
		(popularity low)
		(rating 320.0)
		(title "Hanna'sDaughters")
		(year 1994))

	([ontology_Class12405] of  Book

		(author [ontology_Class10781])
		(genre "Historical")
		(pages 1114)
		(popularity medium)
		(rating 816.0)
		(title "CaptainsandtheKings")
		(year 1972))

	([ontology_Class12406] of  Book

		(author [ontology_Class10782])
		(genre "Romance")
		(pages 495)
		(popularity low)
		(rating 469.0)
		(title "TheComingHomePlace")
		(year 1994))

	([ontology_Class12407] of  Book

		(author [ontology_Class10183])
		(genre "Uncategorized")
		(pages 484)
		(popularity medium)
		(rating 116.0)
		(title "ThePostmanAlwaysRingsTwice")
		(year 1934))

	([ontology_Class12408] of  Book

		(author [ontology_Class10783])
		(genre "Historical")
		(pages 1937)
		(popularity medium)
		(rating 698.0)
		(title "Evergreen")
		(year 1978))

	([ontology_Class12409] of  Book

		(author [ontology_Class10784])
		(genre "Romance")
		(pages 1378)
		(popularity low)
		(rating 286.0)
		(title "TheUltimateBetrayal")
		(year 1995))

	([ontology_Class12410] of  Book

		(author [ontology_Class10537])
		(genre "Uncategorized")
		(pages 1443)
		(popularity low)
		(rating 276.0)
		(title "DarkAsTheGraveWhereinMyFriendIsLaid")
		(year 1968))

	([ontology_Class12411] of  Book

		(author [ontology_Class10300])
		(genre "Uncategorized")
		(pages 1528)
		(popularity medium)
		(rating 543.0)
		(title "EveryManDiesAlone")
		(year 1947))

	([ontology_Class12412] of  Book

		(author [ontology_Class10785])
		(genre "Thriller")
		(pages 788)
		(popularity low)
		(rating 288.0)
		(title "TheUndergroundMan")
		(year 1971))

	([ontology_Class12413] of  Book

		(author [ontology_Class10786])
		(genre "Thriller")
		(pages 859)
		(popularity low)
		(rating 291.0)
		(title "PhantomLady")
		(year 1942))

	([ontology_Class12414] of  Book

		(author [ontology_Class10470])
		(genre "Thriller")
		(pages 886)
		(popularity low)
		(rating 294.0)
		(title "ADanceAtTheSlaughterhouse")
		(year 1991))

	([ontology_Class12415] of  Book

		(author [ontology_Class10787])
		(genre "Uncategorized")
		(pages 238)
		(popularity low)
		(rating 1776.0)
		(title "TheNortonAnthologyofShortFiction")
		(year 1978))

	([ontology_Class12416] of  Book

		(author [ontology_Class10788])
		(genre "Uncategorized")
		(pages 2324)
		(popularity low)
		(rating 392.0)
		(title "Suvashun")
		(year 1969))

	([ontology_Class12417] of  Book

		(author [ontology_Class10789])
		(genre "Thriller")
		(pages 1003)
		(popularity low)
		(rating 256.0)
		(title "DarkPassage")
		(year 1946))

	([ontology_Class12418] of  Book

		(author [ontology_Class10331])
		(genre "Uncategorized")
		(pages 1222)
		(popularity low)
		(rating 160.0)
		(title "CottonComestoHarlem")
		(year 1964))

	([ontology_Class12419] of  Book

		(author [ontology_Class10790])
		(genre "Uncategorized")
		(pages 381)
		(popularity medium)
		(rating 704.0)
		(title "Ahab'sWife,orTheStar-Gazer")
		(year 1999))

	([ontology_Class12420] of  Book

		(author [ontology_Class10791])
		(genre "Horror")
		(pages 467)
		(popularity low)
		(rating 261.0)
		(title "AlfredHitchcock'sGhostlyGallery")
		(year 1962))

	([ontology_Class12421] of  Book

		(author [ontology_Class10792])
		(genre "Thriller")
		(pages 1629)
		(popularity low)
		(rating 244.0)
		(title "TheLastGoodKiss")
		(year 1978))

	([ontology_Class12422] of  Book

		(author [ontology_Class10793])
		(genre "Thriller")
		(pages 1763)
		(popularity low)
		(rating 246.0)
		(title "I,theJury")
		(year 1947))

	([ontology_Class12423] of  Book

		(author [ontology_Class10794])
		(genre "Uncategorized")
		(pages 4048)
		(popularity low)
		(rating 122.0)
		(title "TheyShootHorses,Don'tThey?")
		(year 1935))

	([ontology_Class12424] of  Book

		(author [ontology_Class10795])
		(genre "Classics")
		(pages 1419)
		(popularity medium)
		(rating 244.0)
		(title "HansBrinker,ortheSilverSkates")
		(year 1865))

	([ontology_Class12425] of  Book

		(author [ontology_Class10796])
		(genre "Historical")
		(pages 1584)
		(popularity low)
		(rating 298.0)
		(title "IndianCaptive:TheStoryofMaryJemison")
		(year 1941))

	([ontology_Class12426] of  Book

		(author [ontology_Class10274])
		(genre "Historical")
		(pages 2039)
		(popularity medium)
		(rating 251.0)
		(title "CarryOn,Mr.Bowditch")
		(year 1955))

	([ontology_Class12427] of  Book

		(author [ontology_Class10272])
		(genre "Historical")
		(pages 2309)
		(popularity medium)
		(rating 120.0)
		(title "TheDoorintheWall")
		(year 1949))

	([ontology_Class12428] of  Book

		(author [ontology_Class10276])
		(genre "Historical")
		(pages 6353)
		(popularity medium)
		(rating 322.0)
		(title "JohnnyTremain")
		(year 1943))

	([ontology_Class12429] of  Book

		(author [ontology_Class10797])
		(genre "Uncategorized")
		(pages 636)
		(popularity medium)
		(rating 464.0)
		(title "Sullivan'sIsland")
		(year 1999))

	([ontology_Class12430] of  Book

		(author [ontology_Class10798])
		(genre "Uncategorized")
		(pages 681)
		(popularity low)
		(rating 192.0)
		(title "AFeastofSnakes")
		(year 1976))

	([ontology_Class12431] of  Book

		(author [ontology_Class10799])
		(genre "Short Stories")
		(pages 711)
		(popularity low)
		(rating 495.0)
		(title "TheCollectedStoriesofKatherineAnnePorter")
		(year 1965))

	([ontology_Class12432] of  Book

		(author [ontology_Class10391])
		(genre "Uncategorized")
		(pages 1049)
		(popularity medium)
		(rating 192.0)
		(title "TobaccoRoad")
		(year 1932))

	([ontology_Class12433] of  Book

		(author [ontology_Class10393])
		(genre "Uncategorized")
		(pages 1174)
		(popularity medium)
		(rating 242.0)
		(title "TheMoviegoer")
		(year 1961))

	([ontology_Class12434] of  Book

		(author [ontology_Class10396])
		(genre "Uncategorized")
		(pages 2681)
		(popularity medium)
		(rating 439.0)
		(title "AlltheKing'sMen")
		(year 1946))

	([ontology_Class12435] of  Book

		(author [ontology_Class10800])
		(genre "Uncategorized")
		(pages 259)
		(popularity medium)
		(rating 81.0)
		(title "TheHouroftheStar")
		(year 1977))

	([ontology_Class12436] of  Book

		(author [ontology_Class10369])
		(genre "Historical")
		(pages 597)
		(popularity medium)
		(rating 211.0)
		(title "TheSamurai'sGarden")
		(year 1994))

	([ontology_Class12437] of  Book

		(author [ontology_Class10801])
		(genre "Fantasy")
		(pages 392)
		(popularity low)
		(rating 143.0)
		(title "TheKing'sDamosel")
		(year 1975))

	([ontology_Class12438] of  Book

		(author [ontology_Class10802])
		(genre "Religious")
		(pages 665)
		(popularity low)
		(rating 0.0)
		(title "ThePendragon")
		(year 1979))

	([ontology_Class12439] of  Book

		(author [ontology_Class10803])
		(genre "Fantasy")
		(pages 705)
		(popularity low)
		(rating 307.0)
		(title "TheChildQueen:TheTaleofGuinevereandKingArthur")
		(year 1994))

	([ontology_Class12440] of  Book

		(author [ontology_Class10804])
		(genre "Fantasy")
		(pages 740)
		(popularity low)
		(rating 402.0)
		(title "TheForeverKing")
		(year 1992))

	([ontology_Class12441] of  Book

		(author [ontology_Class10805])
		(genre "Classics")
		(pages 1222)
		(popularity low)
		(rating 330.0)
		(title "KingArthurandHisKnightsoftheRoundTable")
		(year 1953))

	([ontology_Class12442] of  Book

		(author [ontology_Class10360])
		(genre "Classics")
		(pages 989)
		(popularity medium)
		(rating 48.0)
		(title "TheMostDangerousGame")
		(year 1924))

	([ontology_Class12443] of  Book

		(author [ontology_Class10806])
		(genre "Historical")
		(pages 2166)
		(popularity low)
		(rating 373.0)
		(title "TheHistoryoftheKingsofBritain")
		(year 1138))

	([ontology_Class12444] of  Book

		(author [ontology_Class10332])
		(genre "Uncategorized")
		(pages 567)
		(popularity medium)
		(rating 160.0)
		(title "TheBridgeofSanLuisRey")
		(year 1927))

	([ontology_Class12445] of  Book

		(author [ontology_Class10807])
		(genre "Uncategorized")
		(pages 688)
		(popularity medium)
		(rating 91.0)
		(title "Silk")
		(year 1996))

	([ontology_Class12446] of  Book

		(author [ontology_Class10219])
		(genre "Classics")
		(pages 759)
		(popularity medium)
		(rating 185.0)
		(title "ThreeMeninaBoat")
		(year 1889))

	([ontology_Class12447] of  Book

		(author [ontology_Class10258])
		(genre "Uncategorized")
		(pages 840)
		(popularity low)
		(rating 176.0)
		(title "It'sLikeThis,Cat")
		(year 1963))

	([ontology_Class12448] of  Book

		(author [ontology_Class10808])
		(genre "Historical")
		(pages 1424)
		(popularity low)
		(rating 315.0)
		(title "TheTallWoman")
		(year 1962))

	([ontology_Class12449] of  Book

		(author [ontology_Class10809])
		(genre "Uncategorized")
		(pages 1436)
		(popularity low)
		(rating 339.0)
		(title "TheUnquietEarth")
		(year 1992))

	([ontology_Class12450] of  Book

		(author [ontology_Class10810])
		(genre "Uncategorized")
		(pages 2160)
		(popularity medium)
		(rating 320.0)
		(title "ADeathintheFamily")
		(year 1957))

	([ontology_Class12451] of  Book

		(author [ontology_Class10811])
		(genre "Young")
		(pages 2574)
		(popularity low)
		(rating 224.0)
		(title "WheretheLiliesBloom")
		(year 1969))

	([ontology_Class12452] of  Book

		(author [ontology_Class10504])
		(genre "Uncategorized")
		(pages 6123)
		(popularity medium)
		(rating 326.0)
		(title "GapCreek")
		(year 1999))

	([ontology_Class12453] of  Book

		(author [ontology_Class10239])
		(genre "Horror")
		(pages 1714)
		(popularity medium)
		(rating 272.0)
		(title "TheOmen")
		(year 1976))

	([ontology_Class12454] of  Book

		(author [ontology_Class10081])
		(genre "Historical")
		(pages 510)
		(popularity low)
		(rating 543.0)
		(title "TheGameofKings")
		(year 1961))

	([ontology_Class12455] of  Book

		(author [ontology_Class10383])
		(genre "Historical")
		(pages 795)
		(popularity low)
		(rating 635.0)
		(title "Q,Englishedition")
		(year 1999))

	([ontology_Class12456] of  Book

		(author [ontology_Class10334])
		(genre "Classics")
		(pages 3567)
		(popularity medium)
		(rating 589.0)
		(title "QuoVadis")
		(year 1894))

	([ontology_Class12457] of  Book

		(author [ontology_Class10812])
		(genre "Romance")
		(pages 622)
		(popularity low)
		(rating 439.0)
		(title "TheGroundSheWalksUpon")
		(year 1994))

	([ontology_Class12458] of  Book

		(author [ontology_Class10813])
		(genre "Romance")
		(pages 729)
		(popularity low)
		(rating 416.0)
		(title "Untamed")
		(year 1993))

	([ontology_Class12459] of  Book

		(author [ontology_Class10814])
		(genre "Romance")
		(pages 983)
		(popularity low)
		(rating 296.0)
		(title "TheSheik")
		(year 1919))

	([ontology_Class12460] of  Book

		(author [ontology_Class10815])
		(genre "Romance")
		(pages 1023)
		(popularity low)
		(rating 604.0)
		(title "DarkFires")
		(year 1975))

	([ontology_Class12461] of  Book

		(author [ontology_Class10816])
		(genre "Romance")
		(pages 1179)
		(popularity low)
		(rating 436.0)
		(title "Enslaved")
		(year 1996))

	([ontology_Class12462] of  Book

		(author [ontology_Class10817])
		(genre "Historical")
		(pages 578)
		(popularity low)
		(rating 593.0)
		(title "TheKing'sWomen")
		(year 1992))

	([ontology_Class12463] of  Book

		(author [ontology_Class10572])
		(genre "Uncategorized")
		(pages 1524)
		(popularity medium)
		(rating 449.0)
		(title "ValleyoftheDolls")
		(year 1966))

	([ontology_Class12464] of  Book

		(author [ontology_Class10818])
		(genre "Historical")
		(pages 1916)
		(popularity low)
		(rating 272.0)
		(title "TheGoldsmith'sWife")
		(year 1952))

	([ontology_Class12465] of  Book

		(author [ontology_Class10819])
		(genre "Thriller")
		(pages 614)
		(popularity low)
		(rating 288.0)
		(title "What'saGirlGottaDo?")
		(year 1994))

	([ontology_Class12466] of  Book

		(author [ontology_Class10820])
		(genre "Uncategorized")
		(pages 1424)
		(popularity low)
		(rating 0.0)
		(title "WinnetouI")
		(year 1892))
)

; ============================================================================ ;
; ================================= MODULES ================================== ;
; ============================================================================ ;

; Main module
(defmodule MAIN
	(export ?ALL)
)

; User data module
(defmodule DATA
	(import MAIN ?ALL)
	(export ?ALL)
)

; User information module
(defmodule USER
	(import MAIN ?ALL)
	(import DATA ?ALL)
	(export ?ALL)
)

; User preferences module
(defmodule PREF
	(import MAIN ?ALL)
	(import DATA ?ALL)
	(export ?ALL)
)

; Book-popularity preference module
(defmodule POPU
	(import MAIN ?ALL)
	(import DATA ?ALL)
	(import PREF ?ALL)
	(export ?ALL)
)

; Book-antiquity preference module
(defmodule ANTI
	(import MAIN ?ALL)
	(import DATA ?ALL)
	(import PREF ?ALL)
	(export ?ALL)
)

; User recomendation module
(defmodule RECO
	(import MAIN ?ALL)
	(export ?ALL)
)

; Result presentation module
(defmodule PRES
	(import MAIN ?ALL)
	(export ?ALL)
)

; ============================================================================ ;
; ================================= MESSAGES ================================= ;
; ============================================================================ ;

; ¿TODO?

; ============================================================================ ;
; ================================ TEMPLATES ================================= ;
; ============================================================================ ;

; Actual user data template
(deftemplate MAIN::User
	(slot name
		(type STRING)
		(default "NONE")
	)
	(slot age
		(type INTEGER)
		(default -1)
	)
	(slot gender
		(type SYMBOL)
		(default NONE)
	)
)

; Actual user preferences template
(deftemplate MAIN::Pref
	(slot religious
		(type SYMBOL)
		(default NONE)
	)
	(slot freq
		(type SYMBOL)
		(default NONE)
	)
	(slot highP
		(type SYMBOL)
		(default NONE)
	)
	(slot midP
		(type SYMBOL)
		(default NONE)
	)
	(slot lowP
		(type SYMBOL)
		(default NONE)
	)
	(slot oldA
		(type SYMBOL)
		(default NONE)
	)
	(slot midA
		(type SYMBOL)
		(default NONE)
	)
	(slot newA
		(type SYMBOL)
		(default NONE)
	)
	(slot genre
		(type SYMBOL)
		(default NONE)
	)
)

; Actual user recomendation template
(deftemplate MAIN::Reco
	(slot size
		(type SYMBOL)
		(default NONE)
	)
)

; ============================================================================ ;
; ================================ FUNCTIONS ================================= ;
; ============================================================================ ;

; ----------------------------------- MAIN ----------------------------------- ;

; Prints a message
(deffunction MAIN::print(?msg)
	(printout t ?msg)
)

; Prints a message followed by a line break
(deffunction MAIN::println(?msg)
	(print ?msg)
	(printout t crlf)
)

; Prints the welcome header
(deffunction MAIN::print-welcome()
	(println "")
	(println "=================================================================")
	(println "=                   BOOK RECOENDATION SYSTEM                   =")
	(println "=================================================================")
	(println "")
)

; Prints a separator line
(deffunction MAIN::print-separator()
	(println "")
	(println "-----------------------------------------------------------------")
	(println "")
)

; General question with a set of allowed answers
(deffunction MAIN::question-options(?question $?allowed-values)
	(format t "%s " ?question)
	(progn$ (?curr-value $?allowed-values)
    (println "")
		(format t "      [%s]" ?curr-value)
 	)
	(printout t crlf "  > ")
	(bind ?answer (read))
	(if (lexemep ?answer)
		then (bind ?answer (lowcase ?answer))
	)
	(while (not (member ?answer ?allowed-values)) do
		(format t "%s " ?question)
	 	(progn$ (?curr-value $?allowed-values)
      (println "")
	 		(format t "      [%s]" ?curr-value)
	 	)
	 	(printout t crlf "  > ")
		(bind ?answer (read))
		(if (lexemep ?answer)
			then (bind ?answer (lowcase ?answer))
		)
	)
	?answer
)

; General question with yes/no answers
(deffunction MAIN::question-yes-no(?question)
	(bind ?answer (question-options ?question yes no))
	(if (or (eq ?answer yes) (eq ?answer y))
		then TRUE
		else FALSE
	)
)

; General question
(deffunction MAIN::question-general(?question)
	(format t "%s " ?question)
	(bind ?answer (read))
	(while (not (lexemep ?answer)) do
		(format t "%s " ?question)
		(bind ?answer (read))
	)
	?answer
)

; Funcion para hacer una pregunta con respuesta numerica unica
(deffunction MAIN::question-range(?question ?rangeI ?rangeF)
	(format t "%s [%d-%d]: " ?question ?rangeI ?rangeF)
	(bind ?answer (read))
	(while (not (and (>= ?answer ?rangeI) (<= ?answer ?rangeF))) do
		(format t "%s [%d-%d]: " ?question ?rangeI ?rangeF)
		(bind ?answer (read))
	)
	?answer
)

; Funcion para hacer pregunta con indice de respuestas posibles
(deffunction MAIN::question-index(?question $?possible-values)
	(bind ?line (format nil "%s" ?question))
	(printout t ?line crlf)
	(progn$ (?var ?possible-values)
		(bind ?line (format nil "  %d. %s" ?var-index ?var))
		(printout t ?line crlf)
	)
	(bind ?answer (question-range "Choose and option:" 1 (length$ ?possible-values)))
	?answer
)

; Funcion para hacer una pregunta multi-respuesta con indices
(deffunction MAIN::question-multi(?question $?possible-values)
	(bind ?line (format nil "%s" ?question))
	(printout t ?line crlf)
	(progn$ (?var ?possible-values)
		(bind ?line (format nil "  %d. %s" ?var-index ?var))
		(printout t ?line crlf)
	)
	(format t "%s" "Put the numbers separated by spaces: ")
	(bind ?answer (readline))
	(bind ?numbers (str-explode ?answer))
	(bind $?list (create$))
	(progn$ (?var ?numbers)
		(if (and (integerp ?var) (and (>= ?var 1) (<= ?var (length$ ?possible-values))))
			then
				(if (not (member$ ?var ?list))
					then (bind ?list (insert$ ?list (+ (length$ ?list) 1) ?var))
				)
		)
	)
)

; ============================================================================ ;
; ============================== RULES & FACTS =============================== ;
; ============================================================================ ;

; ----------------------------------- MAIN ----------------------------------- ;

; Starts the execution printing a welcome messsage
(defrule MAIN::initial
	?fact <- (initial-fact)
	=>
	(print-welcome)
	(retract ?fact)
)

; Obtains user's data chanfreqging from MAIN to DATA
(defrule MAIN::data
	(not (initial-fact))
	(not (User))
	(not (Pref))
	=>
	(focus DATA)
)

; Recommends a book to the user changing from MAIN to RECO
(defrule MAIN::recommend
	(User)
	(Pref)
	(not (Reco))
	=>
	(assert (Reco))
	(print-separator)
	(println "Answer the following questions as honestly as you can:")
	(focus RECO)
)

; Presents the results changing from MAIN to PRES
(defrule MAIN::results
	(User)
	(Pref)
	(Reco)
	=>
	(focus PRES)
)

; ----------------------------------- DATA ----------------------------------- ;

; Obtains the user's personal information changing from DATA to USER
(defrule DATA::get-user
	(not (User))
	=>
	(assert (User))
	(println "Introduce the following personal information:")
	(focus USER)
)

; Obtains the user's prefereneces changing from DATA to PREF
(defrule DATA::get-pref
	(User)
	(not (Pref))
	=>
	(assert (Pref))
	(print-separator)
	(println "Introduce the following preference information:")
	(focus PREF)
)

; ----------------------------------- USER ----------------------------------- ;

; Obtains the user's name
(defrule USER::get-name
	?u <- (User (name "NONE"))
	=>
	(bind ?n (question-general "  - Name:"))
	(modify ?u (name ?n))
)

; Obtains the user's age
(defrule USER::get-age
	?u <- (User (age -1))
	=>
	(bind ?a (question-range "  - Age" 0 150))
	(modify ?u (age ?a))
)

; Obtains the user's gender
(defrule USER::get-gender
	?u <- (User (gender NONE))
	=>
	(bind ?g (question-options "  - Gender" male female))
	(modify ?u (gender ?g))
)

; ---------------------------------- PREF ----------------------------------- ;

(defrule PREF::get-religious
	?p <- (Pref (religious NONE))
	=>
	(bind ?ans (question-yes-no "  - Are you religious?"))
	(modify ?p (religious ?ans))
)

; Obtains the user's read frequency
(defrule PREF::get-freq
	?p <- (Pref (freq NONE))
	=>
	(bind ?f (question-options "  - How often do you usually read?" occasionally normally frequently))
	(modify ?p (freq ?f))
)

; Obtains the user's book popularity preference
(defrule PREF::popularity
	?p <- (Pref (highP NONE) (midP NONE) (lowP NONE))
	=>
	(bind ?ans (question-yes-no "  - Do you usually care about book popularity?"))
	(if (eq ?ans FALSE)
		then
			(modify ?p (highP TRUE) (midP TRUE) (lowP TRUE))
		else
			(focus POPU)
	)
)

; Obtains the user's book antiquity rellevance
(defrule PREF::antiquity
	?p <- (Pref (oldA NONE) (midA NONE) (newA NONE))
	=>
	(bind ?r (question-yes-no "  - Do you usually care about book antiquity?"))
	(if (eq ?r FALSE)
		then
			(modify ?p (oldA TRUE) (midA TRUE) (newA TRUE))
		else
			(focus ANTI)
	)
)

; Obtains the user's preference for the genre of the book
(defrule PREF::get-genre
	?p <- (Pref (genre NONE))
	=>
	(bind ?ans (question-yes-no "  - Would you like to choose the genre of the recommended book?"))
	(modify ?p (genre ?ans))
)

; ----------------------------------- POPU ----------------------------------- ;

; Obtains the level of book popularity demanded by the user
(defrule POPU::get-popularity
	?p <- (Pref (highP NONE) (midP NONE) (lowP NONE))
	=>
	(bind ?ans (question-yes-no "  - Do you usually prefere to read very popular books such as bestsellers?"))
	(if (eq ?ans TRUE)
		then
			(modify ?p (highP TRUE) (midP FALSE) (lowP FALSE))
		else
			(bind ?ans (question-yes-no "  - Would you like to read an unpopular book?"))
			(if (eq ?ans TRUE)
				then
					(modify ?p (highP FALSE) (midP FALSE) (lowP TRUE))
				else
					(modify ?p (highP FALSE) (midP TRUE) (lowP FALSE))
			)
	)
)

; ----------------------------------- ANTI ----------------------------------- ;

; Obtains the user's preference for old-antiquity books
(defrule ANTI::get-old-antiquity
	?p <- (Pref (oldA NONE))
	=>
	(bind ?oa (question-yes-no "  - Do you usually like books before year 1900?"))
	(modify ?p (oldA ?oa))
	(assert (get-antiquity))
)

; Obtains the user's preference for mid-antiquity books
(defrule ANTI::get-mid-antiquity
	?p <- (Pref (midA NONE))
	=>
	(bind ?ma (question-yes-no "  - Do you usually like books between 1900 and 2000?"))
	(modify ?p (midA ?ma))
)

; Obtains the user's preference for new-antiquity books
(defrule ANTI::get-new-antiquity
	?p <- (Pref (newA NONE))
	=>
	(bind ?na (question-yes-no "  - Do you usually like books after year 2000?"))
	(modify ?p (newA ?na))
	(assert (get-antiquity))
)

; ---------------------------------- RECO ------------------------------------ ;

(defrule RECO::set-pages-occasionally
	(Pref (freq occasionally))
	=>
	(println "TEST")
)

; ----------------------------------- PRES ----------------------------------- ;

(defrule PRES::debug
	(declare (salience -10))
	=>
	(println "We are on PRES module XD")
)

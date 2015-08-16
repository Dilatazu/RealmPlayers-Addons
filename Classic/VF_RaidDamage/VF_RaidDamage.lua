VF_RAIDDAMAGEVERSION = GetAddOnMetadata("VF_RaidDamage", "Version");

if string.find(GetBuildInfo(), "^1%.") then

VF_RD_DataIndex_Damage = 0;
VF_RD_DataIndex_EffectiveHeal = 1;
VF_RD_DataIndex_DamageTaken = 2;
VF_RD_DataIndex_OverHeal = 3;
VF_RD_DataIndex_DPS = 4;
VF_RD_DataIndex_HPS = 5;
VF_RD_DataIndex_Death = 6;
VF_RD_DataIndex_Decurse = 7;

VF_RD_DataIndex_DamageCrit = 8;
VF_RD_DataIndex_HealCrit = 9;
VF_RD_DataIndex_EffectiveHealReceived = 10;
VF_RD_DataIndex_OverHealReceived = 11;

VF_RD_DataIndex_RawHeal = 12;
VF_RD_DataIndex_RawHealReceived = 13;
VF_RD_DataIndex_Threat = 14;

VF_RD_MobType_Boss = 1;
VF_RD_MobType_Trash = 2;
VF_RD_MobType_Unknown = 3;

VF_RD_YellEvents_Start = 1;
VF_RD_YellEvents_Phase1 = 2;
VF_RD_YellEvents_Phase2 = 3;
VF_RD_YellEvents_Phase3 = 4;
VF_RD_YellEvents_End = 5;
VF_RD_YellEvents_NotImportant = 99;

VF_RD_YellEventsStr = {
	[VF_RD_YellEvents_Start] = "Start_Y",
	[VF_RD_YellEvents_Phase1] = "Phase1_Y",
	[VF_RD_YellEvents_Phase2] = "Phase2_Y",
	[VF_RD_YellEvents_Phase3] = "Phase3_Y",
	[VF_RD_YellEvents_End] = "Dead_Y",
}

VF_RD_DungeonMobsType = {
	--Ragefire Chasm
	["Oggleflint"] = VF_RD_MobType_Boss,
	["Taragaman the Hungerer"] = VF_RD_MobType_Boss,
	["Bazzalan"] = VF_RD_MobType_Boss,
	["Jergosh the Invoker"] = VF_RD_MobType_Boss,

	--The Deadmines
	["Rhahk'Zor"] = VF_RD_MobType_Boss,
	["Sneed's Shredder"] = VF_RD_MobType_Boss, --Sneed "phase1"
	["Sneed"] = VF_RD_MobType_Boss,
	["Gilnid"] = VF_RD_MobType_Boss,
	["Mr. Smite"] = VF_RD_MobType_Boss,
	["Captain Greenskin"] = VF_RD_MobType_Boss,
	["Edwin VanCleef"] = VF_RD_MobType_Boss,
	--Optional/Rare
	["Miner Johnson"] = VF_RD_MobType_Boss,
	["Cookie"] = VF_RD_MobType_Boss,

	--Wailing Caverns
	["Lady Anacondra"] = VF_RD_MobType_Boss,
	["Lord Cobrahn"] = VF_RD_MobType_Boss,
	["Lord Pythas"] = VF_RD_MobType_Boss,
	["Lord Serpentis"] = VF_RD_MobType_Boss,
	["Verdan the Everliving"] = VF_RD_MobType_Boss,
	--Optional/Rare
	["Skum"] = VF_RD_MobType_Boss,
	["Kresh"] = VF_RD_MobType_Boss,
	["Mutanus the Devourer"] = VF_RD_MobType_Boss,

	--Stockades
	--To be filled in...

	--Shadowfang Keep
	["Baron Silverlaine"] = VF_RD_MobType_Boss,
	["Commander Springvale"] = VF_RD_MobType_Boss,
	["Odo the Blindwatcher"] = VF_RD_MobType_Boss,
	["Wolf Master Nandos"] = VF_RD_MobType_Boss,
	["Archmage Arugal"] = VF_RD_MobType_Boss,
	--Optional/Rare
	["Razorclaw the Butcher"] = VF_RD_MobType_Boss,

	--Blackfathom Deeps
	["Ghamoo-ra"] = VF_RD_MobType_Boss,
	["Lady Sarevess"] = VF_RD_MobType_Boss,
	["Gelihast"] = VF_RD_MobType_Boss,
	["Twilight Lord Kelris"] = VF_RD_MobType_Boss,
	["Aku'mai"] = VF_RD_MobType_Boss,
	--Optional/Rare
	["Lorgus Jett"] = VF_RD_MobType_Boss,

	--Razorfen Kraul
	["Death Speaker Jargba"] = VF_RD_MobType_Boss,
	["Aggem Thorncurse"] = VF_RD_MobType_Boss,
	["Overlord Ramtusk"] = VF_RD_MobType_Boss,
	["Earthcaller Halmgar"] = VF_RD_MobType_Boss,
	["Agathelos the Raging"] = VF_RD_MobType_Boss,
	["Charlga Razorflank"] = VF_RD_MobType_Boss,
	--Optional/Rare
	["Blind Hunter"] = VF_RD_MobType_Boss,

	--Gnomeregan
	["Viscous Fallout"] = VF_RD_MobType_Boss,
	["Electrocutioner 6000"] = VF_RD_MobType_Boss,
	["Crowd Pummeler 9-60"] = VF_RD_MobType_Boss,
	["Mekgineer Thermaplugg"] = VF_RD_MobType_Boss,
	--Optional/Rare
	["Chomper"] = VF_RD_MobType_Boss, --Grubbis "pet"
	["Grubbis"] = VF_RD_MobType_Boss,
	["Dark Iron Ambassador"] = VF_RD_MobType_Boss,

	--Scarlet Monastery
	--Graveyard
	["Bloodmage Thalnos"] = VF_RD_MobType_Boss,
	--Library
	["Houndmaster Loksey"] = VF_RD_MobType_Boss,
	["Arcanist Doan"] = VF_RD_MobType_Boss,
	--Armory
	["Herod"] = VF_RD_MobType_Boss,
	--Cathedral
	["High Inquisitor Fairbanks"] = VF_RD_MobType_Boss,
	["Scarlet Commander Mograine"] = VF_RD_MobType_Boss, --"Infidels! They must be purified!"(startyell)
	["High Inquisitor Whitemane"] = VF_RD_MobType_Boss, --"What, Mograine has fallen? You shall pay for this treachery!"(startyell) "Arise, my champion!"(phase2)

	--Razorfen Downs
	["Mordresh Fire Eye"] = VF_RD_MobType_Boss,
	["Glutton"] = VF_RD_MobType_Boss,
	["Amnennar the Coldbringer"] = VF_RD_MobType_Boss,
	--Optional/Rare
	["Ragglesnout"] = VF_RD_MobType_Boss,

	--Uldaman
	["Ironaya"] = VF_RD_MobType_Boss,
	["Galgann Firehammer"] = VF_RD_MobType_Boss,
	["Ancient Stone Keeper"] = VF_RD_MobType_Boss,
	["Grimlok"] = VF_RD_MobType_Boss,
	["Archaedas"] = VF_RD_MobType_Boss,
	--Optional/Rare
	["Revelosh"] = VF_RD_MobType_Boss,
	["Olaf"] = VF_RD_MobType_Boss, --The Three Dwarfs
	["Eric \"The Swift\""] = VF_RD_MobType_Boss, --The Three Dwarfs
	["Baelog"] = VF_RD_MobType_Boss, --The Three Dwarfs
	["Obsidian Sentinel"] = VF_RD_MobType_Boss,

	--Zul'Farrak
	["Theka the Martyr"] = VF_RD_MobType_Boss,
	["Antu'sul"] = VF_RD_MobType_Boss,
	["Chief Ukorz Sandscalp"] = VF_RD_MobType_Boss,
	--Optional/Rare
	["Zerillis"] = VF_RD_MobType_Boss,
	["Shadowpriest Sezz'ziz"] = VF_RD_MobType_Boss,
	["Gahz'rilla"] = VF_RD_MobType_Boss,

	--Maraudon
	["Noxxion"] = VF_RD_MobType_Boss, --["Noxxion's Spawn"] = VF_RD_MobType_Boss, --Adds
	["Razorlash"] = VF_RD_MobType_Boss,
	["Lord Vyletongue"] = VF_RD_MobType_Boss,
	["Celebras the Cursed"] = VF_RD_MobType_Boss,
	["Landslide"] = VF_RD_MobType_Boss,
	["Tinkerer Gizlock"] = VF_RD_MobType_Boss,
	["Rotgrip"] = VF_RD_MobType_Boss,
	["Princess Theradras"] = VF_RD_MobType_Boss,
	--Optional/Rare
	["Meshlok the Harvester"] = VF_RD_MobType_Boss,

	--Sunken Temple
	["Zul'Lor"] = VF_RD_MobType_Boss,
	["Mijan"] = VF_RD_MobType_Boss,
	["Hukku"] = VF_RD_MobType_Boss,
	["Loro"] = VF_RD_MobType_Boss,
	["Gasher"] = VF_RD_MobType_Boss,
	["Weaver"] = VF_RD_MobType_Boss,
	["Dreamscythe"] = VF_RD_MobType_Boss,
	["Jammal'an the Prophet"] = VF_RD_MobType_Boss, --Jammal'an
	["Ogom the Wretched"] = VF_RD_MobType_Boss, --Jammal'an
	["Morphaz"] = VF_RD_MobType_Boss,
	["Hazzas"] = VF_RD_MobType_Boss,
	["Shade of Eranikus"] = VF_RD_MobType_Boss,
	--Optional/Rare
	["Avatar of Hakkar"] = VF_RD_MobType_Boss,

	--Blackrock Depths
	["Lord Incendius"] = VF_RD_MobType_Boss,
	["Fineous Darkvire"] = VF_RD_MobType_Boss,
	["Pyromancer Loregrain"] = VF_RD_MobType_Boss,
	["General Angerforge"] = VF_RD_MobType_Boss,
	["Golem Lord Argelmach"] = VF_RD_MobType_Boss,
	["Phalanx"] = VF_RD_MobType_Boss,
	["Ambassador Flamelash"] = VF_RD_MobType_Boss,
	["Anger'rel"] = VF_RD_MobType_Boss, --The Seven Event
	["Seeth'rel"] = VF_RD_MobType_Boss, --The Seven Event
	["Dope'rel"] = VF_RD_MobType_Boss, --The Seven Event
	["Gloom'rel"] = VF_RD_MobType_Boss, --The Seven Event
	["Vile'rel"] = VF_RD_MobType_Boss, --The Seven Event
	["Hate'rel"] = VF_RD_MobType_Boss, --The Seven Event
	["Doom'rel"] = VF_RD_MobType_Boss, --The Seven Event
	["Magmus"] = VF_RD_MobType_Boss,
	["Emperor Dagran Thaurissan"] = VF_RD_MobType_Boss, --Come to aid the Throne!
	["Princess Moira Bronzebeard"] = VF_RD_MobType_Boss,

	--Optional/Rare
	["Anub'Shiah"] = VF_RD_MobType_Boss,
	["Ribbly Screwspigot"] = VF_RD_MobType_Boss,
	["Hurley Blackbreath"] = VF_RD_MobType_Boss,
	["Plugger Spazzring"] = VF_RD_MobType_Boss,
	["Dark Keeper Bethek"] = VF_RD_MobType_Boss,
	["Panzor the Invincible"] = VF_RD_MobType_Boss,

	--Blackrock Spire
	--UBRS
	["Pyroguard Emberseer"] = VF_RD_MobType_Boss,
	["Gyth"] = VF_RD_MobType_Boss, --Only here for BossMap for Warchief Rend Blackhand
	["Warchief Rend Blackhand"] = VF_RD_MobType_Boss,
	["The Beast"] = VF_RD_MobType_Boss,
	["General Drakkisath"] = VF_RD_MobType_Boss,
	--Optional/Rare
	["Jed Runewatcher"] = VF_RD_MobType_Boss,
	--LBRS
	["Highlord Omokk"] = VF_RD_MobType_Boss,
	["Shadow Hunter Vosh'gajin"] = VF_RD_MobType_Boss,
	["War Master Voone"] = VF_RD_MobType_Boss,
	["Mother Smolderweb"] = VF_RD_MobType_Boss,
	["Quartermaster Zigris"] = VF_RD_MobType_Boss,
	["Halycon"] = VF_RD_MobType_Boss,
	["Overlord Wyrmthalak"] = VF_RD_MobType_Boss,
	--Optional/Rare
	["Gizrul the Slavener"] = VF_RD_MobType_Boss,

	--Stratholme
	--Living
	["Malor the Zealous"] = VF_RD_MobType_Boss,
	["Cannon Master Willey"] = VF_RD_MobType_Boss,
	["Archivist Galford"] = VF_RD_MobType_Boss,
	["Grand Crusader Dathrohan"] = VF_RD_MobType_Boss, --Only here for BossMap for Balnazzar
	["Balnazzar"] = VF_RD_MobType_Boss,
	--Undead
	["Magistrate Barthilas"] = VF_RD_MobType_Boss,
	["Nerub'enkan"] = VF_RD_MobType_Boss,
	["Baroness Anastari"] = VF_RD_MobType_Boss,
	["Maleki the Pallid"] = VF_RD_MobType_Boss,
	["Ramstein the Gorger"] = VF_RD_MobType_Boss,
	["Baron Rivendare"] = VF_RD_MobType_Boss,
	--Optional/Rare
	["The Unforgiven"] = VF_RD_MobType_Boss,
	["Skul"] = VF_RD_MobType_Boss,

	--Scholomance
	["Rattlegore"] = VF_RD_MobType_Boss,
	["Marduk Blackpool"] = VF_RD_MobType_Boss, --Same boss as Vectus
	["Vectus"] = VF_RD_MobType_Boss, --Same boss as Marduk Blackpool
	["Ras Frostwhisper"] = VF_RD_MobType_Boss,
	["Lorekeeper Polkelt"] = VF_RD_MobType_Boss,
	["Doctor Theolen Krastinov"] = VF_RD_MobType_Boss,
	["Instructor Malicia"] = VF_RD_MobType_Boss,
	["Lady Illucia Barov"] = VF_RD_MobType_Boss,
	["The Ravenian"] = VF_RD_MobType_Boss,
	["Lord Alexei Barov"] = VF_RD_MobType_Boss,
	["Darkmaster Gandling"] = VF_RD_MobType_Boss,
	--Optional/Rare
	["Jandice Barov"] = VF_RD_MobType_Boss,
	["Kirtonos the Herald"] = VF_RD_MobType_Boss,

	--Dire Maul
	--East
	["Hydrospawn"] = VF_RD_MobType_Boss,
	["Zevrim Thornhoof"] = VF_RD_MobType_Boss,
	["Pimgib"] = VF_RD_MobType_Boss, --Same boss as Lethtendris
	["Lethtendris"] = VF_RD_MobType_Boss, --Same boss as Pimgib
	["Alzzin the Wildshaper"] = VF_RD_MobType_Boss,
	--West
	["Tendris Warpwood"] = VF_RD_MobType_Boss,
	["Magister Kalendris"] = VF_RD_MobType_Boss,
	["Illyanna Ravenoak"] = VF_RD_MobType_Boss, --Same boss as Ferra
	["Ferra"] = VF_RD_MobType_Boss, --Same boss as Illyanna Ravenoak
	["Immol'thar"] = VF_RD_MobType_Boss,
	["Prince Tortheldrin"] = VF_RD_MobType_Boss,
	--North
	["Guard Mol'dar"] = VF_RD_MobType_Boss,
	["Guard Fengus"] = VF_RD_MobType_Boss,
	["Guard Slip'kik"] = VF_RD_MobType_Boss,
	["Captain Kromcrush"] = VF_RD_MobType_Boss,
	["King Gordok"] = VF_RD_MobType_Boss,
	["Cho'Rush the Observer"] = VF_RD_MobType_Boss, --Same boss as King Gordok
	--Optional/Rare
	["Stomper Kreeg"] = VF_RD_MobType_Boss,
}

VF_RD_DungeonZones = {
	["Ragefire Chasm"] = "Ragefire Chasm", --OK
	["The Deadmines"] = "The Deadmines", --OK
	["Wailing Caverns"] = "Wailing Caverns", --OK(?)
	["Stockades"] = "Stockades",
	["Shadowfang Keep"] = "Shadowfang Keep", --OK
	["Blackfathom Deeps"] = "Blackfathom Deeps",
	["Razorfen Kraul"] = "Razorfen Kraul", --OK
	["Gnomeregan"] = "Gnomeregan",
	["Scarlet Monastery"] = "Scarlet Monastery",
	["Razorfen Downs"] = "Razorfen Downs",
	["Uldaman"] = "Uldaman", --OK
	["Zul'Farrak"] = "Zul'Farrak", --OK
	["Maraudon"] = "Maraudon",
	["The Temple of Atal'Hakkar"] = "The Temple of Atal'Hakkar", --OK Sunken Temple
	["Blackrock Depths"] = "Blackrock Depths",
	["Hall of Blackhand"] = "Hall of Blackhand", --OK Blackrock Spire
	["Stratholme"] = "Stratholme", --OK
	["Scholomance"] = "Scholomance", --OK
	["Dire Maul"] = "Dire Maul", --OK
}
VF_RD_DungeonYellEvents = {
	--Deadmines
	["Rhahk'Zor"] = {
		["pay big for your heads"] = VF_RD_YellEvents_Start,
	},
	["Edwin VanCleef"] = {
		["None may challenge"] = VF_RD_YellEvents_Start,
		["dogs"] = VF_RD_YellEvents_Phase2,
		["righteous"] = VF_RD_YellEvents_Phase3,
		["prevail"] = VF_RD_YellEvents_Phase4,
	},
	["Mr. Smite"] = {
		["land lubbers are tougher"] = VF_RD_YellEvents_Phase2, --phase2(say?)
		["making me angry"] = VF_RD_YellEvents_Phase3, --phase3(say?)
	},

	--Wailing Caverns
	["Lady Anacondra"] = {
		["can stand against"] = VF_RD_YellEvents_Start,
	},
	["Lord Cobrahn"] = {
		["will never wake the dreamer"] = VF_RD_YellEvents_Start,
	},
	["Lord Pythas"] = {
		["coils of death"] = VF_RD_YellEvents_Start,
	},
	["Lord Serpentis"] = {
		["can do anything"] = VF_RD_YellEvents_Start,
	},

	--Shadowfang Keep
	["Baron Silverlaine"] = {
		["this accursed place"] = VF_RD_YellEvents_Start,
		["death is only a temporary"] = VF_RD_YellEvents_End,
	},
	["Wolf Master Nandos"] = {
		["destroyed my pack"] = VF_RD_YellEvents_Start,
	},
	["Archmage Arugal"] = {
		["shall serve"] = VF_RD_YellEvents_Start,
		["Release your rage"] = VF_RD_YellEvents_Phase2,
	},

	--Blackfathom Deeps
	["Lady Sarevess"] = {
		["not be here"] = VF_RD_YellEvents_Start,
		--Possibly not correct: ["Hearty Kill!"] = VF_RD_YellEvents_End,
	},
	["Twilight Lord Kelris"] = {
		["dares disturb my meditation"] = VF_RD_YellEvents_Start,
	},

	--Gnomeregan
	["Mekgineer Thermaplugg"] = {
		["Gnomeregan is mine!"] = VF_RD_YellEvents_Start,
	},

	--Scarlet Monastery
	["Arcanist Doan"] = {
		["will not defile these mysteries"] = VF_RD_YellEvents_Start,
		["in righteous fire"] = VF_RD_YellEvents_Phase2,
	},
	["Herod"] = {
		["been waiting for a real challenge"] = VF_RD_YellEvents_Start,
		["Blades of Light"] = VF_RD_YellEvents_Phase2,
	},
	["Herod"] = {
		["been waiting for a real challenge"] = VF_RD_YellEvents_Start,
		["Blades of Light"] = VF_RD_YellEvents_Phase2,
		--Not needed. Enrage: ["give me strength"] = VF_RD_YellEvents_Phase3,
	},

	--Razorfen Downs
	["Mordresh Fire Eye"] = {
		["my brethren"] = VF_RD_YellEvents_Start,
	},
	["Amnennar the Coldbringer"] = {
		["never leave this place"] = VF_RD_YellEvents_Start,
	},

	--Uldaman
	["Galgann Firehammer"] = {
		["Slay Them!"] = VF_RD_YellEvents_Start,
	},

	--Maraudon
	["Tinkerer Gizlock"] = {
		["never reveal my presence"] = VF_RD_YellEvents_Start,
	},

	--Blackrock Depths
	["Doom'rel"] = {
		["You have challenged the Seven"] = VF_RD_YellEvents_Start,--Say event(?)
	},

	--Stratholme
	["Grand Crusader Dathrohan"] = {
		["Today you have unmade"] = VF_RD_YellEvents_Start,
	},
	["Balnazzar"] = {
		["Today you have unmade"] = VF_RD_YellEvents_Start, --only here for HaveStartYell compatibility
		["You fools think you can defeat"] = VF_RD_YellEvents_Phase2,
		["Damn you mortals"] = VF_RD_YellEvents_End,--Say event(?)
	},

	--Scholomance
	["Darkmaster Gandling"] = {
		["School is in session"] = VF_RD_YellEvents_Start,
	},

	--Dire Maul
	["Cho'Rush the Observer"] = {
		["The king is dead"] = VF_RD_YellEvents_End,
	},
	["King Gordok"] = {
		["The king is dead"] = VF_RD_YellEvents_End, --This should not be needed?
	},
}
VF_RD_DungeonBossMap = {
	--Deadmines
	["Sneed's Shredder"] = "Sneed",

	--Gnomeregan
	["Chomper"] = "Grubbis",

	--Uldaman
	["Olaf"] = "The Three Dwarfs",
	["Eric \"The Swift\""] = "The Three Dwarfs",
	["Baelog"] = "The Three Dwarfs",
	
	--Sunken Temple
	["Jammal'an the Prophet"] = "Jammal'an",
	["Ogom the Wretched"] = "Jammal'an",

	--Blackrock Depths
	["Anger'rel"] = "The Seven Event",
	["Seeth'rel"] = "The Seven Event",
	["Dope'rel"] = "The Seven Event",
	["Gloom'rel"] = "The Seven Event",
	["Vile'rel"] = "The Seven Event",
	["Hate'rel"] = "The Seven Event",
	["Doom'rel"] = "The Seven Event",
	["Princess Moira Bronzebeard"] = "Emperor Dagran Thaurissan",

	--Blackrock Spire
	["Gyth"] = "Warchief Rend Blackhand",

	--Stratholme
	["Grand Crusader Dathrohan"] = "Balnazzar",

	--Scholomance
	["Marduk Blackpool"] = "Vectus And Marduk",
	["Vectus"] = "Vectus And Marduk",

	--Dire Maul
	--West
	["Lethtendris"] = "Lethtendris And Pimgib";
	["Pimgib"] = "Lethtendris And Pimgib";
	--East
	["Illyanna Ravenoak"] = "Illyanna And Ferra",
	["Ferra"] = "Illyanna And Ferra",
	--North
	["Cho'Rush the Observer"] = "King Gordok",
}
VF_RD_DungeonBossParts = {
	["The Three Dwarfs"] = {[1] = "Olaf", [2] = "Eric \"The Swift\"", [3] = "Baelog"},

	["Jammal'an"] = {[1] = "Jammal'an the Prophet", [2] = "Ogom the Wretched"},

	["The Seven Event"] = {[1] = "Anger'rel", [2] = "Seeth'rel", [3] = "Dope'rel"
	, [4] = "Gloom'rel", [5] = "Vile'rel", [6] = "Hate'rel", [7] = "Doom'rel"},

	["Vectus And Marduk"] = {[1] = "Vectus", [2] = "Marduk Blackpool"},
	["Lethtendris And Pimgib"] = {[1] = "Lethtendris", [2] = "Pimgib"},
	["Illyanna And Ferra"] = {[1] = "Illyanna Ravenoak", [2] = "Ferra"},
}

VF_RD_MobsType = {
	--MC
	["Lucifron"] = VF_RD_MobType_Boss,
	["Magmadar"] = VF_RD_MobType_Boss, 
	["Gehennas"] = VF_RD_MobType_Boss, 
	["Garr"] = VF_RD_MobType_Boss, 
	["Baron Geddon"] = VF_RD_MobType_Boss, 
	["Shazzrah"] = VF_RD_MobType_Boss, 
	["Sulfuron Harbinger"] = VF_RD_MobType_Boss, 
	["Golemagg the Incinerator"] = VF_RD_MobType_Boss, 
	["Majordomo Executus"] = VF_RD_MobType_Boss, 
	["Ragnaros"] = VF_RD_MobType_Boss,
	
	--Onyxia
	["Onyxia"] = VF_RD_MobType_Boss,
	
	--BWL
	["Grethok the Controller"] = VF_RD_MobType_Boss, --Only here for BossMap for Razorgore the Untamed
	["Razorgore the Untamed"] = VF_RD_MobType_Boss, 
	["Vaelastrasz the Corrupt"] = VF_RD_MobType_Boss, 
	["Broodlord Lashlayer"] = VF_RD_MobType_Boss, 
	["Firemaw"] = VF_RD_MobType_Boss, 
	["Ebonroc"] = VF_RD_MobType_Boss, 
	["Flamegor"] = VF_RD_MobType_Boss, 
	["Chromaggus"] = VF_RD_MobType_Boss,
	["Lord Victor Nefarius"] = VF_RD_MobType_Boss, --Only here for BossMap for Nefarian
	["Nefarian"] = VF_RD_MobType_Boss, 
	
	--ZG
	["High Priestess Jeklik"] = VF_RD_MobType_Boss,
	["High Priest Venoxis"] = VF_RD_MobType_Boss,
	["High Priestess Mar'li"] = VF_RD_MobType_Boss,
	["High Priest Thekal"] = VF_RD_MobType_Boss,
	["High Priestess Arlokk"] = VF_RD_MobType_Boss,
	["Hakkar the Soulflayer"] = VF_RD_MobType_Boss,
	["Hakkar"] = VF_RD_MobType_Boss,
	["Bloodlord Mandokir"] = VF_RD_MobType_Boss,
	["Jin'do the Hexxer"] = VF_RD_MobType_Boss,
	["Gahz'ranka"] = VF_RD_MobType_Boss,
	["Gri'lek"] = VF_RD_MobType_Boss,
	["Renataki"] = VF_RD_MobType_Boss,
	["Hazza'rah"] = VF_RD_MobType_Boss,
	["Wushoolay"] = VF_RD_MobType_Boss,
	
	--AQ20
	["Kurinnaxx"] = VF_RD_MobType_Boss,
	["General Rajaxx"] = VF_RD_MobType_Boss,
	["Moam"] = VF_RD_MobType_Boss,
	["Buru the Gorger"] = VF_RD_MobType_Boss,
	["Ayamiss the Hunter"] = VF_RD_MobType_Boss,
	["Ossirian the Unscarred"] = VF_RD_MobType_Boss,
	
	--AQ40
	--C'Thun
	["C'Thun"] = VF_RD_MobType_Boss,
	["Eye of C'Thun"] = VF_RD_MobType_Boss,
	--C'Thun
	--Twin Emperors
	["Emperor Vek'lor"] = VF_RD_MobType_Boss,
	["Emperor Vek'nilash"] = VF_RD_MobType_Boss,
	--Twin Emperors
	["Ouro"] = VF_RD_MobType_Boss,
	["Viscidus"] = VF_RD_MobType_Boss,
	["Princess Huhuran"] = VF_RD_MobType_Boss,
	["Anubisath Defenders"] = VF_RD_MobType_Boss,
	["Fankriss the Unyielding"] = VF_RD_MobType_Boss,
	["Battleguard Sartura"] = VF_RD_MobType_Boss,
	["The Prophet Skeram"] = VF_RD_MobType_Boss,
	--Three Bugs
	["Vem"] = VF_RD_MobType_Boss,
	["Lord Kri"] = VF_RD_MobType_Boss,
	["Princess Yauj"] = VF_RD_MobType_Boss,
	--Three Bugs
	
	--Naxx
	["Anub'Rekhan"] = VF_RD_MobType_Boss,
	["Grand Widow Faerlina"] = VF_RD_MobType_Boss,
	["Maexxna"] = VF_RD_MobType_Boss,
	["Patchwerk"] = VF_RD_MobType_Boss,
	["Grobbulus"] = VF_RD_MobType_Boss,
	["Gluth"] = VF_RD_MobType_Boss,
	["Thaddius"] = VF_RD_MobType_Boss,
	["Noth the Plaguebringer"] = VF_RD_MobType_Boss,
	["Heigan the Unclean"] = VF_RD_MobType_Boss,
	["Loatheb"] = VF_RD_MobType_Boss,
	["Instructor Razuvious"] = VF_RD_MobType_Boss,
	["Gothik the Harvester"] = VF_RD_MobType_Boss,
	--The Four Horsemen
	["Highlord Mograine"] = VF_RD_MobType_Boss,
	["Thane Korth'azz"] = VF_RD_MobType_Boss,
	["Lady Blaumeux"] = VF_RD_MobType_Boss,
	["Sir Zeliek"] = VF_RD_MobType_Boss,
	--The Four Horsemen
	["Sapphiron"] = VF_RD_MobType_Boss,
	["Kel'Thuzad"] = VF_RD_MobType_Boss,
}

VF_RD_BossNameTranslations = {
--DE
	--MC
	["Sulfuronherold"] = "Sulfuron Harbinger",
    ["Golemagg der Verbrenner"] = "Golemagg the Incinerator",
	["Majordomo Exekutus"] = "Majordomo Executus",

	--BWL
	["Grethok der Aufseher"] = "Grethok the Controller",
    ["Feuerkralle der Ungez\195\164hmte"] = "Razorgore the Untamed",
    ["Vaelastrasz der Verdorbene"] = "Vaelastrasz the Corrupt",
    ["Brutw\195\164chter Dreschbringer"] = "Broodlord Lashlayer",
    ["Feuerschwinge"] = "Firemaw",
    ["Schattenschwinge"] = "Ebonroc",
    ["Flammenmaul"] = "Flamegor",

	--ZG
	["Hohepriesterin Jeklik"] = "High Priestess Jeklik",
    ["Hohepriester Venoxis"] = "High Priest Venoxis",
    ["Hohepriesterin Mar'li"] = "High Priestess Mar'li",
    ["Hohepriester Thekal"] = "High Priest Thekal",
    ["Hohepriesterin Arlokk"] = "High Priestess Arlokk",
    ["Blutf\195\188rst Mandokir"] = "Bloodlord Mandokir",
    ["Jin'do der Verhexer"] = "Jin'do the Hexxer",

	--AQ20
	["Buru der Verschlinger"] = "Buru the Gorger",
    ["Ayamiss der J\195\164ger"] = "Ayamiss the Hunter",
    ["Ossirian der Narbenlose"] = "Ossirian the Unscarred",

	--AQ40
    ["Auge von C'Thun"] = "Eye of C'Thun",
    ["Prinzessin Huhuran"] = "Princess Huhuran",
    ["Fankriss der Unnachgiebige"] = "Fankriss the Unyielding",
    ["Schlachtwache Sartura"] = "Battleguard Sartura",
    ["Der Prophet Skeram"] = "The Prophet Skeram",
    ["Prinzessin Yauj"] = "Princess Yauj",
	
	--NAXX
--FR
	--MC
	["Messager de Sulfuron"] = "Sulfuron Harbinger",
	["Golemagg l\'Incin\195\169rateur"] = "Golemagg the Incinerator",
	["Chambellan Executus"] = "Majordomo Executus",
      
	--BWL
	["Grethok le Contr\195\180leur"] = "Grethok the Controller",
	["Tranchetripe l'Indompt\195\169"] = "Razorgore the Untamed",
	["Vaelastrasz le Corrompu"] = "Vaelastrasz the Corrupt",
	["Seigneur des couv\195\169es Lanistaire"] = "Broodlord Lashlayer",
	["Gueule-de-feu"] = "Firemaw",
	["Roch\195\169b\195\168ne"] = "Ebonroc",
	["Seigneur Victor Nefarius"] = "Lord Victor Nefarius",
      
	--ZG
	["Grande pr\195\170tresse Jeklik"] = "High Priestess Jeklik",
	["Grand pr\195\170tre Venoxis"] = "High Priest Venoxis",
	["Grande pr\195\170tresse Mar'li"] = "High Priestess Mar'li",
	["Grand pr\195\170tre Thekal"] = "High Priest Thekal",
	["Grande pr\195\170tresse Arlokk"] = "High Priestess Arlokk",
	["Seigneur sanglant Mandokir"] = "Bloodlord Mandokir",
	["Jin'do le mal\195\169ficieur"] = "Jin'do the Hexxer",

	--AQ20
	["G\195\169n\195\169ral Rajaxx"] = "General Rajaxx",
	["Buru Grandgosier"] = "Buru the Gorger",
	["Ayamiss le Chasseur"] = "Ayamiss the Hunter",
	["Ossirian l'Intouch\195\169"] = "Ossirian the Unscarred",
      
	--AQ40
	["Oeil de C'Thun"] = "Eye of C'Thun",
	["Empereur Vek'lor"] = "Emperor Vek'lor",
	["Empereur Vek'nilash"] = "Emperor Vek'nilash",
	["Princesse Huhuran"] = "Princess Huhuran",
	["Fankriss l'Inflexible"] = "Fankriss the Unyielding",
	["Garde de guerre Sartura"] = "Battleguard Sartura",
	["Le Proph\195\168te Skeram"] = "The Prophet Skeram",
	["Seigneur Kri"] = "Lord Kri",
	["Princesse Yauj"] = "Princess Yauj",
      
	--Naxx
	["Grande veuve Faerlina"] = "Grand Widow Faerlina",
	["Le Recousu"] = "Patchwerk",
	["Noth le Porte-peste"] = "Noth the Plaguebringer",
	["Heigan l'Impur"] = "Heigan the Unclean",
	["Horreb"] = "Loatheb",
	["Instructeur Razuvious"] = "Instructor Razuvious",
	["Gothik le Moissonneur"] = "Gothik the Harvester",
	--The Four Horsemen
	["G\195\169n\195\169ralissime Mograine"] = "Highlord Mograine",
	["Dame Blaumeux"] = "Lady Blaumeux",
}

VF_RD_RaidZones = {
--English
	["Molten Core"] = "Molten Core",
	["Onyxia's Lair"] = "Onyxia's Lair",
	["Blackwing Lair"] = "Blackwing Lair",
	["Zul'Gurub"] = "Zul'Gurub",
	["Ruins of Ahn'Qiraj"] = "Ruins of Ahn'Qiraj",
	["Temple of Ahn'Qiraj"] = "Temple of Ahn'Qiraj",
	["Naxxramas"] = "Naxxramas",

--Deutch
	["Geschmolzener Kern"] = "Molten Core",
	["Onyxias Hort"] = "Onyxia's Lair",
	["Pechschwingenhort"] = "Blackwing Lair",
	["Ruinen von Ahn'Qiraj"] = "Ruins of Ahn'Qiraj",
	["Tempel von Ahn'Qiraj"] = "Temple of Ahn'Qiraj",

--French
	["C\197\147ur du Magma"] = "Molten Core",
	["Repaire d'Onyxia"] = "Onyxia's Lair",
	["Repaire de l'Aile noire"] = "Blackwing Lair",
	["Ruines d'Ahn'Qiraj"] = "Ruins of Ahn'Qiraj",
	["Le temple d'Ahn'Qiraj"] = "Temple of Ahn'Qiraj",
}

VF_RD_YellEventsDE = {
	--MC
	["Majordomo Executus"] = {
		["Schw\195\164chliche Sterbliche"] = VF_RD_YellEvents_Start,
		["Unm\195\182glich! Haltet ein Sterbliche"] = VF_RD_YellEvents_End,
		["Ich werde euch nun verlassen. Es ist an der Zeit den Herrn dieses Hauses herbeizurufen"] = VF_RD_YellEvents_End,
	},
	["Ragnaros"] = {
		["NUN ZU EUCH, INSEKTEN"] = VF_RD_YellEvents_Start, 
		["Kommt herbei"] = VF_RD_YellEvents_Phase2,
		["KOMMT HERBEI"] = VF_RD_YellEvents_Phase2,
	},
	
	--Onyxia
	["Onyxia"] = {
		["muss ich meinen Unterschlupf"] = VF_RD_YellEvents_Start,
		["von oben verbrennen"] = VF_RD_YellEvents_Phase2,
		["Es scheint, als wenn"] = VF_RD_YellEvents_Phase3,
	},
	
	--ZG
	["High Priestess Jeklik"] = {
		["verleiht mir die Fl\195\188gel der Rache!"] = VF_RD_YellEvents_Start,
		["Feuer auf diese Eindringlinge herabregnen zu lassen"] = VF_RD_YellEvents_Phase2,
		["Ich verfluche euch, Hakkar"] = VF_RD_YellEvents_End,
	},
	["High Priest Venoxis"] = {
		["das Schlachten beginnen"] = VF_RD_YellEvents_Phase2,
		["Klarheit"] = VF_RD_YellEvents_End,
	},
	["High Priestess Mar'li"] = {
		["H\195\188llt mich in euer Netz, Herrin Shadra."] = VF_RD_YellEvents_Start,
		["Hakkar beherrscht mich nicht l\195\164nger"] = VF_RD_YellEvents_End,
	},
	["Bloodlord Mandokir"] = {
		["Ich werde Hakkar eure Seelen zum Fra\195\159 vorwerfen!"] = VF_RD_YellEvents_Start,
	},
	["High Priest Thekal"] = {
		["Shirvallah, erf\195\188lle mich mit deinem Zorn!"] = VF_RD_YellEvents_Start,
		["Hakkar kontrolliert mich nicht l\195\164nger"] = VF_RD_YellEvents_End,
	},
	["High Priestess Arlokk"] = {
		["Bethekk, eure Priesterin erfleht eure Macht"] = VF_RD_YellEvents_Start,
		["Die Macht des Seelenschinders f\195\164llt von mir!"] = VF_RD_YellEvents_End,
	},
	["Jin'do the Hexxer"] = {
		["Willkommen auf eurem Begr\195\164bnis!"] = VF_RD_YellEvents_Start,
	},
	["Hakkar"] = {
		["Eure \195\188berheblichkeit k\195\188ndet bereits vom Ende dieser Welt"] = VF_RD_YellEvents_Start,
	},
	
	--BWL
	["Grethok the Controller"] = {--Razorgore the Untamed
		["die Eier um jeden Preis!"] = VF_RD_YellEvents_Start,
	},
	["Razorgore the Untamed"] = {
		["die Eier um jeden Preis!"] = VF_RD_YellEvents_Start, --only here for HaveStartYell compatibility
		["Das Ger\195\164t niemals qu\195\164len mich wieder!"] = VF_RD_YellEvents_Phase2,--Phase2
	},
	["Vaelastrasz the Corrupt"] = {
		["KNIET NIEDER STERBLICHE ODER DER ZORN VON LORD"] = VF_RD_YellEvents_Start,
	},
	["Broodlord Lashlayer"] = {
		["Euresgleichen sollte nicht hier sein"] = VF_RD_YellEvents_Start,
	},
	["Lord Victor Nefarius"] = {--Nefarian
		["Lasst die Spiele beginnen"] = VF_RD_YellEvents_Start,
	},
	["Nefarian"] = {
		["Lasst die Spiele beginnen"] = VF_RD_YellEvents_Start, --only here for HaveStartYell compatibility
		["Sehr gut, meine Diener"] = VF_RD_YellEvents_Phase2,
		["Erhebt euch meine Diener"] = VF_RD_YellEvents_Phase3,
		["Das kann nicht sein!"] = VF_RD_YellEvents_End,
	},
	
	--AQ40
	["The Prophet Skeram"] = {
		["Seid ihr so begierig darauf zu sterben?"] = VF_RD_YellEvents_Start,
	},
	["Battleguard Sartura"] = {
		["Seid gewiss, dass ihr daf\195\188r gerichtet werdet!"] = VF_RD_YellEvents_Start,
		["bis zum letzten Atemzug!"] = VF_RD_YellEvents_End,
	},
	
	--Naxx
	["Gothik the Harvester"] = {
		["Ihr Narren habt euren eigenen Untergang heraufbeschworen"] = VF_RD_YellEvents_Start,
		["Stellt euch dem Seelenj\195\164ger"] = VF_RD_YellEvents_Phase2,
		["Das... ist... mein... Ende"] = VF_RD_YellEvents_End,
	},
	["Noth the Plaguebringer"] = {
		["Euer Leben ist verwirkt"] = VF_RD_YellEvents_Start,
		["Ehre unserem Meister"] = VF_RD_YellEvents_Start,
		["Erhebt euch und k\195\164mpft erneut"] = VF_RD_YellEvents_Phase2,
		["Ich werde dem Meister \195\188ber den Tod hinaus dienen"] = VF_RD_YellEvents_End,
	},
	["Heigan the Unclean"] = {
		["Ihr geh\195\182rt mir"] = VF_RD_YellEvents_Start,
		["see you"] = VF_RD_YellEvents_Start,
		["Arghh... h..."] = VF_RD_YellEvents_End,
	},
	["Anub'Rekhan"] = {
		["Es gibt kein Entkommen"] = VF_RD_YellEvents_Start,
	},
	["Grand Widow Faerlina"] = {
		["T\195\182tet sie im Namen des Meisters"] = VF_RD_YellEvents_Start,
		["Ihr k\195\182nnt euch nicht vor mir verstecken"] = VF_RD_YellEvents_Start,
		["Kniet nieder, Wurm"] = VF_RD_YellEvents_Start,
		["Mein Meister wird mich r\195\164chen"] = VF_RD_YellEvents_End,
	},
	["Instructor Razuvious"] = {
		["Stellt euch und k\195\164mpft"] = VF_RD_YellEvents_Start,
		["Zeigt mir, was ihr k\195\182nnt"] = VF_RD_YellEvents_Start, 
		["Ein ehrenhafter"] = VF_RD_YellEvents_End,
	},
	["Highlord Mograine"] = {
		["Sucht Ihr den Tod?"] = VF_RD_YellEvents_Start,
	},
	["Thane Korth'azz"] = {
		["Kommt und k\195\164mpft"] = VF_RD_YellEvents_Start,
		["Was f\195\188r eine verdammte Verschwendung!"] = VF_RD_YellEvents_End,
	},
	["Lady Blaumeux"] = {
		["Verteidigt euch"] = VF_RD_YellEvents_Start,
	},
	["Sir Zeliek"] = {
		["Flieht, bevor es zu sp\195\164t ist"] = VF_RD_YellEvents_Start,
		["Es verl\195\164uft... ganz nach Plan"] = VF_RD_YellEvents_End,
	},
	["Patchwerk"] = {
		["Kel'Thuzad macht Flickwerk zu seinem Abgesandten des Kriegs"] = VF_RD_YellEvents_Start,
		["Flickwerk spielen m\195\182chte"] = VF_RD_YellEvents_Start,
		["Was... sein geschehen..."] = VF_RD_YellEvents_End,
	},
	["Feugen"] = { --Thaddius pre fight ADD
		["Verf\195\188ttere euch an Meister!"] = VF_RD_YellEvents_Start,
		["Kein... Feugen... mehr..."] = VF_RD_YellEvents_End,
	},
	["Stalagg"] = { --Thaddius pre fight ADD
		["Stalagg zerquetschen!"] = VF_RD_YellEvents_Start,
		["Meister mich retten..."] = VF_RD_YellEvents_End,
	},
	["Thaddius"] = {
		["Jetzt sp\195\188rt ihr den Schmerz..."] = VF_RD_YellEvents_Phase2,
		["Euch... dankbar sein!"] = VF_RD_YellEvents_End,
	},
	["Kel'Thuzad"] = {
		["Folg dem Ruf von Kel'Thuzad!"] = VF_RD_YellEvents_Start,
		["Schreiend werdet Ihr diese Welt verlassen!"] = VF_RD_YellEvents_Phase2,
		["Betet um Gnade!"] = VF_RD_YellEvents_Phase2,
		["Euer Ende ist gekommen!"] = VF_RD_YellEvents_Phase2,
		["Meister, ich ben\195\182tige Beistand."] = VF_RD_YellEvents_Phase3,
		["Euer Sieg ist bedeutungslos"] = VF_RD_YellEvents_End,
	},
}
VF_RD_YellEventsFR = {
	--MC
	["Majordomo Executus"] = {
	},
	["Ragnaros"] = {
	},
	
	--Onyxia
	["Onyxia"] = {
	},
	
	--ZG
	["High Priestess Jeklik"] = {
		["Qu'une pluie de feu s'abatte"] = VF_RD_YellEvents_Phase2,
	},
	["High Priest Venoxis"] = {
		["Que se d\195\169roulent les anneaux de la haine"] = VF_RD_YellEvents_Phase2,
	},
	["High Priestess Mar'li"] = {
	},
	["Bloodlord Mandokir"] = {
	},
	["High Priest Thekal"] = {
	},
	["High Priestess Arlokk"] = {
	},
	["Jin'do the Hexxer"] = {
	},
	["Hakkar"] = {
	},
	
	--BWL
	["Grethok the Controller"] = {--Razorgore the Untamed
	},
	["Razorgore the Untamed"] = {
	},
	["Vaelastrasz the Corrupt"] = {
	},
	["Broodlord Lashlayer"] = {
	},
	["Lord Victor Nefarius"] = {--Nefarian
	},
	["Nefarian"] = {
		["C'est impossible"] = VF_RD_YellEvents_End,
	},
	
	--AQ40
	["The Prophet Skeram"] = {
	},
	["Battleguard Sartura"] = {
	},
	
	
	--Naxx
	["Gothik the Harvester"] = {
	},
	["Noth the Plaguebringer"] = {
	},
	["Heigan the Unclean"] = {
	},
	["Anub'Rekhan"] = {
	},
	["Grand Widow Faerlina"] = {
	},
	["Instructor Razuvious"] = {
	},
	["Highlord Mograine"] = {
	},
	["Thane Korth'azz"] = {
	},
	["Lady Blaumeux"] = {
	},
	["Sir Zeliek"] = {
	},
	["Patchwerk"] = {
	},
	["Feugen"] = { --Thaddius pre fight ADD
	},
	["Stalagg"] = { --Thaddius pre fight ADD
	},
	["Thaddius"] = {
	},
	["Kel'Thuzad"] = {
	},
}
VF_RD_YellEvents = {
	--MC
	["Majordomo Executus"] = {
		["Reckless mortals"] = VF_RD_YellEvents_Start,
		["Impossible! Stay your attack"] = VF_RD_YellEvents_End,
		["My flame! Please don't take away my flame..."] = VF_RD_YellEvents_End, --Special one used on Nefarian realm
	},
	["Ragnaros"] = {
		["NOW FOR YOU, INSECTS"] = VF_RD_YellEvents_Start, 
		["COME FORTH"] = VF_RD_YellEvents_Phase2,
	},
	
	--Onyxia
	["Onyxia"] = {
		["must leave my lair to feed"] = VF_RD_YellEvents_Start,
		["from above"] = VF_RD_YellEvents_Phase2,
		["It seems you'll need another lesson"] = VF_RD_YellEvents_Phase3,
	},
	
	--ZG
	["High Priestess Jeklik"] = {
		["grant me wings of vengance!"] = VF_RD_YellEvents_Start,
		["rain fire down upon these invaders"] = VF_RD_YellEvents_Phase2,
		["Curse you Hakkar!"] = VF_RD_YellEvents_End,
	},
	["High Priest Venoxis"] = {
		["coils of hate unfurl"] = VF_RD_YellEvents_Phase2,
		["Ssserenity"] = VF_RD_YellEvents_End,
	},
	["High Priestess Mar'li"] = {
		["Draw me to your web mistress Shadra."] = VF_RD_YellEvents_Start,
		["Hakkar controls me no longer"] = VF_RD_YellEvents_End,
	},
	["Bloodlord Mandokir"] = {
		["I'll feed your souls to Hakkar himself!"] = VF_RD_YellEvents_Start,
	},
	["High Priest Thekal"] = {
		["Shirvallah, fill me with your RAGE!"] = VF_RD_YellEvents_Start,
		["Hakkar binds me no more!"] = VF_RD_YellEvents_End,
	},
	["High Priestess Arlokk"] = {
		["Bethekk, your priestess calls upon your might"] = VF_RD_YellEvents_Start,
		["I am free of the Soulflayer!"] = VF_RD_YellEvents_End,
	},
	["Jin'do the Hexxer"] = {
		["Welcome to da great show friends!"] = VF_RD_YellEvents_Start,
	},
	["Hakkar"] = {
		["PRIDE HERALDS THE END OF YOUR WORLD. COME"] = VF_RD_YellEvents_Start,
	},
	
	--BWL
	["Grethok the Controller"] = {--Razorgore the Untamed
		["Intruders have breached the hatchery"] = VF_RD_YellEvents_Start,
	},
	["Razorgore the Untamed"] = {
		["Intruders have breached the hatchery"] = VF_RD_YellEvents_Start, --only here for HaveStartYell compatibility
		["That device shall never torment me again!"] = VF_RD_YellEvents_Phase2,--Phase2
	},
	["Vaelastrasz the Corrupt"] = {
		["mortals before the wrath of Lord"] = VF_RD_YellEvents_Start,
	},
	["Broodlord Lashlayer"] = {
		["None of your kind should be here"] = VF_RD_YellEvents_Start,
	},
	["Lord Victor Nefarius"] = {--Nefarian
		["Let the games begin"] = VF_RD_YellEvents_Start,
		["Would it not be glorious if you somehow managed to defeat me"] = VF_RD_YellEvents_NotImportant, --Possibly fixes some minor issues
		["Ah...the heroes. You are persistent, aren't you?"] = VF_RD_YellEvents_NotImportant,			  --for Nefarian realm
		["Get up, little red wyrm...and destroy them!"] = VF_RD_YellEvents_NotImportant,
	},
	["Nefarian"] = {
		["Let the games begin"] = VF_RD_YellEvents_Start, --only here for HaveStartYell compatibility
		["Well done, my minions."] = VF_RD_YellEvents_Phase2,
		["Rise my minions"] = VF_RD_YellEvents_Phase3,
		["This cannot be!"] = VF_RD_YellEvents_End,
	},
	
	--AQ40
	["The Prophet Skeram"] = {
		["Are you so eager to die?"] = VF_RD_YellEvents_Start,
		["You only delay... the inevitable..."] = VF_RD_YellEvents_End,
	},
	["Battleguard Sartura"] = {
		["You will be judged for defiling these sacred grounds!"] = VF_RD_YellEvents_Start,
		["I serve to the last!"] = VF_RD_YellEvents_End,
	},
	
	
	--Naxx
	["Gothik the Harvester"] = {
		["Foolishly you have sought your own demise."] = VF_RD_YellEvents_Start,
		["you face the harvester of souls"] = VF_RD_YellEvents_Phase2,
		["I... am... undone"] = VF_RD_YellEvents_End,
	},
	--EMOTE: ["Gluth"] = {["Gluth goes into a frenzy!"] = VF_RD_YellEvents_Phase2},
	["Noth the Plaguebringer"] = {
		["trespasser"] = VF_RD_YellEvents_Start, --Die trespasser!
		["life is forfeit"] = VF_RD_YellEvents_Start, --Your life is forfeit.
		["to the master"] = VF_RD_YellEvents_Start, --Glory to the master!
		["and fight once more"] = VF_RD_YellEvents_Phase2, --Rise my soldiers! Rise, and fight once more!
		["will serve the master"] = VF_RD_YellEvents_End, --I will serve the master... In... Death.
	},
	["Heigan the Unclean"] = {
		["are mine now"] = VF_RD_YellEvents_Start, -- You are mine now.
		["see you"] = VF_RD_YellEvents_Start, -- I see you.../I see you!
		["Noo... o..."] = VF_RD_YellEvents_End,
	},
	["Anub'Rekhan"] = {
		["There is no way out"] = VF_RD_YellEvents_Start,
	},
	["Grand Widow Faerlina"] = {
		["them in the master"] = VF_RD_YellEvents_Start, --Slay them in the master's name!
		["You cannot hide from me!"] = VF_RD_YellEvents_Start,
		["before me, worm"] = VF_RD_YellEvents_Start, --Kneel before me, worm!
		["The master... will avenge me!"] = VF_RD_YellEvents_End,
	},
	["Instructor Razuvious"] = {
		["Stand and fight!"] = VF_RD_YellEvents_Start, --Stand and fight!
		["me what you"] = VF_RD_YellEvents_Start, --Show me what you've got!
		["honorable"] = VF_RD_YellEvents_End, --An honorable... death...
	},
	["Highlord Mograine"] = {
		["You seek death?"] = VF_RD_YellEvents_Start,
		["I... am... released!"] = VF_RD_YellEvents_End,
	},
	["Thane Korth'azz"] = {
		["Come out and fight"] = VF_RD_YellEvents_Start,
		["What a bloody waste this is!"] = VF_RD_YellEvents_End,
	},
	["Lady Blaumeux"] = {
		["Defend youself"] = VF_RD_YellEvents_Start,
		["Tou... che!"] = VF_RD_YellEvents_End,
	},
	["Sir Zeliek"] = {
		["Flee, before it's too late"] = VF_RD_YellEvents_Start,
		["It is... as it should be."] = VF_RD_YellEvents_End,
	},
	["Patchwerk"] = {
		["Kel'Thuzad make Patchwerk his Avatar of War!"] = VF_RD_YellEvents_Start,
		["want to play"] = VF_RD_YellEvents_Start,
		--EMOTE: ["becomes enraged!"] = VF_RD_YellEvents_Phase3,
		["What happened to... Patch..."] = VF_RD_YellEvents_End,
	},
	["Feugen"] = { --Thaddius pre fight ADD
		["Feed you to master!"] = VF_RD_YellEvents_Start,
		["No... more... Feugen..."] = VF_RD_YellEvents_End,
	},
	["Stalagg"] = { --Thaddius pre fight ADD
		["Stalagg crush you!"] = VF_RD_YellEvents_Start,
		["Master save me..."] = VF_RD_YellEvents_End,
	},
	["Thaddius"] = {
		--pre fight yell: does not mean fight have started! 
		--["You are too late... I... must... OBEY!"] = VF_RD_YellEvents_Start,
		--pre fight yell: does not mean fight have started! 
		["Now YOU feel pain!"] = VF_RD_YellEvents_Phase2,
		["Thank... you..."] = VF_RD_YellEvents_End,
	},
	["Kel'Thuzad"] = {
		["obey the call of Kel'Thuzad!"] = VF_RD_YellEvents_Start,
		["Scream your dying breath!"] = VF_RD_YellEvents_Phase2,
		["Pray for mercy!"] = VF_RD_YellEvents_Phase2,
		["The end is upon you!"] = VF_RD_YellEvents_Phase2,
		["Master! I require aid!"] = VF_RD_YellEvents_Phase3,
		["Your victory is a hollow one"] = VF_RD_YellEvents_End,
	},
}
VF_RD_BossMap = {
	--BWL
	["Grethok the Controller"] = "Razorgore the Untamed",
	["Lord Victor Nefarius"] = "Nefarian",
	
	--AQ40
	["Vem"] = "Three Bugs",
	["Lord Kri"] = "Three Bugs",
	["Princess Yauj"] = "Three Bugs",
	
	["Emperor Vek'nilash"] = "Twin Emperors",
	["Emperor Vek'lor"] = "Twin Emperors",
	
	["Eye of C'Thun"] = "C'Thun",
	["C'Thun"] = "C'Thun",
	
	--Naxx
	["Sir Zeliek"] = "The Four Horsemen",
	["Highlord Mograine"] = "The Four Horsemen",
	["Thane Korth'azz"] = "The Four Horsemen",
	["Lady Blaumeux"] = "The Four Horsemen",
}
VF_RD_BossParts = {
	["Three Bugs"] = {[1] = "Vem", [2] = "Lord Kri", [3] = "Princess Yauj"},
	["Twin Emperors"] = {[1] = "Emperor Vek'nilash", [2] = "Emperor Vek'lor"},
	["C'Thun"] = {[1] = "Eye of C'Thun", [2] = "C'Thun"},
	["The Four Horsemen"] = {[1] = "Sir Zeliek", [2] = "Highlord Mograine", [3] = "Thane Korth'azz", [4] = "Lady Blaumeux"},
}

VF_RD_SpecialLanguageSupportMode = false;
VF_RD_DungeonSupportMode = false;

function VF_RD_InitializeSpecialLanguageSupport()
	if(GetRealmName() == "NostalGeek 1.12" or GetLocale() == "frFR") then
		VF_RD_SpecialLanguageSupportMode = true;
		for bossName, yellEvents in pairs(VF_RD_YellEventsFR) do
			for yellStr, yellEvent in yellEvents do
				VF_RD_YellEvents[bossName][yellStr] = yellEvent;
			end
		end
	end
	if(GetRealmName() == "Nefarian" or GetLocale() == "deDE") then
		VF_RD_SpecialLanguageSupportMode = true;
		for bossName, yellEvents in pairs(VF_RD_YellEventsDE) do
			for yellStr, yellEvent in yellEvents do
				VF_RD_YellEvents[bossName][yellStr] = yellEvent;
			end
		end
	end
end

function VF_RD_InitializeDungeonSupport()
	for dungeonName, dungeonNameEN in pairs(VF_RD_DungeonZones) do
		VF_RD_RaidZones[dungeonName] = dungeonNameEN;
	end
	for bossName, mobType in pairs(VF_RD_DungeonMobsType) do
		VF_RD_MobsType[bossName] = mobType;
	end
	for bossName, bossNameEN in pairs(VF_RD_DungeonBossMap) do
		VF_RD_BossMap[bossName] = bossNameEN;
	end
	for bossName, bossParts in pairs(VF_RD_DungeonBossParts) do
		VF_RD_BossParts[bossName] = bossParts;
	end
	for bossName, yellEvents in pairs(VF_RD_DungeonYellEvents) do
		VF_RD_YellEvents[bossName] = yellEvents;
	end
	VF_RD_DungeonSupportMode = true;
end

function VF_RD_GetNameTranslated(_Name)
	if(VF_RD_SpecialLanguageSupportMode == false) then
		return _Name;
	end
	if(_Name == nil) then
		return _Name;
	end
	local translatedName = VF_RD_BossNameTranslations[_Name];
	if(translatedName ~= nil) then
		return translatedName;
	end
	return _Name;
end

VF_RaidDamage_Settings = {["DebugMode"] = false, ["DungeonRecording"] = false};
function VF_RD_DebugMessage(_Message)
	if(VF_RaidDamage_Settings["DebugMode"] == true) then
		DEFAULT_CHAT_FRAME:AddMessage("VF_RD_Debug: ".._Message, 1, 1, 0);
	end
end
function VF_RD_Message(_Message)
	DEFAULT_CHAT_FRAME:AddMessage("VF_RD: ".._Message, 1, 1, 0);
end

function VF_RaidDamage_OnLoad()
	SlashCmdList["RAIDDAMAGE_CLEAR"] = VF_RD_ClearData;
	SlashCmdList["RAIDDAMAGE_HELP"] = VF_RD_Help;
	SlashCmdList["RAIDDAMAGE_PRINTRECORDED"] = VF_RD_PrintRecorded;
	SlashCmdList["RAIDDAMAGE_TOGGLEDUNGEONRECORDING"] = VF_RD_ToggleDungeonRecording;
	this:RegisterEvent("VARIABLES_LOADED");
	this:RegisterEvent("CHAT_MSG_MONSTER_YELL");
	this:RegisterEvent("CHAT_MSG_COMBAT_HOSTILE_DEATH");
	this:RegisterEvent("ZONE_CHANGED_NEW_AREA");
	this:RegisterEvent("UPDATE_INSTANCE_INFO");
	this:RegisterEvent("RAID_ROSTER_UPDATE");
	this:RegisterEvent("PARTY_MEMBERS_CHANGED");
	this:RegisterEvent("CHAT_MSG_LOOT");
	
	SLASH_RAIDDAMAGE_CLEAR1 = "/VFRD_Clear";
	SLASH_RAIDDAMAGE_CLEAR2 = "/RaidDamage_Clear";
	SLASH_RAIDDAMAGE_CLEAR3 = "/VFRDClear";
	SLASH_RAIDDAMAGE_HELP1 = "/VFRD";
	SLASH_RAIDDAMAGE_HELP2 = "/VFRD_Help";
	SLASH_RAIDDAMAGE_PRINTRECORDED1 = "/VFRD_PrintRecorded";
	SLASH_RAIDDAMAGE_TOGGLEDUNGEONRECORDING1 = "/VFRD_ToggleDungeonRecording";
	--this:RegisterEvent("");
end

function VF_RD_GetBossName(unitName)
	if(VF_RD_BossMap[unitName] ~= nil) then
		return VF_RD_BossMap[unitName];
	else
		return unitName;
	end
end
function VF_RD_GetBossParts(bossName)
	if(VF_RD_BossParts[bossName] ~= nil) then
		return VF_RD_BossParts[bossName];
	else
		return {[1] = bossName};
	end
end

function VF_RD_HaveStartYell(bossName)
	if(VF_RD_YellEvents[bossName] ~= nil) then
		for i, v in VF_RD_YellEvents[bossName] do
			if(v == VF_RD_YellEvents_Start) then
				return true;
			end
		end
	end
	return false;
end


VF_RD_OldSW_SyncReset = SW_SyncReset;
function VF_RD_NewSW_SyncReset(newSessID, newName)
	if(VF_RaidDamage_IsSupported()) then
		VF_RD_ExecuteSub(VF_RD_LogRaidDamage, "SWReset", VF_RD_GetTime_S());
	end
	VF_RD_OldSW_SyncReset(newSessID, newName);
	if(VF_RaidDamage_IsSupported()) then
		VF_RD_ExecuteSub(VF_RD_ResetLastRecordedCacheForAccumulaters);
	end
end
SW_SyncReset = VF_RD_NewSW_SyncReset

VF_RD_OldSW_NukeDataCollection = SW_NukeDataCollection;
function VF_RD_NewSW_NukeDataCollection()
	VF_RD_OldSW_NukeDataCollection();
	if(VF_RaidDamage_IsSupported()) then
		VF_RD_LastRecorded = {};
		VF_RD_ExecuteSub(VF_RD_CreateNewSession);
		VF_RD_DebugMessage("Started a new session because of SWStats nuke");
	end
end
SW_NukeDataCollection = VF_RD_NewSW_NukeDataCollection;

--[[VF_RD_OldKTM_Clear = klhtm.table.clearraidtable;
function VF_RD_NewKTM_Clear()
	VF_RD_OldKTM_Clear();
	if(VF_RaidDamage_IsSupported()) then
		VF_RD_ResetLastRecordedCacheForDataIndex(VF_RD_DataIndex_Threat);
	end
end
klhtm.table.clearraidtable = VF_RD_NewKTM_Clear;
--]]

function VF_RD_ToggleDungeonRecording()
	if(VF_RaidDamage_Settings["DungeonRecording"] == true) then
		VF_RaidDamage_Settings["DungeonRecording"] = false;
		VF_RD_Message("Dungeon Recording is now turned OFF! Please relog or use /reloadui");
	else
		VF_RaidDamage_Settings["DungeonRecording"] = true;
		VF_RD_Message("Dungeon Recording is now turned ON! Please relog or use /reloadui");
	end
end

function VF_RD_Help()
	VF_RD_Message("VF RaidDamage Version = "..VF_RaidDamageVersion);
	VF_RD_Message("/VFRD_PrintRecorded - Prints all the boss fights that has been recorded so far(only counts actual boss kills)");
	VF_RD_Message("/VFRD_Clear - clears all data from all sessions, this removes all data saved in SavedVariables/VF_RaidDamage.lua");
	VF_RD_Message("/VFRD_ToggleDungeonRecording - Toggles Dungeon Recording(requires a relog or /reloadui)");
	VF_RD_Message("/VFRD - shows all commands");
end

function VF_RD_ClearData()
	VF_RaidDamageData = {};
	VF_RD_LastRecorded = {};
	VF_RD_CreateNewSession();
	VF_RD_Message("Cleared all saved data!");
end

function VF_RD_PrintRecorded()
	local killCount = {};
	local lastWasDead = nil;
	for i, session in VF_RaidDamageData do
		for i, data in session do
			if(string.find(data, ":Dead_")) then
				local _, _, time, killPrecision, bossName, _ = string.find(data, "(.*):Dead_(.*) (.*):(.*)");
				if(time ~= nil and bossName ~= nil and lastWasDead ~= bossName) then
					table.insert(killCount, 1, bossName);
					lastWasDead = bossName;
				end
			end
		end
	end
	local bossKills = "Total bosses killed("..table.getn(killCount).."): ";
	for i, bossName in killCount do
		bossKills = bossKills..bossName..", "
	end
	VF_RD_Message(bossKills);
end

function VF_RD_GetTranslatedZoneText()
	local zoneText = GetZoneText();
	if(zoneText ~= nil) then
		local translatedZoneText = VF_RD_RaidZones[zoneText];
		if(translatedZoneText ~= nil) then
			return translatedZoneText;
		end
	end
	return zoneText;
end

function VF_RD_CreateNewSession()
	table.insert(VF_RaidDamageData, 1, {});
	local currentDate = date("!%Y-%m-%d %X");
	local currentZone = VF_RD_GetTranslatedZoneText();
	local currentPlayer = UnitName("player");
	local realmName = GetRealmName();
	local startTime = VF_RD_GetTime_S();
	local serverHour, serverMinute = GetGameTime();
	VF_RD_SaveServerTime();
	local sessionInfo = "Session:Info:Date="..currentDate..",ServerTime="..serverHour..":"..serverMinute..",Time="..startTime..",Realm="..realmName..",Player="..currentPlayer..",AddonVersion="..VF_RaidDamageVersion..",";
	if(currentZone ~= nil and currentZone ~= "") then
		sessionInfo = sessionInfo.."Zone="..currentZone..",";
	end
	table.insert(VF_RaidDamageData[1], 1, sessionInfo);
	VF_RD_SaveInstanceInfo(2);
	VF_RD_RaidMembersChanged = nil;
	VF_RD_LastBuffData = {};
	VF_RD_LastDebuffData = {};
	VF_RD_DebugMessage("Created new Session");
end

function VF_ParseDate(dateStr)
	local _, _, currYear, currMonth, currDay, _ = string.find(dateStr, "(.*)-(.*)-(.*) (.*)");
	return {Year = tonumber(currYear), Month = tonumber(currMonth), Day = tonumber(currDay)};
	 --future fix below should be applied when confirmed no issues with other changes!
	--[[local _, _, currYear, currMonth, currDay, currHour, currMinute, currSecond = string.find(dateStr, "(.*)-(.*)-(.*) (.*):(.*):(.*)");
	return {Year = tonumber(currYear), Month = tonumber(currMonth), Day = tonumber(currDay), Hour = tonumber(currHour), Minute = tonumber(currMinute), Second = tonumber(currSecond)};--]]
end

function VF_RD_CleanupSessions()
	VF_RD_DebugMessage("Started session cleanup");
	local currentDateStr = date("!%Y-%m-%d %X");
	local currentDate = VF_ParseDate(currentDateStr);
	local lastUploadDate = {Year = 2015, Month = 2, Day = 8, Hour = 23, Minute = 59, Second = 59};
	if(VF_RD_LastUploadedData ~= nil) then
		lastUploadDate = VF_ParseDate(VF_RD_LastUploadedData);
	end
	local currentDateComparerInt = currentDate.Year * 365 + currentDate.Month * 30 + currentDate.Day;
	for i, session in VF_RaidDamageData do
		local sessionTableSize = table.getn(session);
		if(sessionTableSize > 0) then
			local sessionInfo = session[sessionTableSize];
			local sessionInterestingStatus = 0;
			local _, _, dateTimeStr, _ = string.find(sessionInfo, "Session:Info:Date=(.*),Time=(.*)");
			if(dateTimeStr ~= nil) then
				local sessionDate = VF_ParseDate(dateTimeStr);
				local sessionDateComparerInt = sessionDate.Year * 365 + sessionDate.Month * 30 + sessionDate.Day;
				if(currentDateComparerInt - sessionDateComparerInt < 7) then
					for i, data in session do
						if(string.find(data, ":Dead_") or string.find(data, ":Wipe_") or string.find(data, "BossHealth=")) then
							sessionInterestingStatus = 1;
							break;
						end
					end
				else
					sessionInterestingStatus = -1;
				end
			else
				dateTimeStr = "ERROR";
			end
			if(sessionInterestingStatus == -1 or dateTimeStr == "ERROR") then
				VF_RaidDamageData[i] = nil;
				VF_RD_DebugMessage("Session("..dateTimeStr..") removed because of too old.");
			elseif(sessionInterestingStatus == 0 and sessionTableSize > 1) then
				VF_RaidDamageData[i] = {[1] = sessionInfo};
				VF_RD_DebugMessage("Session("..dateTimeStr..") cleaned because of empty.");
			end
		end
	end
	for i, errorData in VF_RD_ErrorLog do
		local errorDate = VF_ParseDate(errorData.Date);
		local errorDateComparerInt = errorDate.Year * 365 + errorDate.Month * 30 + errorDate.Day;
		if(currentDateComparerInt - errorDateComparerInt > 7) then
			VF_RD_ErrorLog[i] = nil;
		end
	end
	VF_RD_DebugMessage("Done with cleanup of sessions");
end

--[[function VF_RD_DetermineLogging()
	local currZone = VF_RD_GetTranslatedZoneText();
	if(currZone ~= nil) then
		if(VF_RD_RaidZones[currZone] ~= nil) then
			return true;
		end
	end
	for i = 1, GetNumRaidMembers() do
		local name, rank, subgroup, level, class, fileName, zone, online, isDead = GetRaidRosterInfo(i);
		if(zone ~= nil) then
			if(VF_RD_RaidZones[zone] ~= nil) then
				return true;
			end
		end
	end
	return false;
end--]]

function VF_RaidDamage_IsSupported()
	return SW_StrTable ~= nil and SW_DataCollection ~= nil;
end

function VF_RaidDamage_SafeOnEvent(event, arg1, arg2)
	local eventText = arg1;
	if(event=="VARIABLES_LOADED") then
		VF_RaidDamageVersion = VF_RAIDDAMAGEVERSION;
		if(VF_RaidDamage_Settings == nil) then
			VF_RaidDamage_Settings = {};
		end
		if(VF_RaidDamageData == nil) then
			VF_RaidDamageData = {};
		end
		if(VF_RD_ErrorLog == nil) then
			VF_RD_ErrorLog = {};
		end
		if(VF_RaidDamage_IsSupported()) then
			if(VF_RaidDamage_Settings["DungeonRecording"] == true) then
				VF_RD_InitializeDungeonSupport();
			end
			VF_RD_InitializeSpecialLanguageSupport();
		
			VF_RD_CleanupSessions();
			VF_RD_CreateNewSession();
			DEFAULT_CHAT_FRAME:AddMessage("VF_RaidDamage(/VFRD) version "..VF_RaidDamageVersion.." loaded!", 1, 1, 0);
		else
			local errorMessage = "VF_RaidDamage(/VFRD) is not compatible with this SW_Stats version. Please make sure you never use VF_RaidDamage together with an unsupported SW_Stats version!(Supported versions can be found on the RealmPlayers forum). VF_RaidDamage will be automatically disabled because of this!";
			DEFAULT_CHAT_FRAME:AddMessage(errorMessage, 1, 0, 0);
			VF_RaidDamage_OnLoad = function() end;
			VF_RaidDamage_OnEvent = function() end;
			VF_RaidDamage_OnUpdate = function() end;
		end
	elseif(event == "ZONE_CHANGED_NEW_AREA") then
		VF_RD_UpdateCurrentZone();
	elseif(event == "CHAT_MSG_MONSTER_YELL") then
		local monsterName = VF_RD_GetNameTranslated(arg2);
		
		--[[if(monsterName == "Kel'Thuzad" and eventText ~= nil and VF_RaidDamageData ~= nil) then
			--Only debug log Kel'Thuzad yells, we allready have enough data for all other bosses
			table.insert(VF_RaidDamageData[1], 1, "Session:Debug:"..monsterName.."=Yell-"..eventText);
		end--]]
		
		if(VF_RD_MobsType[monsterName] == VF_RD_MobType_Boss) then
			local bossName = VF_RD_GetBossName(monsterName);
			local yellEvents = VF_RD_YellEvents[bossName];
			if(yellEvents ~= nil) then
				local foundBossYell = false;
				for triggerText, yellEvent in yellEvents do
					if(string.find(eventText, triggerText)) then
						if(yellEvent == VF_RD_YellEvents_Start and VF_RD_LastKilledBoss == bossName) then
							VF_RD_LastKilledBoss = "";
						end
						if(yellEvent ~= VF_RD_YellEvents_NotImportant) then
							local yellEventStr = VF_RD_YellEventsStr[yellEvent];
							local startReason = yellEventStr.."="..monsterName;
							if(bossName ~= monsterName) then
								startReason = startReason..";"..yellEventStr.."="..bossName;
							end
							VF_RD_DebugMessage(startReason.."(YellEvent)");
							VF_RD_LogRaidDamage(startReason, VF_RD_GetTime_S());
							VF_RD_NextUpdateTime = VF_RD_GetTime_S() + 1;
						else
							table.insert(VF_RaidDamageData[1], 1, "Session:Debug:"..monsterName.."=KnownYell-"..eventText);
						end
						foundBossYell = true;
					end
				end
				if(foundBossYell == false) then
					table.insert(VF_RaidDamageData[1], 1, "Session:Debug:"..monsterName.."=Yell-"..eventText);
				end
			else
				if(VF_RD_CurrentBoss == "") then
					local startReason = "Start_U="..monsterName;
					if(bossName ~= monsterName) then
						startReason = startReason..";Start_U="..bossName;
					end
					VF_RD_DebugMessage(startReason.."(UnknownYellEvent)");
					VF_RD_LogRaidDamage(startReason, VF_RD_GetTime_S());
				end
				table.insert(VF_RaidDamageData[1], 1, "Session:Debug:"..monsterName.."=Yell-"..eventText);
			end
		end
	elseif(event == "CHAT_MSG_LOOT") then
		VF_RD_LootReceived();
	elseif(event == "UPDATE_INSTANCE_INFO") then
		if(VF_RD_SaveInstanceInfoBool == true) then
			for i = 1, GetNumSavedInstances() do
				local raidName, raidID, raidRemaining = GetSavedInstanceInfo(i);
				local translatedRaidName = VF_RD_RaidZones[raidName];
				if(translatedRaidName ~= nil) then
					raidName = translatedRaidName;
				end
				if(string.find(VF_RaidDamageData[1][1], "Session:Info:")) then
					VF_RaidDamageData[1][1] = VF_RaidDamageData[1][1].."RaidID"..i.."="..raidName.."-"..raidID.."-"..raidRemaining..",";
				else
					table.insert(VF_RaidDamageData[1], 1, "Session:Info:RaidID"..i.."="..raidName.."-"..raidID.."-"..raidRemaining..",");
				end
				if(VF_RD_SaveInstanceInfoUpdateCount < 1) then
					VF_RD_SaveInstanceInfoBool = false;
				end
			end
		end
	elseif(event == "CHAT_MSG_COMBAT_HOSTILE_DEATH") then
		local mobName;
		_, _, mobName = string.find(eventText, string.gsub(UNITDIESOTHER, "%%s", "(.+)"));
		mobName = VF_RD_GetNameTranslated(mobName);

		if(VF_RD_MobsType[mobName] == VF_RD_MobType_Boss) then
			local deadReason = "Dead_C="..mobName;
			VF_RD_DebugMessage("Dead_C="..mobName.."(CombatMsgDeath)");
			local specialBoss = VF_RD_GetBossName(mobName);
			if(VF_RD_CurrentBossData == nil) then
				VF_RD_CurrentBossData = {};
			end
			if(VF_RD_CurrentBossData[mobName] == nil) then
				VF_RD_CurrentBossData[mobName] = {};
			end
			VF_RD_CurrentBossData[mobName].Dead = true;
			if(specialBoss ~= mobName) then
				if(VF_RD_IsCurrentBossKilled() == true) then
					deadReason = deadReason..";Dead_C="..specialBoss;
					VF_RD_DebugMessage("Dead_C="..specialBoss.."(CombatMsgDeath)");
				end
			end
			VF_RD_LogRaidDamage(deadReason, VF_RD_GetTime_S());
		end
	elseif(event == "RAID_ROSTER_UPDATE" or event == "PARTY_MEMBERS_CHANGED") then
		VF_RD_UpdateRaidMembers();
	end
end

--This should never be used to try call functions that return values
function VF_RD_ExecuteSub(func, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9)
	local retOK, errorText = pcall(func, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9);
	if(retOK) then
	
	else
		if(table.getn(VF_RD_ErrorLog) > 1024) then
			VF_RD_ErrorLog[table.getn(VF_RD_ErrorLog)] = nil;
		end
		local newError = {};
		newError.Date = date("!%Y-%m-%d %X");
		newError.Time = VF_RD_GetTime_S();
		newError.ErrorText = errorText;
		
		local latestError = VF_RD_ErrorLog[1];
		if(latestError ~= nil) then
			if(latestError.Time == newError.Time and string.find(latestError.ErrorText, newError.ErrorText, 1, true)) then
				latestError.ErrorText = "VF_DUPE->"..latestError.ErrorText;
				newError = nil;
			end
		end
		if(newError ~= nil) then
			table.insert(VF_RD_ErrorLog, 1, newError);
			VF_RD_Message("There was an error, please take a screenshot of the ErrorMessage and send to Dilatazu! ErrorMessage: "..newError.ErrorText);
		end
	end
end

function VF_RaidDamage_OnEvent()
	VF_RD_ExecuteSub(VF_RaidDamage_SafeOnEvent, event, arg1, arg2);
end

VF_RD_SaveInstanceInfoBool = false;
VF_RD_SaveInstanceInfoUpdateCount = 0;
VF_RD_SaveInstanceInfoTimer = 0;
function VF_RD_SaveInstanceInfo(_UpdateCount)
	VF_RD_SaveInstanceInfoBool = true;
	VF_RD_SaveInstanceInfoUpdateCount = _UpdateCount - 1;
	VF_RD_SaveInstanceInfoTimer = VF_RD_GetTime_S() + 10;
	RequestRaidInfo();
end
function VF_RD_UpdateSaveInstanceInfo()
	if(VF_RD_SaveInstanceInfoUpdateCount > 0) then
		if(VF_RD_GetTime_S() > VF_RD_SaveInstanceInfoTimer) then
			VF_RD_SaveInstanceInfo(VF_RD_SaveInstanceInfoUpdateCount);
		end
	end
end

VF_RaidDamageData = {};
VF_RD_ErrorLog = {};

--[[VF_RaidDamageDataTemplate = {
[0] = "47323:TT:928,1,,,1;102,1,1,23,2;",
[1] = "",
};--]]

VF_RD_RaidMembers = "";
VF_RD_RaidMembersChanged = nil;
VF_RD_LastRecorded = {};

VF_RD_PrecisionLoggingInterval = 10;

function VF_RD_GenerateDeltaChange(_Value, _UnitID, _DataIndex, _CurrTime)
	if(VF_RD_LastRecorded[_UnitID][_DataIndex] == nil) then
		VF_RD_LastRecorded[_UnitID][_DataIndex] = {Value = _Value; Time = _CurrTime;}
		if(_Value == 0 or VF_RD_NextUpdateTime == 0) then
			return "";
		end
		return _Value;
	end
	local deltaValue = _Value - VF_RD_LastRecorded[_UnitID][_DataIndex].Value;
	if(deltaValue ~= 0) then
		VF_RD_LastRecorded[_UnitID][_DataIndex].Value = _Value;
		VF_RD_LastRecorded[_UnitID][_DataIndex].Time = _CurrTime;
	end
	if(deltaValue == 0) then
		return "";
	end
	return deltaValue;
end

function VF_RD_ResetLastRecordedCacheForAccumulaters()
	for i, v in VF_RD_LastRecorded do
		local oldData = VF_RD_LastRecorded[i];
		VF_RD_LastRecorded[i] = {};
		--save data that doesnt get accumulated
		VF_RD_LastRecorded[i][VF_RD_DataIndex_DPS] = oldData[VF_RD_DataIndex_DPS];
		VF_RD_LastRecorded[i][VF_RD_DataIndex_HPS] = oldData[VF_RD_DataIndex_HPS];
		VF_RD_LastRecorded[i][VF_RD_DataIndex_DamageCrit] = oldData[VF_RD_DataIndex_DamageCrit];
		VF_RD_LastRecorded[i][VF_RD_DataIndex_HealCrit] = oldData[VF_RD_DataIndex_HealCrit];
		VF_RD_LastRecorded[i][VF_RD_DataIndex_Threat] = oldData[VF_RD_DataIndex_Threat];
		--save data that doesnt get accumulated
	end
end

function VF_RD_ResetLastRecordedCacheForDataIndex(_DataIndex)
	for i, v in VF_RD_LastRecorded do
		if(VF_RD_LastRecorded[i] ~= nil) then
			VF_RD_LastRecorded[i][_DataIndex] = nil;
		end
	end
end

function VF_RD_IsCurrentBossKilled()
	local bossKilled = true;
	for addName, addData in VF_RD_CurrentBossData do
		if(addData.Dead ~= true) then
			bossKilled = false;
			break;
		end
	end
	return bossKilled;
end

VF_RD_CurrentBoss = "";
VF_RD_CurrentBossData = {};
VF_RD_CurrentBoss_Health = 0;
VF_RD_CurrentBoss_MaxHealth = 0;
VF_RD_LastBossData = 0;
VF_RD_LastKilledBoss = "";
VF_RD_BossStartTime = 0;

function VF_RD_PeekDeltaChange(_Value, _UnitID, _DataIndex)
	if(VF_RD_LastRecorded[_UnitID] == nil) then
		return _Value;
	end
	if(VF_RD_LastRecorded[_UnitID][_DataIndex] == nil) then ---error
		return _Value;
	end
	return _Value - VF_RD_LastRecorded[_UnitID][_DataIndex].Value;
end

function VF_RD_DetectBossStart()
	if(VF_RD_CurrentBoss == "") then
		for unitID, unitData in SW_DataCollection.activeSegment do
			if(type(unitID)=="number")then
				local unitName = VF_RD_GetNameTranslated(SW_StrTable:getStr(unitID));
				if(VF_RD_MobsType[unitName] == VF_RD_MobType_Boss) then
					local bossName = VF_RD_GetBossName(unitName);
					if(VF_RD_LastKilledBoss ~= bossName) then
						if(VF_RD_PeekDeltaChange(unitData:getDmgDone(), unitID, VF_RD_DataIndex_Damage) > 0 or VF_RD_PeekDeltaChange(unitData:getDmgRecieved(), unitID, VF_RD_DataIndex_DamageTaken) > 0 or VF_RD_PeekDeltaChange(unitData:getRawHealDone(), unitID, VF_RD_DataIndex_RawHeal) > 0) then
							--Boss Fight start
							local startReason = "Start_C="..unitName;
							if(bossName ~= unitName) then
								startReason = startReason..";Start_C="..bossName;
							end
							VF_RD_DebugMessage(startReason.."(CombatMsgScan)");
							VF_RD_LogRaidDamage(startReason, VF_RD_GetTime_S());
							VF_RD_NextUpdateTime = VF_RD_GetTime_S() + 1;
							return;
						end
					end
				end
			end
		end
		
		local groupMembers = VF_RD_GetGroupMemberIDs();
		for i, groupMemberID in pairs(groupMembers) do
			local currUnitID = groupMemberID.."target";
			local unitTarget = VF_RD_GetNameTranslated(UnitName(currUnitID));
			if(unitTarget ~= nil) then
				if(VF_RD_MobsType[unitTarget] == VF_RD_MobType_Boss) then
					local bossName = VF_RD_GetBossName(unitTarget);
					if(VF_RD_LastKilledBoss ~= bossName and VF_RD_HaveStartYell(bossName) ~= true) then
						if(UnitHealth(currUnitID) ~= UnitHealthMax(currUnitID) and UnitHealth(currUnitID) ~= 0) then
							local startReason = "Start_T="..unitTarget;
							if(bossName ~= unitTarget) then
								startReason = startReason..";Start_T="..bossName;
							end
							VF_RD_DebugMessage(startReason.."(TargetHealthScan)");
							VF_RD_LogRaidDamage(startReason, VF_RD_GetTime_S());
							VF_RD_NextUpdateTime = VF_RD_GetTime_S() + 1;
							return;
						end
					end
				end
			end
		end
	end
end

--Not used atm
--VF_RD_InCombatStatus = false;
--[[function VF_RD_DetectCombat()
	local inRaidCount = 0;
	local inCombatCount = 0;
	for i = 1, 40 do
		local currUnitID = "raid"..i;
		local unitName = VF_RD_GetNameTranslated(UnitName(currUnitID));
		if(unitName ~= nil) then
			if(UnitAffectingCombat(currUnitID) == 1 or UnitIsDead(currUnitID) == 1) then
				inCombatCount = inCombatCount + 1;
			end
			inRaidCount = inRaidCount + 1;
		end
	end
	if(inRaidCount > 5) then
		if(VF_RD_InCombatStatus == true) then
			if(inCombatCount / inRaidCount < 0.25) then
				VF_RD_InCombatStatus = false;
				VF_RD_DebugMessage("Now out of combat");
			end
		else
			if(inCombatCount / inRaidCount > 0.75) then
				VF_RD_InCombatStatus = true;
				VF_RD_DebugMessage("Now in combat");
			end
		end
	end
end--]]

function VF_RD_DetectBossEnd()
	if(VF_RD_CurrentBoss ~= "") then
		local bossKilled = true;
		local deadReason = nil;
		for addName, addData in VF_RD_CurrentBossData do
			if(addData.Dead ~= true) then
				if(addData.Health ~= nil and addData.MaxHealth ~= nil and addData.Health <= 0 and addData.MaxHealth >= 100) then
					addData.Dead = true;
					if(deadReason == nil) then
						deadReason = "Dead_T="..addName;
					else
						deadReason = deadReason..";Dead_T="..addName;
					end
					VF_RD_DebugMessage("Dead_T="..addName.."(TargetHealthScan)");
				else
					bossKilled = false;
				end
			end
		end
		
		if(bossKilled == true) then
			if(deadReason ~= "Dead_T="..VF_RD_CurrentBoss) then
				if(deadReason ~= nil) then
					deadReason = deadReason..";Dead_T="..VF_RD_CurrentBoss;
				end
				VF_RD_DebugMessage("Dead_T="..VF_RD_CurrentBoss.."(TargetHealthScan)");
			end
		end
		if(deadReason ~= nil) then
			VF_RD_LogRaidDamage(deadReason, VF_RD_GetTime_S());
		end
	end
end

function VF_RD_LogRaidDamage(_Reason, _Time)
	local totalPlayersResult = "";
	for unitID, unitData in SW_DataCollection.activeSegment do 
		if(type(unitID)=="number")then 
			local rawUnitName = SW_StrTable:getStr(unitID);
			if(VF_RD_RaidMembersMissingID[rawUnitName] ~= nil) then
				VF_RD_UpdateRaidMembers();
			end
			local unitName = VF_RD_GetNameTranslated(rawUnitName);
			if(VF_RD_LastRecorded[unitID] == nil) then
				VF_RD_LastRecorded[unitID] = {};
				totalPlayersResult = totalPlayersResult..unitName.."="..unitID..",";
			end
			if(SW_DataCollection.meta[unitID]) then
				if(SW_DataCollection.meta[unitID].allPets) then
					for i, v in SW_DataCollection.meta[unitID].allPets do
						if(VF_RD_LastRecorded[unitID]["pets"] == nil) then
							VF_RD_LastRecorded[unitID]["pets"] = {};
						end
						if(VF_RD_LastRecorded[unitID]["pets"][i] == nil) then
							--local petName = SW_StrTable:getStr(i);
							local petName = SW_DataCollection.meta[i].origName;--testing
							if(petName == nil or string.len(petName) < 2 or string.find(petName,"%W")) then petName = "VFUnknown"; end
							VF_RD_LastRecorded[unitID]["pets"][i] = 1;
							totalPlayersResult = totalPlayersResult.."VF_PET_"..i.."_"..petName.."_"..unitName.."="..i..",";
						end
					end
				end
			end
			local dmg, effHeal, dmgTaken = unitData:getDmgDone(), unitData:getEffectiveHealDone(), unitData:getDmgRecieved();
			local overHeal, dps, hps, death = unitData:getOHDone(), unitData:getDPS(), unitData:getHPS(), unitData:getDeaths();
			local decurse, dmgCrit, healCrit = unitData:getDecurseDone(), unitData:getDmgCrit(), unitData:getHealCrit();
			local effHealRecv, overHealRecv, rawHeal, rawHealRecv = unitData:getEffectiveHealRecieved(), unitData:getOHRecieved(), unitData:getRawHealDone(), unitData:getRawHealRecieved();
			
			local threatValue = klhtm.table.raiddata[rawUnitName];
			if(threatValue == nil) then
				threatValue = 0;
			end
			
			dmg = VF_RD_GenerateDeltaChange(dmg, unitID, VF_RD_DataIndex_Damage, _Time);
			effHeal = VF_RD_GenerateDeltaChange(effHeal, unitID, VF_RD_DataIndex_EffectiveHeal, _Time);
			dmgTaken = VF_RD_GenerateDeltaChange(dmgTaken, unitID, VF_RD_DataIndex_DamageTaken, _Time);
			overHeal = VF_RD_GenerateDeltaChange(overHeal, unitID, VF_RD_DataIndex_OverHeal, _Time);
			death = VF_RD_GenerateDeltaChange(death, unitID, VF_RD_DataIndex_Death, _Time);
			decurse = VF_RD_GenerateDeltaChange(decurse, unitID, VF_RD_DataIndex_Decurse, _Time);
			effHealRecv = VF_RD_GenerateDeltaChange(effHealRecv, unitID, VF_RD_DataIndex_EffectiveHealReceived, _Time);
			overHealRecv = VF_RD_GenerateDeltaChange(overHealRecv, unitID, VF_RD_DataIndex_OverHealReceived, _Time);
			rawHeal = VF_RD_GenerateDeltaChange(rawHeal, unitID, VF_RD_DataIndex_RawHeal, _Time);
			rawHealRecv = VF_RD_GenerateDeltaChange(rawHealRecv, unitID, VF_RD_DataIndex_RawHealReceived, _Time);
			
			if(dmg ~= "" or effHeal ~= "" or dmgTaken ~= "" or overHeal ~= "" or death ~= "" or effHealRecv ~= "" or rawHeal ~= "" or rawHealRecv ~= "") then
				if(VF_RD_MobsType[unitName] == VF_RD_MobType_Boss) then
					local specialBoss = VF_RD_GetBossName(unitName);
					if(VF_RD_CurrentBoss ~= specialBoss and VF_RD_LastKilledBoss ~= specialBoss) then -- or (_Time - VF_RD_LastBossData) > 60)
						if(_Reason ~= "") then
							if(string.find(_Reason, "Start_C=") or string.find(_Reason, "Start_T=")) then
								
							else
								_Reason = _Reason..";Start_S="..specialBoss;
							end
						else
							_Reason = "Start_S="..specialBoss;
						end
						VF_RD_DebugMessage("Start_S="..specialBoss.."(SW_Start)");
						VF_RD_CurrentBoss = specialBoss;
						local bossParts = VF_RD_GetBossParts(specialBoss);
						VF_RD_CurrentBossData = {};
						for i, v in bossParts do
							VF_RD_CurrentBossData[v] = {Health = 0, MaxHealth = 0};
						end
					elseif(death ~= "" and VF_RD_CurrentBoss == specialBoss) then
						if(_Reason ~= "") then
							_Reason = _Reason..";Dead_S="..unitName;
						else
							_Reason = "Dead_S="..unitName;
						end
						VF_RD_DebugMessage("Dead_S="..unitName.."(SW_Dead)");
						if(VF_RD_CurrentBossData[unitName] == nil) then
							VF_RD_CurrentBossData[unitName] = {};
						end
						VF_RD_CurrentBossData[unitName].Dead = true;
						if(specialBoss ~= unitName) then
							local bossParts = VF_RD_GetBossParts(specialBoss);
							local bossKilled = true;
							for i, v in bossParts do
								if(VF_RD_CurrentBossData[v] == nil or VF_RD_CurrentBossData[v].Dead ~= true) then
									bossKilled = false;
									break;
								end
							end
							if(bossKilled == true) then
								if(_Reason ~= "") then
									_Reason = _Reason..";Dead_S="..specialBoss;
								else
									_Reason = "Dead_S="..specialBoss;
								end
								VF_RD_DebugMessage("Dead_S="..specialBoss.."(SW_Dead)");
							end
						end
					end
					VF_RD_LastBossData = _Time;
				end
				--Inside here because they do not get saved every single time they change
				--[[
				local threatChange = VF_RD_GenerateDeltaChange(threatValue, unitID, VF_RD_DataIndex_Threat, _Time);
				dmgCrit = VF_RD_GenerateDeltaChange(dmgCrit, unitID, VF_RD_DataIndex_DamageCrit, _Time);
				healCrit = VF_RD_GenerateDeltaChange(healCrit, unitID, VF_RD_DataIndex_HealCrit, _Time);
				dps = VF_RD_GenerateDeltaChange(dps, unitID, VF_RD_DataIndex_DPS, _Time);
				hps = VF_RD_GenerateDeltaChange(hps, unitID, VF_RD_DataIndex_HPS, _Time);
				if(dps ~= "") then
					dps = string.format("%.2f", dps);
				end
				if(hps ~= "") then
					hps = string.format("%.2f", hps);
				end
				--]]
				dmgCrit = string.format("%.2f", dmgCrit);
				healCrit = string.format("%.2f", healCrit);
				dps = string.format("%.2f", dps);
				hps = string.format("%.2f", hps);
				local unitResultStr = unitID.." "..dmg.." "..effHeal.." "..dmgTaken.." "..overHeal.." "..dps.." "..hps.." "..death.." "..decurse.." "..dmgCrit.." "..healCrit.." "..effHealRecv.." "..overHealRecv.." "..rawHeal.." "..rawHealRecv.." "..threatValue;
				totalPlayersResult = totalPlayersResult..unitResultStr..",";
			end
			
		end 
	end

	if(_Reason == "" and VF_RD_CurrentBoss ~= "" and VF_RD_LastBossData ~= _Time) then
		local threatWiped = true;
		for uN, tV in klhtm.table.raiddata do
			if(tV == 0 or tV == nil) then
				
			else
				threatWiped = false;
				break;
			end
		end
		if(threatWiped == true) then
			_Reason = "Wipe_K="..VF_RD_CurrentBoss;
			VF_RD_DebugMessage("Wipe_K="..VF_RD_CurrentBoss.."(ThreatWipe)");
			VF_RD_CurrentBoss = "";
			VF_RD_CurrentBossData = {};
			VF_RD_SaveInstanceInfo(3);
		end
	end
	if(VF_RD_RaidMembersChanged ~= nil and totalPlayersResult ~= "") then
		if(_Time - VF_RD_RaidMembersChanged > 30 or (string.find(_Reason, "Start") or string.find(_Reason, "Dead") or string.find(_Reason, "Wipe"))) then
			if(VF_RD_RaidMembers ~= "") then
				totalPlayersResult = totalPlayersResult..VF_RD_RaidMembers..",";
			end
			VF_RD_RaidMembersChanged = nil;
		end
	end
	if(VF_RD_CurentZoneChanged ~= nil and totalPlayersResult ~= "") then
		if(_Time - VF_RD_CurentZoneChanged > 30 or (string.find(_Reason, "Start") or string.find(_Reason, "Dead") or string.find(_Reason, "Wipe"))) then
			if(VF_RD_CurentZoneChanged ~= "") then
				totalPlayersResult = totalPlayersResult..VF_RD_CurentZoneStr..",";
			end
			VF_RD_CurentZoneChanged = nil;
		end
	end
	VF_RD_UpdateBossHealth();
	if(totalPlayersResult ~= "" and VF_RD_CurrentBoss_MaxHealth > 0) then
		local healthStr = "BossHealth="..VF_RD_CurrentBoss_Health.."-"..VF_RD_CurrentBoss_MaxHealth;
		for addName, addData in VF_RD_CurrentBossData do
			if(addData.Health ~= nil and addData.MaxHealth ~= nil) then
				healthStr = healthStr..";BossHealth-"..addName.."="..addData.Health.."-"..addData.MaxHealth;
			end
		end
		VF_RD_CurrentBoss_MaxHealth = 0;
		if(_Reason ~= "") then
			_Reason = _Reason..";"..healthStr;
		else
			_Reason = healthStr;
		end
	end
	
	---
	local totalBuffsResult = "";
	local groupMembers = VF_RD_GetGroupMemberIDs();
	for i, currUnitID in pairs(groupMembers) do
		local currName = UnitName(currUnitID);
		if(currName ~= nil) then
			local currPlayerID = SW_StrTable:hasID(currName);
			if(currPlayerID ~= nil and VF_RD_LastRecorded[currPlayerID] ~= nil) then
				
				local allBuffs = VF_RD_GetAllBuffs(currUnitID);
				local buffDefinitionResult, buffPlayerAddResult, buffPlayerEqResult, buffPlayerSubResult = VF_RD_CalcDeltaBuff(allBuffs, VF_RD_LastBuffData, currPlayerID);
				
				local allDebuffs = VF_RD_GetAllDebuffs(currUnitID);
				local debuffDefinitionResult, debuffPlayerAddResult, debuffPlayerEqResult, debuffPlayerSubResult = VF_RD_CalcDeltaBuff(allDebuffs, VF_RD_LastDebuffData, currPlayerID);
				
				totalBuffsResult = totalBuffsResult..buffDefinitionResult..debuffDefinitionResult;
				
				if(buffPlayerEqResult ~= "." or buffPlayerSubResult ~= "." or buffPlayerAddResult ~= ".") then
					totalBuffsResult = totalBuffsResult.."B"..currPlayerID.."."..table.getn(allBuffs)..buffPlayerEqResult..buffPlayerSubResult..buffPlayerAddResult..",";
				end
				
				if(debuffPlayerEqResult ~= "." or debuffPlayerSubResult ~= "." or debuffPlayerAddResult ~= ".") then
					totalBuffsResult = totalBuffsResult.."D"..currPlayerID.."."..table.getn(allDebuffs)..debuffPlayerEqResult..debuffPlayerSubResult..debuffPlayerAddResult..",";
				end
			end
		end
	end
	totalPlayersResult = totalPlayersResult..totalBuffsResult;
	---
	if(totalPlayersResult ~= "" or _Reason ~= "") then
		table.insert(VF_RaidDamageData[1], 1, _Time..":".._Reason..":"..totalPlayersResult);
		--VF_SendMessage(_Time..":"..":"..totalPlayersResult, "NONE"); 
	end
	if(string.find(_Reason, "Start_S") or string.find(_Reason, "Start_C")) then
		VF_RD_BossStartTime = _Time;
		VF_RD_PrecisionLoggingInterval = 5;
	elseif(string.find(_Reason, "Dead")) then
		if(VF_RD_IsCurrentBossKilled() == true) then
			if(VF_RD_CurrentBoss ~= "") then
				VF_RD_LastKilledBoss = VF_RD_CurrentBoss;
				VF_RD_CurrentBoss = "";
				VF_RD_CurrentBossData = {};
			end
			VF_RD_SaveInstanceInfo(3);
			VF_RD_PrecisionLoggingInterval = 10;
		end
	elseif(string.find(_Reason, "Wipe")) then
		VF_RD_PrecisionLoggingInterval = 10;
	end
end

function VF_RD_CalcDeltaBuff(_AllBuffs, _LastBuffDataArray, _PlayerID)
	local buffDefinitionResult = "";
	local buffPlayerAddResult = ".";
	local buffPlayerEqResult = ".";
	local buffPlayerSubResult = ".";

	local playerLastBuffData = _LastBuffDataArray[_PlayerID];
	if(playerLastBuffData == nil) then
		_LastBuffDataArray[_PlayerID] = {};
		playerLastBuffData = _LastBuffDataArray[_PlayerID];
	end
	local oldPlayerLastBuffData = {};
	for buffID, counter in pairs(playerLastBuffData) do
		oldPlayerLastBuffData[buffID] = counter;
	end

	for _, buffName in _AllBuffs do
		local buffID, buffIDCreated = VF_RD_GetBuffID(buffName);
		if(buffIDCreated == true) then
			buffDefinitionResult = buffDefinitionResult.."B."..VF_RD_TranslateBuff(buffName).."="..buffID..",";
		end
		if(playerLastBuffData[buffID] == nil) then
			if(buffPlayerAddResult == ".") then
				buffPlayerAddResult = buffPlayerAddResult..buffID;
			else
				buffPlayerAddResult = buffPlayerAddResult.." "..buffID;
			end
			playerLastBuffData[buffID] = 1;
		elseif(playerLastBuffData[buffID] > 20) then
			if(buffPlayerEqResult == ".") then
				buffPlayerEqResult = buffPlayerEqResult..buffID;
			else
				buffPlayerEqResult = buffPlayerEqResult.." "..buffID;
			end
			playerLastBuffData[buffID] = 1;
		else
			playerLastBuffData[buffID] = playerLastBuffData[buffID] + 1;
		end
	end
	for buffID, counter in pairs(oldPlayerLastBuffData) do
		if(playerLastBuffData[buffID] == counter) then
			playerLastBuffData[buffID] = nil;
			if(buffPlayerSubResult == ".") then
				buffPlayerSubResult = buffPlayerSubResult..buffID;
			else
				buffPlayerSubResult = buffPlayerSubResult.." "..buffID;
			end
		end
	end
	return buffDefinitionResult, buffPlayerAddResult, buffPlayerEqResult, buffPlayerSubResult;
end

VF_RD_BuffID = {};
VF_RD_LastBuffData = {};
VF_RD_LastDebuffData = {};
VF_RD_BuffIDCounter = 1;
function VF_RD_GetBuffID(_BuffName)
	local buffID = VF_RD_BuffID[_BuffName];
	if(buffID == nil) then
		buffID = VF_RD_BuffIDCounter;
		VF_RD_BuffIDCounter = VF_RD_BuffIDCounter + 1;
		VF_RD_BuffID[_BuffName] = buffID;
		return buffID, true;
	end
	return buffID, false;
end

VF_RD_BuffTranslations = {
	["Spell_"] = "a",
	["Ability_"] = "b",
	["Racial_"] = "c",
	["Creature_"] = "d",
	["Warrior_"] = "e",
	["Paladin_"] = "f",
	["Hunter_"] = "g",
	["Druid_"] = "h",
	["Rogue_"] = "i",
	["Shaman_"] = "j",
	["Mage_"] = "k",
	["Mount_"] = "l",
	["Pet_"] = "m",
	["INV_"] = "n",
	["Potion_"] = "o",
	["Spell_"] = "p",
	["Fire_"] = "q",
	["Frost_"] = "r",
	["Holy_"] = "s",
	["Nature_"] = "t",
	["Shadow_"] = "u",
	["Sword_"] = "v",
	["Misc_"] = "w",
	["Food_"] = "x",
	["Jewelry_"] = "y",
	["Drink_"] = "z",
};

function VF_RD_TranslateBuff(_BuffName)
	local buffName = _BuffName;
	for _1, _2 in pairs(VF_RD_BuffTranslations) do
		buffName = string.gsub(buffName, _1, _2);
	end
	return buffName
end


function VF_RD_GetAllBuffs(_UnitID)
	local buffData = {};
	local buffIndex = 1;
	local currBuff = UnitBuff(_UnitID, buffIndex);
	while (currBuff ~= nil) do
		currBuff = string.gsub(currBuff, "Interface\\Icons\\", "");
		table.insert(buffData, currBuff);
		buffIndex = buffIndex + 1;
		currBuff = UnitBuff(_UnitID, buffIndex);
	end
	return buffData;
end
function VF_RD_GetAllDebuffs(_UnitID)
	local buffData = {};
	local buffIndex = 1;
	local currBuff = UnitDebuff(_UnitID, buffIndex);
	while (currBuff ~= nil) do
		currBuff = string.gsub(currBuff, "Interface\\Icons\\", "");
		table.insert(buffData, currBuff);
		buffIndex = buffIndex + 1;
		currBuff = UnitDebuff(_UnitID, buffIndex);
	end
	return buffData;
end

function VF_RD_GetTime_S()
	local currTime = GetTime();
	local currTime_S = math.floor(currTime);
	return currTime_S;
end

function VF_RD_UpdateBossHealth()
	if(VF_RD_CurrentBoss == "") then
		VF_RD_CurrentBoss_Health = 0;
		VF_RD_CurrentBoss_MaxHealth = 0;
	--[[elseif(UnitName("target") == VF_RD_CurrentBoss) then
		VF_RD_CurrentBoss_Health = UnitHealth("target");
		VF_RD_CurrentBoss_MaxHealth = UnitHealthMax("target");
	elseif(UnitName("targettarget") == VF_RD_CurrentBoss) then
		VF_RD_CurrentBoss_Health = UnitHealth("targettarget");
		VF_RD_CurrentBoss_MaxHealth = UnitHealthMax("targettarget");--]]
	else
		local groupMembers = VF_RD_GetGroupMemberIDs();
		for i, groupMemberID in pairs(groupMembers) do
			local currUnitID = groupMemberID.."target";
			local currName = VF_RD_GetNameTranslated(UnitName(currUnitID));
			if(currName ~= nil) then
				if(VF_RD_CurrentBossData[currName] ~= nil) then
					VF_RD_CurrentBossData[currName].Health = UnitHealth(currUnitID);
					VF_RD_CurrentBossData[currName].MaxHealth = UnitHealthMax(currUnitID);
				end
				if(VF_RD_GetBossName(currName) == VF_RD_CurrentBoss) then
					VF_RD_CurrentBoss_Health = UnitHealth(currUnitID);
					VF_RD_CurrentBoss_MaxHealth = UnitHealthMax(currUnitID);
				end
			end
		end
	end
end

VF_RD_GroupMemberIDs_Party = {};
VF_RD_GroupMemberIDs_Raid = {};
for i = 1, 4 do
	table.insert(VF_RD_GroupMemberIDs_Party, "party"..i);
end
table.insert(VF_RD_GroupMemberIDs_Party, "player");

for i = 1, 40 do
	table.insert(VF_RD_GroupMemberIDs_Raid, "raid"..i);
end

function VF_RD_GetGroupMemberIDs()
	if(GetNumRaidMembers() == 0) then
		return VF_RD_GroupMemberIDs_Party;
	else
		return VF_RD_GroupMemberIDs_Raid;
	end
end

VF_RD_ShouldLogData = false;
VF_RD_LastTimeSeenInsideInstanceZone = 0;

function VF_RD_UpdateShouldLogData()
	if(VF_RD_RaidZones[VF_RD_GetTranslatedZoneText()] ~= nil) then
		VF_RD_LastTimeSeenInsideInstanceZone = GetTime();
	end
	if(GetNumRaidMembers() ~= 0 or (VF_RD_DungeonSupportMode == true and (GetTime() - VF_RD_LastTimeSeenInsideInstanceZone) < 300)) then --5 min should be enough for corpserun...
		if(VF_RD_ShouldLogData == false) then
			VF_RD_DebugMessage("Started Logging Data because inside Instance");
		end
		VF_RD_ShouldLogData = true;
	else
		if(VF_RD_ShouldLogData == true) then
			VF_RD_DebugMessage("Stopped Logging Data because outside Instance");
		end
		VF_RD_ShouldLogData = false;
	end
end

VF_RD_CurentZoneStr = "";
VF_RD_CurentZoneChanged = nil;
function VF_RD_UpdateCurrentZone()
	local currentZone = VF_RD_GetTranslatedZoneText();
	local currentZoneStr = "Z "..currentZone;
	if(currentZoneStr ~= VF_RD_CurentZoneStr and currentZone ~= "") then
		VF_RD_CurentZoneStr = currentZoneStr;
		VF_RD_CurentZoneChanged = VF_RD_GetTime_S();
	end
	if(string.find(VF_RaidDamageData[1][1], "Session:Info:")) then
		VF_RaidDamageData[1][1] = VF_RaidDamageData[1][1].."Zone="..currentZone..",";
	else
		table.insert(VF_RaidDamageData[1], 1, "Session:Info:Zone="..currentZone..",");
	end
end

function VF_RD_UpdateRaidMembers()
	local oldRaidMembers = VF_RD_RaidMembers;
	VF_RD_RaidMembers = VF_RD_GenerateRaidMembersStr();
	if(VF_RD_RaidMembers ~= oldRaidMembers and VF_RD_RaidMembers ~= "") then
		VF_RD_RaidMembersChanged = VF_RD_GetTime_S();
	end
end

VF_RD_RaidMembersMissingID = {};
function VF_RD_GenerateRaidMembersStr()
	VF_RD_RaidMembersMissingID = {};
	local raidMembers = "";
	local groupMembers = VF_RD_GetGroupMemberIDs();
	for i, groupMemberID in pairs(groupMembers) do
		local currName = UnitName(groupMemberID);
		if(currName ~= nil) then
			local currID = SW_StrTable:hasID(currName);
			if(currID ~= nil) then
				raidMembers = raidMembers.." "..currID;
			else
				VF_RD_RaidMembersMissingID[currName] = true;
			end
		end
	end
	if(raidMembers ~= "") then
		raidMembers = "R"..raidMembers;
	end
	return raidMembers;	
end

VF_RD_NextUpdateTime = nil;
VF_RD_NextBossCheckTime = nil;
function VF_RaidDamage_SafeOnUpdate()
	VF_RD_SaveServerTime_Update();
	VF_RD_UpdateSaveInstanceInfo();
	VF_RD_UpdateShouldLogData();
	if(VF_RD_ShouldLogData == true) then
		local currTime = GetTime();
		local currTime_S = VF_RD_GetTime_S();
		if(VF_RD_NextUpdateTime == nil or VF_RD_NextBossCheckTime == nil) then
			VF_RD_NextUpdateTime = currTime_S + 5;
			VF_RD_NextBossCheckTime = currTime + 0.5;
		end
		if(currTime >= VF_RD_NextBossCheckTime) then
			VF_RD_DetectBossStart();
			VF_RD_NextBossCheckTime = currTime + 0.5;
		end
		if(currTime_S >= VF_RD_NextUpdateTime) then
			VF_RD_LogRaidDamage("", currTime_S);
			if(currTime_S - VF_RD_BossStartTime < 5) then
				--log every second the first 5 seconds of fight
				VF_RD_NextUpdateTime = currTime_S + 1;
			else
				VF_RD_NextUpdateTime = currTime_S + VF_RD_PrecisionLoggingInterval;
			end
		else
			VF_RD_UpdateBossHealth();
		end
		VF_RD_DetectBossEnd();
	end
end
function VF_RaidDamage_OnUpdate()
	VF_RD_ExecuteSub(VF_RaidDamage_SafeOnUpdate);
end

VF_RD_SaveServerTimeCount = 0;
VF_RD_LastServerMinute = nil;
VF_RD_LastLocalCheckTime = nil;

function VF_RD_SaveServerTime()
	VF_RD_SaveServerTimeCount = 2;--save the time 2 times, if clock is correct it should be exactly 60 seconds between the 2 savings
	VF_RD_LastServerMinute = nil;
	VF_RD_LastLocalCheckTime = nil;
end

function VF_RD_SaveServerTime_Update()
	if(VF_RD_SaveServerTimeCount ~= nil and VF_RD_SaveServerTimeCount > 0) then
		local serverHour, serverMinute = GetGameTime();
		if(serverHour ~= -1 and serverMinute ~= -1) then
			local localTime = GetTime();
			if(VF_RD_LastLocalCheckTime ~= nil) then
				if(localTime - VF_RD_LastLocalCheckTime < 2) then
					--require precision of 2 seconds
					if(VF_RD_LastServerMinute ~= nil) then
						if(VF_RD_LastServerMinute ~= serverMinute) then
							--Minute changed!
							local currentDate = date("!%Y-%m-%d %X");
							local sessionInfo = "Session:TimeSynch:Date="..currentDate..",ServerTime="..serverHour..":"..serverMinute..":0"..",Time="..VF_RD_GetTime_S()..",";
							table.insert(VF_RaidDamageData[1], 1, sessionInfo);
							VF_RD_SaveServerTimeCount = VF_RD_SaveServerTimeCount - 1;
						end
					end
				end
			end
			VF_RD_LastServerMinute = serverMinute;
			VF_RD_LastLocalCheckTime = localTime;
		else
			VF_RD_LastServerMinute = nil;
		end
	end
end

if(GetLocale() == "deDE") then
	VF_RD_SplitReceivesLootStr = "([^%s]+) bekommt Beute: (.+)%.";
	--VF_RD_SplitReceivesLootStr2 = "([^%s]+) erh\195\164lt Beute: (.+)%."; --Not sure if needed yet... can be fixed later using "([^%s]+) (.+) Beute: (.+)%."
	VF_RD_SplitIReceivesLootStr = "Ihr erhaltet Beute: (.+)%."
elseif(GetLocale() == "frFR") then
	VF_RD_SplitReceivesLootStr = "([^%s]+) receives loot: (.+)%.";
	VF_RD_SplitIReceivesLootStr = "You receive loot: (.+)%."
else
	VF_RD_SplitReceivesLootStr = "([^%s]+) receives loot: (.+)%.";
	VF_RD_SplitIReceivesLootStr = "You receive loot: (.+)%."
end


function VF_RD_LootReceived()
	local _, _, playerName, itemLink = string.find(arg1, VF_RD_SplitReceivesLootStr);
	
	local itemID = "0";
	if not ( playerName == nil) then
		local _, _, rubbish1, tempItemID, rubbish2 = string.find(itemLink, "(.*)|Hitem:(.*)|h%[(.*)");
		itemID = tempItemID;
	else
		_, _, itemLink = string.find(arg1, VF_RD_SplitIReceivesLootStr);
		if not ( itemLink == nil) then
			playerName = UnitName("player");
			local _, _, rubbish1, tempItemID, rubbish2 = string.find(itemLink, "(.*)|Hitem:(.*)|h%[(.*)");
			itemID = tempItemID;
		else
			return;
		end
	end
	local _, _, actualItemID = string.find(itemID, "(.*):(.*):(.*):(.*)");
	
	local _name, _string, itemQuality = GetItemInfo(actualItemID);
	if(VF_RD_ShouldLogData == true and itemQuality ~= nil and itemQuality >= 4) then
		local lootString = "PL-"..playerName.."="..itemID..";";
		if(string.find(VF_RaidDamageData[1][1], "Session:Loot:")) then
			VF_RaidDamageData[1][1] = VF_RaidDamageData[1][1]..lootString;
		else
			table.insert(VF_RaidDamageData[1], 1, "Session:Loot:"..lootString);
		end
	end
	VF_RD_DebugMessage(playerName.." looted: "..itemLink);
end

function VF_RD_SafeSaveLoot()
	local mobName = VF_RD_GetNameTranslated(UnitName("target"));
	if(not(mobName)) then
		if(VF_RD_LastKilledBoss == "Majordomo Executus" and VF_RD_GetTranslatedZoneText() == "Molten Core") then
			mobName = "Majordomo Executus";
		elseif(VF_RD_LastKilledBoss == "The Four Horsemen" and VF_RD_GetTranslatedZoneText() == "Naxxramas") then
			mobName = "The Four Horsemen";
		end
	end
	if(mobName) then
		local numLoot = GetNumLootItems()
		local lootDropped = "";
		local lootItemIDs = "";
		for slot = 1, numLoot do
			if (LootSlotIsItem(slot)) then
				local texture, item, quantity, quality = GetLootSlotInfo(slot)
				if(quality >= 4) then
					local itemLink = GetLootSlotLink(slot);
					lootDropped = lootDropped..itemLink.." ";
					local _, _, rubbish1, itemID, rubbish2 = string.find(itemLink, "(.*)|Hitem:(.*)|h%[(.*)");
					lootItemIDs = lootItemIDs..itemID..",";
				end
			end
		end
		if(lootDropped ~= "") then
			if(VF_RD_ShouldLogData == true) then
				if(VF_RD_MobsType[mobName] == VF_RD_MobType_Boss) then
					local lootString = "BL-"..mobName.."="..lootItemIDs..";";
					if(string.find(VF_RaidDamageData[1][1], "Session:Loot:")) then
						local escapedLootString = "BL%-"..mobName.."="..lootItemIDs..";";
						if(not(string.find(VF_RaidDamageData[1][1], escapedLootString))) then
							VF_RaidDamageData[1][1] = VF_RaidDamageData[1][1]..lootString;
						end
					else
						table.insert(VF_RaidDamageData[1], 1, "Session:Loot:"..lootString);
					end
				end
			end
			VF_RD_DebugMessage(mobName.." dropped: "..lootDropped);--.." (ItemIDs: "..lootItemIDs..")");
		end
	end
end

VF_RD_OldLootFrame_OnShow = LootFrame_OnShow;
function VF_RD_NewLootFrame_OnShow()
	VF_RD_OldLootFrame_OnShow();
	if(VF_RaidDamage_IsSupported()) then
		VF_RD_ExecuteSub(VF_RD_SafeSaveLoot);
	end
end
LootFrame_OnShow = VF_RD_NewLootFrame_OnShow

else--if not string.find(GetBuildInfo(), "^1%.") then
	DEFAULT_CHAT_FRAME:AddMessage("ERROR! VF_RaidStats does not work on this WoW version! Only works on World of Warcraft Classic!");
	
	function VF_RaidDamage_OnLoad()

	end
	function VF_RaidDamage_OnEvent()

	end
	function VF_RaidDamage_OnUpdate()

	end
end--if string.find(GetBuildInfo(), "^1%.") then

VF_RD_LastUploadedData = "2015-02-08 23:59:59";
VF_RAIDSTATSVERSION = GetAddOnMetadata("VF_RaidStatsTBC", "Version");

if string.find(GetBuildInfo(), "^2%.") then

local OmenThreatLib = LibStub("Threat-2.0");
local GUIDRegistryLib = LibStub("LibGUIDRegistry-0.1");

VF_RS_MobType_Boss = 1;
VF_RS_MobType_Trash = 2;
VF_RS_MobType_Unknown = 3;

VF_RS_MobsType = {
	--Karazhan
	--Attumen the Huntsman
	["Attumen the Huntsman"] = VF_RS_MobType_Boss,
	["Midnight"] = VF_RS_MobType_Boss, --ATTUMEN ADD
	--Attumen the Huntsman
	--Moroes
	["Moroes"] = VF_RS_MobType_Boss,
	["Baroness Dorothea Millstipe"] = VF_RS_MobType_Boss, --MOROES ADD
	["Lady Catriona Von'Indi"] = VF_RS_MobType_Boss, --MOROES ADD
	["Lady Keira Berrybuck"] = VF_RS_MobType_Boss, --MOROES ADD
	["Baron Rafe Dreuger"] = VF_RS_MobType_Boss, --MOROES ADD
	["Lord Robin Daris"] = VF_RS_MobType_Boss, --MOROES ADD
	["Lord Crispin Ference"] = VF_RS_MobType_Boss, --MOROES ADD
	--Moroes
	["Maiden of Virtue"] = VF_RS_MobType_Boss,
	--The Opera Event
	["The Big Bad Wolf"] = VF_RS_MobType_Boss,
	--Romulo+Julianne
	["Romulo"] = VF_RS_MobType_Boss,
	["Julianne"] = VF_RS_MobType_Boss,
	--Romulo+Julianne
	--The Crone
	["The Crone"] = VF_RS_MobType_Boss,
	["Dorothee"] = VF_RS_MobType_Boss,
	["Tito"] = VF_RS_MobType_Boss,
	["Roar"] = VF_RS_MobType_Boss,
	["Strawman"] = VF_RS_MobType_Boss,
	["Tinhead"] = VF_RS_MobType_Boss,
	--The Crone
	--The Opera Event
	--The Curator
	["The Curator"] = VF_RS_MobType_Boss,
	--["Astral Flare"] = VF_RS_MobType_Boss, --CURATOR ADD
	--The Curator
	["Shade of Aran"] = VF_RS_MobType_Boss,
	--Terestian Illhoof
	["Terestian Illhoof"] = VF_RS_MobType_Boss,
	["Kil'rek"] = VF_RS_MobType_Boss, --Illhoof ADD
	--["Demon Chains"] = VF_RS_MobType_Boss, --Illhoof ADD
	--Terestian Illhoof
	["Netherspite"] = VF_RS_MobType_Boss,
	--Nightbane
	["Nightbane"] = VF_RS_MobType_Boss,
	--["Restless Skeleton"] = VF_RS_MobType_Boss, --NIGHTBANE ADD
	--Nightbane
	["Prince Malchezaar"] = VF_RS_MobType_Boss,
	
	--Gruul's Lair
	--High King Maulgar
	["High King Maulgar"] = VF_RS_MobType_Boss,
	["Krosh Firehand"] = VF_RS_MobType_Boss, --High King Maulgar ADD
	["Olm the Summoner"] = VF_RS_MobType_Boss, --High King Maulgar ADD
	["Kiggler the Crazed"] = VF_RS_MobType_Boss, --High King Maulgar ADD
	["Blindeye the Seer"] = VF_RS_MobType_Boss, --High King Maulgar ADD
	--High King Maulgar
	["Gruul the Dragonkiller"] = VF_RS_MobType_Boss,
	
	--Magtheridon's Lair
	["Magtheridon"] = VF_RS_MobType_Boss,
	--["Hellfire Channeler"] = VF_RS_MobType_Boss, --MAGTHERIDON ADD
	
	--Serpentshrine Cavern
	["Hydross the Unstable"] = VF_RS_MobType_Boss,
	["The Lurker Below"] = VF_RS_MobType_Boss,
	--Leotheras the Blind
	["Leotheras the Blind"] = VF_RS_MobType_Boss,
	["Shadow of Leotheras"] = VF_RS_MobType_Boss,
	--Leotheras the Blind
	--Fathom-Lord Karathress
	["Fathom-Lord Karathress"] = VF_RS_MobType_Boss,
	["Fathom-Guard Sharkkis"] = VF_RS_MobType_Boss, --ADD
	["Fathom-Guard Tidalvess"] = VF_RS_MobType_Boss, --ADD
	["Fathom-Guard Caribdis"] = VF_RS_MobType_Boss, --ADD
	--Fathom-Lord Karathress
	["Morogrim Tidewalker"] = VF_RS_MobType_Boss,
	--Lady Vashj
	["Lady Vashj"] = VF_RS_MobType_Boss,
	--["Enchanted Elemental"] = VF_RS_MobType_Boss, --ADD
	--["Tainted Elemental"] = VF_RS_MobType_Boss, --ADD
	--["Coilfang Elite"] = VF_RS_MobType_Boss, --ADD
	--["Coilfang Strider"] = VF_RS_MobType_Boss, --ADD
	--["Toxic Spore Bat"] = VF_RS_MobType_Boss, --ADD
	--Lady Vashj
	
	--Tempest Keep
	--Al'ar
	["Al'ar"] = VF_RS_MobType_Boss,
	["Ember of Al'ar"] = VF_RS_MobType_Boss, --ADD
	--Al'ar
	["Void Reaver"] = VF_RS_MobType_Boss,
	--High Astromancer Solarian
	["High Astromancer Solarian"] = VF_RS_MobType_Boss, 
	--["Solarium Agent"] = VF_RS_MobType_Boss, --ADD
	--["Solarium Priest"] = VF_RS_MobType_Boss, --ADD
	--High Astromancer Solarian
	--Kael'thas Sunstrider
	["Kael'thas Sunstrider"] = VF_RS_MobType_Boss,
	["Thaladred the Darkener"] = VF_RS_MobType_Boss, --ADD
	["Lord Sanguinar"] = VF_RS_MobType_Boss, --ADD
	["Grand Astromancer Capernian"] = VF_RS_MobType_Boss, --ADD
	["Master Engineer Telonicus"] = VF_RS_MobType_Boss, --ADD
	["Netherstrand Longbow"] = VF_RS_MobType_Boss, --WEAPON ADD
	["Staff of Disintegration"] = VF_RS_MobType_Boss, --WEAPON ADD
	["Cosmic Infuser"] = VF_RS_MobType_Boss, --WEAPON ADD
	["Infinity Blade"] = VF_RS_MobType_Boss, --WEAPON ADD
	["Warp Slicer"] = VF_RS_MobType_Boss, --WEAPON ADD
	["Devastation"] = VF_RS_MobType_Boss, --WEAPON ADD
	["Phaseshift Bulwark"] = VF_RS_MobType_Boss, --WEAPON ADD
	["Phoenix"] = VF_RS_MobType_Boss, --ADD
	["Phoenix Egg"] = VF_RS_MobType_Boss, --ADD
	--Kael'thas Sunstrider
	
	--Black Temple
	["High Warlord Naj'entus"] = VF_RS_MobType_Boss,
	["Supremus"] = VF_RS_MobType_Boss,
	--Shade of Akama
	["Shade of Akama"] = VF_RS_MobType_Boss,
	--["Ashtongue Defender"] = VF_RS_MobType_Boss, --ADD
	--["Ashtongue Elementalist"] = VF_RS_MobType_Boss, --ADD
	--["Ashtongue Rogue"] = VF_RS_MobType_Boss, --ADD
	--["Ashtongue Spiritbinder"] = VF_RS_MobType_Boss, --ADD
	--["Ashtongue Channeler"] = VF_RS_MobType_Boss, --ADD
	--["Ashtongue Sorcerer"] = VF_RS_MobType_Boss, --ADD
	--Shade of Akama
	--Teron Gorefiend
	["Teron Gorefiend"] = VF_RS_MobType_Boss,
	--["Shadowy Construct"] = VF_RS_MobType_Boss, --ADD
	--Teron Gorefiend
	["Gurtogg Bloodboil"] = VF_RS_MobType_Boss,
	--Reliquary of Souls
	["Essence of Anger"] = VF_RS_MobType_Boss, --BOSSPART
	["Essence of Desire"] = VF_RS_MobType_Boss, --BOSSPART
	["Essence of Suffering"] = VF_RS_MobType_Boss, --BOSSPART
	--["Enslaved Soul"] = VF_RS_MobType_Boss, --ADD
	--Reliquary of Souls
	["Mother Shahraz"] = VF_RS_MobType_Boss,
	--Illidari Council
	["Gathios the Shatterer"] = VF_RS_MobType_Boss, --BOSSPART
	["High Nethermancer Zerevor"] = VF_RS_MobType_Boss, --BOSSPART
	["Lady Malande"] = VF_RS_MobType_Boss, --BOSSPART
	["Veras Darkshadow"] = VF_RS_MobType_Boss, --BOSSPART
	--Illidari Council
	["Illidan Stormrage"] = VF_RS_MobType_Boss,

	--Mount Hyjal
	["Rage Winterchill"] = VF_RS_MobType_Boss,
	["Anetheron"] = VF_RS_MobType_Boss,
	["Kaz'rogal"] = VF_RS_MobType_Boss,
	["Azgalor"] = VF_RS_MobType_Boss,
	["Archimonde"] = VF_RS_MobType_Boss,
}

VF_RS_YellEvents_Start = 1;
VF_RS_YellEvents_Phase1 = 2;
VF_RS_YellEvents_Phase2 = 3;
VF_RS_YellEvents_Phase3 = 4;
VF_RS_YellEvents_Phase4 = 6;
VF_RS_YellEvents_Phase5 = 7;
VF_RS_YellEvents_Phase6 = 8;
VF_RS_YellEvents_Phase7 = 9;
VF_RS_YellEvents_Phase8 = 10;
VF_RS_YellEvents_Phase9 = 11;
VF_RS_YellEvents_End = 5;
VF_RS_YellEvents_NotImportant = 99;

VF_RS_YellEventsStr = {
	[VF_RS_YellEvents_Start] = "Start_Y",
	[VF_RS_YellEvents_Phase1] = "Phase1_Y",
	[VF_RS_YellEvents_Phase2] = "Phase2_Y",
	[VF_RS_YellEvents_Phase3] = "Phase3_Y",
	[VF_RS_YellEvents_End] = "Dead_Y",
}

VF_RS_YellEvents = {
	--Tempest Keep
	["Void Reaver"] = {
		["are marked for extermination"] = VF_RS_YellEvents_Start,
		["Systems... shutting..."] = VF_RS_YellEvents_End,
	},
	["High Astromancer Solarian"] = {
		["Tal anu'men no"] = VF_RS_YellEvents_Start,
		["You are hopelessly outmatched"] = VF_RS_YellEvents_Phase1,
		["crush your delusions of grandeur"] = VF_RS_YellEvents_Phase2,
		["fury of the cosmos itself"] = VF_RS_YellEvents_Phase3,
		--["with the VOID"] = VF_RS_YellEvents_Phase3,
		["warmth of the sun"] = VF_RS_YellEvents_End,
	},
	["Kael'thas Sunstrider"] = {
		["dependence made manifest after the Sunwell was destroyed"] = VF_RS_YellEvents_Start,
		["how your nerves hold up against the Darkener"] = VF_RS_YellEvents_Phase1,
		["none can withstand the might of the Blood"] = VF_RS_YellEvents_Phase2,
		["Capernian will see to it that your"] = VF_RS_YellEvents_Phase3,
		["proven worthy to test your skills against my"] = VF_RS_YellEvents_Phase4,
		["I have many weapons in my arsenal"] = VF_RS_YellEvents_Phase5,
		["would be unfair to make you fight all"] = VF_RS_YellEvents_Phase6,
		["must take matters into one's own hands"] = VF_RS_YellEvents_Phase7,
		["have planned will not be jeopardized"] = VF_RS_YellEvents_Phase8,
		["how you fare when your world is turned upside down"] = VF_RS_YellEvents_Phase9,
		["trouble staying grounded"] = VF_RS_YellEvents_Phase9,
		["For...Quel...thalas"] = VF_RS_YellEvents_End,
	},

	--Serpentshrine Cavern
	["Leotheras the Blind"] = {
		["my banishment ends"] = VF_RS_YellEvents_Start,
		["trifling elf"] = VF_RS_YellEvents_Phase2,
		["am the master"] = VF_RS_YellEvents_Phase3,
		["cannot kill me"] = VF_RS_YellEvents_End,
	},
	["Fathom-Lord Karathress"] = {
		["attention"] = VF_RS_YellEvents_Start,
		["excellency"] = VF_RS_YellEvents_End,
	},
	["Morogrim Tidewalker"] = {
		[", take you"] = VF_RS_YellEvents_Start,
		["currents of... Ageon"] = VF_RS_YellEvents_End,
	},
	["Hydross the Unstable"] = {
		["allow you to interfere"] = VF_RS_YellEvents_Start,
		["the poison..."] = VF_RS_YellEvents_Phase1,
		["much better"] = VF_RS_YellEvents_Phase2,
		["released..."] = VF_RS_YellEvents_End,--death in water form
		["are the disease"] = VF_RS_YellEvents_End,--death in poison form
	},
	["Lady Vashj"] = {
		["to the outsiders"] = VF_RS_YellEvents_Start,
		["split you from stem"] = VF_RS_YellEvents_Start,
		["Victory to Lord Illidan"] = VF_RS_YellEvents_Start,
		["spit on you"] = VF_RS_YellEvents_Start,
		["none standing"] = VF_RS_YellEvents_Phase2,
		["may want to take cover"] = VF_RS_YellEvents_Phase3,
		["Lord Illidan, I..."] = VF_RS_YellEvents_End,
	},

	--Black Temple
	["High Warlord Naj'entus"] = {
		["in the name of"] = VF_RS_YellEvents_Start,
		["Lord Illidan will..."] = VF_RS_YellEvents_End,
	},
	["Teron Gorefiend"] = {
		["the wheel of death has spun many times"] = VF_RS_YellEvents_Start,
		["The wheel..."] = VF_RS_YellEvents_End,
	},
	["Essence of Anger"] = {--Reliquary of Souls
		["I live"] = VF_RS_YellEvents_Start,
		["ignored"] = VF_RS_YellEvents_End,
	},
	["Essence of Desire"] = {--Reliquary of Souls
		["can have anything you desire"] = VF_RS_YellEvents_Start,
		["won't be far"] = VF_RS_YellEvents_End,
	},
	["Essence of Suffering"] = {--Reliquary of Souls
		["leave me alone"] = VF_RS_YellEvents_Start,
		["are all that await you"] = VF_RS_YellEvents_Start,--wrong, but needed for compatibility
		["what do I do"] = VF_RS_YellEvents_End,
	},
	["Gurtogg Bloodboil"] = {
		["crush you"] = VF_RS_YellEvents_Start,
		["Aaaahrg..."] = VF_RS_YellEvents_End,
	},
	["Mother Shahraz"] = {
		["pleasure?"] = VF_RS_YellEvents_Start,
		["toying with my emotions"] = VF_RS_YellEvents_Phase2,
		["I wasn't"] = VF_RS_YellEvents_End,
	},
	["Gathios the Shatterer"] = { --Illidari Council
		["have better things to do"] = VF_RS_YellEvents_Start,
		["You wish to test me?"] = VF_RS_YellEvents_Start,--wrong, but needed for compatibility,
		["Lord Illidan... I..."] = VF_RS_YellEvents_End,
	},
	["Veras Darkshadow"] = { --Illidari Council
		["You wish to test me?"] = VF_RS_YellEvents_Start,
		["have better things to do"] = VF_RS_YellEvents_Start,--wrong, but needed for compatibility
		["You got lucky"] = VF_RS_YellEvents_End,
	},
	["High Nethermancer Zerevor"] = { --Illidari Council
		["Such a crude language"] = VF_RS_YellEvents_Start,
		["oreindel'o"] = VF_RS_YellEvents_End,
	},
	["Lady Malande"] = { --Illidari Council
		["Flee"] = VF_RS_YellEvents_Start,
		["Destiny... awaits"] = VF_RS_YellEvents_End,
	},
	["Illidan Stormrage"] = {
		["You are not prepared!"] = VF_RS_YellEvents_Start,
		["will not be touched by rabble"] = VF_RS_YellEvents_Phase1,
		["into the eyes of the Betrayer"] = VF_RS_YellEvents_Phase2,
		["of the demon within"] = VF_RS_YellEvents_Phase3,
		["the hatred of ten thousand years"] = VF_RS_YellEvents_Phase4,
		["now you shall fall"] = VF_RS_YellEvents_Phase5,--Enrage
		["without the hunt"] = VF_RS_YellEvents_Phase6,--"Death"?
	},

	--Mount Hyjal
	["Rage Winterchill"] = {
		["final conquest has begun"] = VF_RS_YellEvents_Start,
		["have won this battle"] = VF_RS_YellEvents_End,
	},
	["Anetheron"] = {
		["defenders of a doomed world"] = VF_RS_YellEvents_Start,
		["ticking"] = VF_RS_YellEvents_End,
	},
	["Archimonde"] = {
		["resistance is insignificant"] = VF_RS_YellEvents_Start,
		["Mourn and lament the passing"] = VF_RS_YellEvents_Phase5,--Enrage
		["it cannot be"] = VF_RS_YellEvents_End,
	},
}
VF_RS_RaidZones = {
	["Karazhan"] = true,
	["Gruul's Lair"] = true,
	["Magtheridon's Lair"] = true,
	["Serpentshrine Cavern"] = true,
	["The Eye"] = true,
	["Hyjal Summit"] = true,
	["Black Temple"] = true,
	["Zul'Aman"] = true,
	["Sunwell Plateau"] = true,
}

VF_RS_BossMap = {
	--Karazhan
	["Midnight"] = "Attumen the Huntsman",
	["Baroness Dorothea Millstipe"] = "Moroes", --only 4 of theese 6 for Moroes will be needed to kill(only 4 random spawns)
	["Lady Catriona Von'Indi"] = "Moroes",
	["Lady Keira Berrybuck"] = "Moroes",
	["Baron Rafe Dreuger"] = "Moroes",
	["Lord Robin Daris"] = "Moroes",
	["Lord Crispin Ference"] = "Moroes",
	["Romulo"] = "Romulo and Julianne",
	["Julianne"] = "Romulo and Julianne",
	
	["The Crone"] = "Wizard of Oz",
	["Dorothee"] = "Wizard of Oz",
	["Tito"] = "Wizard of Oz",
	["Roar"] = "Wizard of Oz",
	["Strawman"] = "Wizard of Oz",
	["Tinhead"] = "Wizard of Oz",

	["Kil'rek"] = "Terestian Illhoof",

	--Gruul's Lair
	["Krosh Firehand"] = "High King Maulgar",
	["Olm the Summoner"] = "High King Maulgar",
	["Kiggler the Crazed"] = "High King Maulgar",
	["Blindeye the Seer"] = "High King Maulgar",

	--Serpentshrine Cavern
	["Shadow of Leotheras"] = "Leotheras the Blind",
	
	["Fathom-Guard Sharkkis"] = "Fathom-Lord Karathress",
	["Fathom-Guard Tidalvess"] = "Fathom-Lord Karathress",
	["Fathom-Guard Caribdis"] = "Fathom-Lord Karathress",

	--Tempest Keep
	["Ember of Al'ar"] = "Al'ar";
	
	--["Solarium Agent"] = "High Astromancer Solarian", --ADD
	--["Solarium Priest"] = "High Astromancer Solarian", --ADD

	["Thaladred the Darkener"] = "Kael'thas Sunstrider", --ADD
	["Lord Sanguinar"] = "Kael'thas Sunstrider", --ADD
	["Grand Astromancer Capernian"] = "Kael'thas Sunstrider", --ADD
	["Master Engineer Telonicus"] = "Kael'thas Sunstrider", --ADD
	["Netherstrand Longbow"] = "Kael'thas Sunstrider", --WEAPON ADD
	["Staff of Disintegration"] = "Kael'thas Sunstrider", --WEAPON ADD
	["Cosmic Infuser"] = "Kael'thas Sunstrider", --WEAPON ADD
	["Infinity Blade"] = "Kael'thas Sunstrider", --WEAPON ADD
	["Warp Slicer"] = "Kael'thas Sunstrider", --WEAPON ADD
	["Devastation"] = "Kael'thas Sunstrider", --WEAPON ADD
	["Phaseshift Bulwark"] = "Kael'thas Sunstrider", --WEAPON ADD
	["Phoenix"] = "Kael'thas Sunstrider", --ADD
	["Phoenix Egg"] = "Kael'thas Sunstrider", --ADD
	
	--Black Temple
	["Essence of Anger"] = "Reliquary of Souls",
	["Essence of Desire"] = "Reliquary of Souls",
	["Essence of Suffering"] = "Reliquary of Souls",
	
	["Gathios the Shatterer"] = "Illidari Council",
	["High Nethermancer Zerevor"] = "Illidari Council",
	["Lady Malande"] = "Illidari Council",
	["Veras Darkshadow"] = "Illidari Council",
}
VF_RS_BossParts = {
	["Romulo and Julianne"] = {[1] = "Romulo", [2] = "Julianne"},
	["Wizard of Oz"] = {[1] = "Dorothee", [2] = "Tito", [3] = "Roar", [4] = "Strawman", [5] = "Tinhead", [6] = "The Crone"},
	
	["Reliquary of Souls"] = {[1] = "Essence of Anger", [2] = "Essence of Desire", [3] = "Essence of Suffering"},
	["Illidari Council"] = {[1] = "Gathios the Shatterer", [2] = "High Nethermancer Zerevor", [3] = "Lady Malande", [4] = "Veras Darkshadow"},
}

function VF_RS_GetBossName(unitName)
	if(VF_RS_BossMap[unitName] ~= nil) then
		return VF_RS_BossMap[unitName];
	else
		return unitName;
	end
end
function VF_RS_GetBossParts(bossName)
	if(VF_RS_BossParts[bossName] ~= nil) then
		return VF_RS_BossParts[bossName];
	else
		return {[1] = bossName};
	end
end

function VF_RS_HaveStartYell(bossName)
	if(VF_RS_YellEvents[bossName] ~= nil) then
		for i, v in pairs(VF_RS_YellEvents[bossName]) do
			if(v == VF_RS_YellEvents_Start) then
				return true;
			end
		end
	end
	return false;
end

function VF_RS_OmenThreat_GetHighestThreat(player_guid)
	if not player_guid then
		return 0;
	end
	local maxVal = 0
	local maxGUID = nil
	local data = OmenThreatLib.threatTargets[player_guid];
	if not data then
		return 0;
	end
	for k, v in pairs(data) do
		if v > maxVal then
			maxVal = v
			maxGUID = k
		end
	end
	return maxVal, maxGUID
end
function VF_RS_OmenThreat_IsWipe()
	for player_guid, data in pairs(OmenThreatLib.threatTargets) do
		for target_guid, threatValue in pairs(data) do
			if(threatValue ~= 0) then
				local targetName = GUIDRegistryLib:GetName(target_guid);
				if(targetName ~= nil) then
					if(VF_RS_MobsType[targetName] == VF_RS_MobType_Boss) then
						return false;--Not wipe
					end
				end
			end
		end
	end
	for i = 1, GetNumRaidMembers() do
		if(UnitAffectingCombat("raid"..i) == true) then
			return false;
		end
	end
	return true;--Wipe
end
--ResetData
VF_RS_OldRecount_ResetData = Recount.ResetData;
function VF_RS_NewRecount_ResetData(name)
	VF_RS_ExecuteSub(VF_RS_LogRaidStats, "RCReset", VF_RS_GetTime_S());
	VF_RS_OldRecount_ResetData(name);
	VF_RS_ExecuteSub(VF_RS_ResetLastRecordedCacheForAccumulaters);
	VF_RS_DebugMessage("Recount resetted");
end
Recount.ResetData = VF_RS_NewRecount_ResetData

VF_RaidStats_Settings = {["DebugMode"] = false};
function VF_RS_DebugMessage(_Message)
	if(VF_RaidStats_Settings["DebugMode"] == true) then
		DEFAULT_CHAT_FRAME:AddMessage("VF_RS_Debug: ".._Message, 1, 1, 0);
	end
end
function VF_RS_Message(_Message)
	DEFAULT_CHAT_FRAME:AddMessage("VF_RS: ".._Message, 1, 1, 0);
end

function VF_RaidStats_OnLoad()
	this:RegisterEvent("VARIABLES_LOADED");
	this:RegisterEvent("CHAT_MSG_MONSTER_YELL");
	this:RegisterEvent("CHAT_MSG_MONSTER_EMOTE");
	this:RegisterEvent("CHAT_MSG_MONSTER_SAY");
	this:RegisterEvent("CHAT_MSG_MONSTER_WHISPER");
	this:RegisterEvent("CHAT_MSG_MONSTER_PARTY");
	this:RegisterEvent("COMBAT_LOG_EVENT_UNFILTERED");
	this:RegisterEvent("ZONE_CHANGED_NEW_AREA");
	this:RegisterEvent("UPDATE_INSTANCE_INFO");
	this:RegisterEvent("RAID_ROSTER_UPDATE");
	this:RegisterEvent("CHAT_MSG_LOOT");
	
	SlashCmdList["RAIDSTATS_CLEAR"] = VF_RS_ClearData;
	SlashCmdList["RAIDSTATS_HELP"] = VF_RS_Help;
	SlashCmdList["RAIDSTATS_PRINTRECORDED"] = VF_RS_PrintRecorded;

	SLASH_RAIDSTATS_CLEAR1 = "/VFRS_Clear";
	SLASH_RAIDSTATS_CLEAR2 = "/RaidStats_Clear";
	SLASH_RAIDSTATS_CLEAR3 = "/VFRSClear";
	SLASH_RAIDSTATS_HELP1 = "/VFRS";
	SLASH_RAIDSTATS_HELP2 = "/VFRS_Help";
	SLASH_RAIDSTATS_PRINTRECORDED1 = "/VFRS_PrintRecorded";
end

function VF_RS_Help()
	VF_RS_Message("VF RaidStatsTBC Version = "..VF_RaidStatsVersion);
	VF_RS_Message("/VFRS_PrintRecorded - Prints all the boss fights that has been recorded so far(only counts actual boss kills)");
	VF_RS_Message("/VFRS_Clear - clears all data from all sessions, this removes all data saved in SavedVariables/VF_RaidStatsTBC.lua");
	VF_RS_Message("/VFRS - shows all commands");
end

function VF_RS_ClearData()
	VF_RaidStatsData = {};
	VF_RS_LastRecorded = {};
	VF_RS_CreateNewSession();
	VF_RS_Message("Cleared all saved data!");
end

function VF_RS_PrintRecorded()
	local killCount = {};
	local lastWasDead = nil;
	for i, session in pairs(VF_RaidStatsData) do
		for i, data in pairs(session) do
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
	for i, bossName in pairs(killCount) do
		bossKills = bossKills..bossName..", "
	end
	VF_RS_Message(bossKills);
end

function VF_RS_CreateNewSession()
	table.insert(VF_RaidStatsData, 1, {});
	local currentDate = date("!%Y-%m-%d %X");
	local currentZone = GetZoneText();
	local currentPlayer = UnitName("player");
	local realmName = GetRealmName();
	local startTime = VF_RS_GetTime_S();
	local serverHour, serverMinute = GetGameTime();
	local sessionInfo = "Session:Info:Date="..currentDate..",GameTime="..serverHour..":"..serverMinute..",Time="..startTime..",Realm="..realmName..",Player="..currentPlayer..",AddonVersion="..VF_RaidStatsVersion..",";
	if(currentZone ~= nil and currentZone ~= "") then
		sessionInfo = sessionInfo.."Zone="..currentZone..",";
	end
	table.insert(VF_RaidStatsData[1], 1, sessionInfo);
	VF_RS_SaveInstanceInfo();
	VF_RS_RaidMembersChanged = nil;
	VF_RS_DebugMessage("Created new Session");
end

function VF_ParseDate(dateStr)
	local _, _, currYear, currMonth, currDay, _ = string.find(dateStr, "(.*)-(.*)-(.*) (.*)");
	return {Year = tonumber(currYear), Month = tonumber(currMonth), Day = tonumber(currDay)};
end

function VF_RS_CleanupSessions()
	VF_RS_DebugMessage("Started session cleanup");
	local currentDateStr = date("!%Y-%m-%d %X");
	local currentDate = VF_ParseDate(currentDateStr);
	local currentDateComparerInt = currentDate.Year * 365 + currentDate.Month * 30 + currentDate.Day;
	for i, session in pairs(VF_RaidStatsData) do
		local sessionTableSize = table.getn(session);
		if(sessionTableSize > 0) then
			local sessionInfo = session[sessionTableSize];
			local sessionInterestingStatus = 0;
			local _, _, dateTimeStr, _ = string.find(sessionInfo, "Session:Info:Date=(.*),Time=(.*)");
			if(dateTimeStr ~= nil) then
				local sessionDate = VF_ParseDate(dateTimeStr);
				local sessionDateComparerInt = sessionDate.Year * 365 + sessionDate.Month * 30 + sessionDate.Day;
				if(currentDateComparerInt - sessionDateComparerInt < 7) then
					sessionInterestingStatus = 1;
				else
					sessionInterestingStatus = -1;
				end
			else
				dateTimeStr = "ERROR";
			end
			if(sessionInterestingStatus == -1 or dateTimeStr == "ERROR") then
				VF_RaidStatsData[i] = nil;
				VF_RS_DebugMessage("Session("..dateTimeStr..") removed because of too old.");
			elseif(sessionInterestingStatus == 0 and sessionTableSize > 1) then
				VF_RaidStatsData[i] = {[1] = sessionInfo};
				VF_RS_DebugMessage("Session("..dateTimeStr..") cleaned because of empty.");
			end
		end
	end
	for i, errorData in pairs(VF_RS_ErrorLog) do
		local errorDate = VF_ParseDate(errorData.Date);
		local errorDateComparerInt = errorDate.Year * 365 + errorDate.Month * 30 + errorDate.Day;
		if(currentDateComparerInt - errorDateComparerInt > 7) then
			VF_RS_ErrorLog[i] = nil;
		end
	end
	VF_RS_DebugMessage("Done with cleanup of sessions");
end

function VF_RS_DetermineLogging()
	local currZone = GetZoneText();
	if(currZone ~= nil) then
		if(VF_RS_RaidZones[currZone] ~= nil) then
			return true;
		end
	end
	for i = 1, GetNumRaidMembers() do
		local name, rank, subgroup, level, class, fileName, zone, online, isDead = GetRaidRosterInfo(i);
		if(zone ~= nil) then
			if(VF_RS_RaidZones[zone] ~= nil) then
				return true;
			end
		end
	end
	return false;
end

function VF_RS_CombatLogUnfiltered(_,timestamp, eventtype, srcGUID, srcName, srcFlags, dstGUID, dstName, dstFlags, ...)
	if(eventtype == "UNIT_DIED" or eventtype == "UNIT_DESTROYED") then
		VF_RS_DebugMessage(srcName.." died");
	end
end

function VF_RS_AssertSpecialSettings()
	Recount.db.profile.Filters.Data["Nontrivial"] = true; --Force data collection for Nontriival units(needed for boss adds etc)
end

function VF_RaidStats_SafeOnEvent(event, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9)
	local eventText = arg1;
	if(event=="VARIABLES_LOADED") then
		VF_RaidStatsVersion = VF_RAIDSTATSVERSION;
		if(VF_RaidStats_Settings == nil) then
			VF_RaidStats_Settings = {};
		end
		if(VF_RaidStatsData == nil) then
			VF_RaidStatsData = {};
		end
		if(VF_RS_ErrorLog == nil) then
			VF_RS_ErrorLog = {};
		end
		VF_RS_CleanupSessions();
		VF_RS_CreateNewSession();
		DEFAULT_CHAT_FRAME:AddMessage("VF_RaidStats(/VFRS) version "..VF_RaidStatsVersion.." loaded!", 1, 1, 0);
		VF_RS_AssertSpecialSettings();
	elseif(event == "ZONE_CHANGED_NEW_AREA") then
		local currentZone = GetZoneText();
		if(string.find(VF_RaidStatsData[1][1], "Session:Info:")) then
			VF_RaidStatsData[1][1] = VF_RaidStatsData[1][1].."Zone="..currentZone..",";
		else
			table.insert(VF_RaidStatsData[1], 1, "Session:Info:Zone="..currentZone..",");
		end
	elseif(event == "CHAT_MSG_MONSTER_YELL") then
		local monsterName = arg2;
		if(VF_RS_MobsType[monsterName] == VF_RS_MobType_Boss) then
			local specialBoss = VF_RS_GetBossName(monsterName);
			local yellEvents = VF_RS_YellEvents[monsterName];
			if(yellEvents ~= nil) then
				local foundBossYell = false;
				for triggerText, yellEvent in pairs(yellEvents) do
					if(string.find(eventText, triggerText)) then
						if(yellEvent == VF_RS_YellEvents_Start and VF_RS_LastKilledBoss == specialBoss) then
							VF_RS_LastKilledBoss = "";
						end
						if(yellEvent ~= VF_RS_YellEvents_NotImportant) then
							local yellEventStr = VF_RS_YellEventsStr[yellEvent];
							local yellReason = yellEventStr.."="..monsterName;
							if(specialBoss ~= monsterName) then
								if(yellEvent == VF_RS_YellEvents_Start) then
									yellReason = yellReason..";"..yellEventStr.."="..specialBoss;
								elseif(yellEvent == VF_RS_YellEvents_End) then
									if(VF_RS_CurrentBossData[monsterName] ~= nil) then
										VF_RS_CurrentBossData[monsterName] = {};
										VF_RS_CurrentBossData[monsterName].Dead = true;
									end
									if(VF_RS_IsCurrentBossKilled() == true) then
										yellReason = yellReason..";"..yellEventStr.."="..specialBoss;
									end
								end
							end
							VF_RS_DebugMessage(yellReason.."(YellEvent)");
							VF_RS_LogRaidStats(yellReason, VF_RS_GetTime_S());
							VF_RS_NextUpdateTime = VF_RS_GetTime_S() + 1;
						else
							table.insert(VF_RaidStatsData[1], 1, "Session:Debug:"..monsterName.."=KnownYell-"..eventText);
						end
						foundBossYell = true;
					end
				end
				if(foundBossYell == false) then
					table.insert(VF_RaidStatsData[1], 1, "Session:Debug:"..monsterName.."=Yell-"..eventText..":"..VF_RS_GetTime_S());
				end
			else
				if(VF_RS_CurrentBoss == "") then
					local startReason = "Start_U="..monsterName;
					if(specialBoss ~= monsterName) then
						startReason = startReason..";Start_U="..specialBoss;
					end
					VF_RS_DebugMessage(startReason.."(UnknownYellEvent)");
					VF_RS_LogRaidStats(startReason, VF_RS_GetTime_S());
				end
				table.insert(VF_RaidStatsData[1], 1, "Session:Debug:"..monsterName.."=Yell-"..eventText..":"..VF_RS_GetTime_S());
			end
		end
	elseif(event == "CHAT_MSG_MONSTER_EMOTE") then
		local monsterName = arg2;
		if(VF_RS_MobsType[monsterName] == VF_RS_MobType_Boss) then
			table.insert(VF_RaidStatsData[1], 1, "Session:Debug:"..monsterName.."=Emote-"..eventText..":"..VF_RS_GetTime_S());
		end
	elseif(event == "CHAT_MSG_MONSTER_SAY") then
		local monsterName = arg2;
		if(VF_RS_MobsType[monsterName] == VF_RS_MobType_Boss) then
			table.insert(VF_RaidStatsData[1], 1, "Session:Debug:"..monsterName.."=Say-"..eventText..":"..VF_RS_GetTime_S());
		end
	elseif(event == "CHAT_MSG_MONSTER_WHISPER") then
		local monsterName = arg2;
		if(VF_RS_MobsType[monsterName] == VF_RS_MobType_Boss) then
			table.insert(VF_RaidStatsData[1], 1, "Session:Debug:"..monsterName.."=Whisper-"..eventText..":"..VF_RS_GetTime_S());
		end
	elseif(event == "CHAT_MSG_MONSTER_PARTY") then
		local monsterName = arg2;
		if(VF_RS_MobsType[monsterName] == VF_RS_MobType_Boss) then
			table.insert(VF_RaidStatsData[1], 1, "Session:Debug:"..monsterName.."=Party-"..eventText..":"..VF_RS_GetTime_S());
		end
	elseif(event == "UPDATE_INSTANCE_INFO") then
		if(VF_RS_SaveInstanceInfoBool == true) then
			for i = 1, GetNumSavedInstances() do
				local raidName, raidID, raidRemaining = GetSavedInstanceInfo(i);
				if(string.find(VF_RaidStatsData[1][1], "Session:Info:")) then
					VF_RaidStatsData[1][1] = VF_RaidStatsData[1][1].."RaidID"..i.."="..raidName.."-"..raidID.."-"..raidRemaining..",";
				else
					table.insert(VF_RaidStatsData[1], 1, "Session:Info:RaidID"..i.."="..raidName.."-"..raidID.."-"..raidRemaining..",");
				end
			end
			VF_RS_SaveInstanceInfoBool = false;
		end
	elseif(event == "COMBAT_LOG_EVENT_UNFILTERED") then
		local timestamp, eventtype, srcGUID, srcName, srcFlags, dstGUID, dstName, dstFlags = arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9
		if(eventtype == "UNIT_DIED" or eventtype == "UNIT_DESTROYED") then
			local mobName = dstName;
			if(VF_RS_MobsType[mobName] == VF_RS_MobType_Boss) then
				local deadReason = "Dead_C="..mobName;
				VF_RS_DebugMessage("Dead_C="..mobName.."(CombatMsgDeath)");
				local specialBoss = VF_RS_GetBossName(mobName);
				if(specialBoss ~= mobName) then
					if(VF_RS_CurrentBossData[mobName] ~= nil) then
						VF_RS_CurrentBossData[mobName] = {};
						VF_RS_CurrentBossData[mobName].Dead = true;
					end
					if(VF_RS_IsCurrentBossKilled() == true) then
						deadReason = deadReason..";Dead_C="..specialBoss;
						VF_RS_DebugMessage("Dead_C="..specialBoss.."(CombatMsgDeath)");
					end
				end
				VF_RS_LogRaidStats(deadReason, VF_RS_GetTime_S());
			end
		end
	elseif(event == "RAID_ROSTER_UPDATE") then
		local oldRaidMembers = VF_RS_RaidMembers;
		VF_RS_RaidMembers = VF_RS_GetRaidMembers();
		if(VF_RS_RaidMembers ~= oldRaidMembers and VF_RS_RaidMembers ~= "") then
			VF_RS_RaidMembersChanged = VF_RS_GetTime_S();
		end
	end
end

--This should never be used to try call functions that return values
function VF_RS_ExecuteSub(func, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9)
	local retOK, errorText = pcall(func, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9);
	if(retOK) then
	
	else
		if(table.getn(VF_RS_ErrorLog) > 1024) then
			VF_RS_ErrorLog[table.getn(VF_RS_ErrorLog)] = nil;
		end
		local newError = {};
		newError.Date = date("!%Y-%m-%d %X");
		newError.Time = VF_RS_GetTime_S();
		newError.ErrorText = errorText;
		
		local latestError = VF_RS_ErrorLog[1];
		if(latestError ~= nil) then
			if(latestError.Time == newError.Time and string.find(latestError.ErrorText, newError.ErrorText)) then
				latestError.ErrorText = "VF_DUPE->"..latestError.ErrorText;
				newError = nil;
			end
		end
		if(newError ~= nil) then
			table.insert(VF_RS_ErrorLog, 1, newError);
			VF_RS_Message("There was an error, please take a screenshot of the ErrorMessage and send to Dilatazu! ErrorMessage: "..newError.ErrorText);
		end
	end
end

function VF_RaidStats_OnEvent()
	VF_RS_ExecuteSub(VF_RaidStats_SafeOnEvent, event, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9);
end

VF_RS_SaveInstanceInfoBool = false;
function VF_RS_SaveInstanceInfo()
	VF_RS_SaveInstanceInfoBool = true;
	RequestRaidInfo();
end


VF_RaidStatsData = {};
VF_RS_ErrorLog = {};

--[[VF_RaidStatsDataTemplate = {
[0] = "47323:TT:928,1,,,1;102,1,1,23,2;",
[1] = "",
};--]]

VF_RS_DataIndex_Damage = 0;
VF_RS_DataIndex_EffectiveHeal = 1;
VF_RS_DataIndex_DamageTaken = 2;
VF_RS_DataIndex_OverHeal = 3;
VF_RS_DataIndex_Death = 4;
VF_RS_DataIndex_Dispels = 5;
VF_RS_DataIndex_CCBreaks = 6;
VF_RS_DataIndex_Interrupts = 7;
VF_RS_DataIndex_Dispelled = 8;
VF_RS_DataIndex_Threat = 9;
VF_RS_DataIndex_FriendlyDamage = 10;
VF_RS_DataIndex_EffectiveHealRecv = 11;
VF_RS_DataIndex_OverHealRecv = 12;

VF_RS_LastRecorded = {};

function VF_RS_PeekDeltaChange(_Value, _UnitUniqueID, _DataIndex)
	if(VF_RS_LastRecorded[_UnitUniqueID] == nil) then
		return _Value;
	end
	if(VF_RS_LastRecorded[_UnitUniqueID][_DataIndex] == nil) then ---error
		return _Value;
	end
	return _Value - VF_RS_LastRecorded[_UnitUniqueID][_DataIndex].Value;
end

function VF_RS_GenerateDeltaChange(_Value, _UnitUniqueID, _DataIndex, _CurrTime)
	if(VF_RS_LastRecorded[_UnitUniqueID][_DataIndex] == nil) then
		VF_RS_LastRecorded[_UnitUniqueID][_DataIndex] = {Value = _Value; Time = _CurrTime;}
		if(_Value == 0) then
			return "";
		end
		return _Value;
	end
	local deltaValue = _Value - VF_RS_LastRecorded[_UnitUniqueID][_DataIndex].Value;
	if(deltaValue ~= 0) then
		VF_RS_LastRecorded[_UnitUniqueID][_DataIndex].Value = _Value;
		VF_RS_LastRecorded[_UnitUniqueID][_DataIndex].Time = _CurrTime;
	end
	if(deltaValue == 0) then
		return "";
	end
	return deltaValue;
end

function VF_RS_ResetLastRecordedCacheForAccumulaters()
	for i, v in pairs(VF_RS_LastRecorded) do
		local oldData = VF_RS_LastRecorded[i];
		VF_RS_LastRecorded[i] = {};
		VF_RS_LastRecorded[i]["UnitID"] = oldData["UnitID"];
		--save data that doesnt get accumulated
		VF_RS_LastRecorded[i][VF_RS_DataIndex_Threat] = oldData[VF_RS_DataIndex_Threat];
		--save data that doesnt get accumulated
	end
end

function VF_RS_DetectBossStart()
	if(VF_RS_CurrentBoss == "") then
		for recountID, unitData in pairs(Recount.db2.combatants) do
			local unitFightData = unitData.Fights["OverallData"];
			local unitName = unitData.Name;
			local unitUniqueID = recountID;
			if(unitName == nil) then
				unitName = recountID;
			end
			if(unitFightData ~= nil and unitUniqueID ~= nil) then
				if(VF_RS_MobsType[unitName] == VF_RS_MobType_Boss) then
					local bossName = VF_RS_GetBossName(unitName);
					if(VF_RS_LastKilledBoss ~= bossName) then
						if(VF_RS_PeekDeltaChange(unitFightData.Damage or 0, unitUniqueID, VF_RS_DataIndex_Damage) > 0 or VF_RS_PeekDeltaChange(unitFightData.DamageTaken or 0, unitUniqueID, VF_RS_DataIndex_DamageTaken) > 0 or VF_RS_PeekDeltaChange(unitFightData.Healing or 0, unitUniqueID, VF_RS_DataIndex_EffectiveHeal) > 0) then
							--Boss Fight start
							local startReason = "Start_C="..unitName;
							if(bossName ~= unitName) then
								startReason = startReason..";Start_C="..bossName;
							end
							VF_RS_DebugMessage(startReason.."(CombatMsgScan)");
							VF_RS_LogRaidStats(startReason, VF_RS_GetTime_S());
							VF_RS_NextUpdateTime = VF_RS_GetTime_S() + 1;
							return;
						end
					end
				end
			end
		end
		
		for i = 1, 40 do
			local currUnitID = "raid"..i.."target";
			local unitTarget = UnitName(currUnitID);
			if(unitTarget ~= nil) then
				if(VF_RS_MobsType[unitTarget] == VF_RS_MobType_Boss) then
					local bossName = VF_RS_GetBossName(unitTarget);
					if(VF_RS_LastKilledBoss ~= bossName and VF_RS_HaveStartYell(bossName) ~= true) then
						if(UnitHealth(currUnitID) ~= UnitHealthMax(currUnitID) and UnitHealth(currUnitID) ~= 0) then
							local startReason = "Start_T="..unitTarget;
							if(bossName ~= unitTarget) then
								startReason = startReason..";Start_T="..bossName;
							end
							VF_RS_DebugMessage(startReason.."(TargetHealthScan)");
							VF_RS_LogRaidStats(startReason, VF_RS_GetTime_S());
							VF_RS_NextUpdateTime = VF_RS_GetTime_S() + 1;
							return;
						end
					end
				end
			end
		end
	end
end

function VF_RS_DetectBossEnd()
	if(VF_RS_CurrentBoss ~= "") then
		local bossKilled = true;
		local deadReason = nil;
		for addName, addData in pairs(VF_RS_CurrentBossData) do
			if(addData.Dead ~= true) then
				if(addData.Health ~= nil and addData.MaxHealth ~= nil and addData.Health <= 0 and addData.MaxHealth > 1000) then
					addData.Dead = true;
					if(deadReason == nil) then
						deadReason = "Dead_T="..addName;
					else
						deadReason = deadReason..";Dead_T="..addName;
					end
					VF_RS_DebugMessage("Dead_T="..addName.."(TargetHealthScan)");
				else
					bossKilled = false;
				end
			end
		end
		
		if(bossKilled == true) then
			if(deadReason ~= "Dead_T="..VF_RS_CurrentBoss) then
				if(deadReason ~= nil) then
					deadReason = deadReason..";Dead_T="..VF_RS_CurrentBoss;
				end
				VF_RS_DebugMessage("Dead_T="..VF_RS_CurrentBoss.."(TargetHealthScan)");
			end
		end
		if(deadReason ~= nil) then
			VF_RS_LogRaidStats(deadReason, VF_RS_GetTime_S());
		end
	end
end
VF_RS_RaidMembers = "";
VF_RS_RaidMembersChanged = nil;
VF_RS_UnitIDCounter = 1;
VF_RS_PrecisionLoggingInterval = 10;

VF_RS_CurrentBoss = "";
VF_RS_CurrentBossData = {};
VF_RS_CurrentBoss_Health = 0;
VF_RS_CurrentBoss_MaxHealth = 0;
VF_RS_LastBossData = 0;
VF_RS_LastKilledBoss = "";
VF_RS_BossStartTime = 0;

function VF_RS_IsCurrentBossKilled()
	local bossKilled = true;
	for addName, addData in pairs(VF_RS_CurrentBossData) do
		if(addData.Dead ~= true) then
			bossKilled = false;
			break;
		end
	end
	return bossKilled;
end

function VF_RS_GetTime_S()
	local currTime = GetTime();
	local currTime_S = math.floor(currTime);
	return currTime_S;
end

function VF_RS_UpdateBossHealth()
	if(VF_RS_CurrentBoss == "") then
		VF_RS_CurrentBoss_Health = 0;
		VF_RS_CurrentBoss_MaxHealth = 0;
	--[[elseif(UnitName("target") == VF_RD_CurrentBoss) then
		VF_RD_CurrentBoss_Health = UnitHealth("target");
		VF_RD_CurrentBoss_MaxHealth = UnitHealthMax("target");
	elseif(UnitName("targettarget") == VF_RD_CurrentBoss) then
		VF_RD_CurrentBoss_Health = UnitHealth("targettarget");
		VF_RD_CurrentBoss_MaxHealth = UnitHealthMax("targettarget");--]]
	else
		for i = 1, 40 do
			local currUnitID = "raid"..i.."target";
			local currName = UnitName(currUnitID);
			if(currName ~= nil) then
				if(VF_RS_CurrentBossData[currName] ~= nil) then
					VF_RS_CurrentBossData[currName].Health = UnitHealth(currUnitID);
					VF_RS_CurrentBossData[currName].MaxHealth = UnitHealthMax(currUnitID);
				end
				if(VF_RS_GetBossName(currName) == VF_RS_CurrentBoss) then
					VF_RS_CurrentBoss_Health = UnitHealth(currUnitID);
					VF_RS_CurrentBoss_MaxHealth = UnitHealthMax(currUnitID);
				end
			end
		end
	end
end

function VF_RS_GetRaidMembers()
	local raidMembers = "";
	for i = 1, 40 do
		local unitUniqueID = UnitName("raid"..i);
		if(unitUniqueID ~= nil and VF_RS_LastRecorded[unitUniqueID] ~= nil) then
			local currID = VF_RS_LastRecorded[unitUniqueID]["UnitID"];
			if(currID ~= nil) then
				raidMembers = raidMembers.." "..currID;
			end
		end
	end
	if(raidMembers ~= "") then
		raidMembers = "R"..raidMembers;
	end
	return raidMembers;	
end

function VF_RS_GetUniqueID(_Name)
	--return GUIDRegistryLib:GetGUID(unitName);
	return _Name;
end

VF_RS_ErroredGUIDs = {}; --To prevent this from happening too often.
function VF_RS_LogRaidStats(_Reason, _Time)
	local totalPlayersResult = "";
	local sessionDebugResult = "";
	for unitRecountID, unitData in pairs(Recount.db2.combatants) do 
		local unitFightData = unitData.Fights["OverallData"];
		local unitUniqueID = unitRecountID;--VF_RS_GetUniqueID(unitData.Name);
		local unitName = unitData.Name;
		if(unitName == nil) then
			VF_RS_DebugMessage("Name was missing for "..unitRecountID);
			local newError = {};
			newError.Date = date("!%Y-%m-%d %X");
			newError.Time = VF_RS_GetTime_S();
			newError.ErrorText = "Name was missing for "..unitRecountID;
			table.insert(VF_RS_ErrorLog, 1, newError);
			VF_RS_ErroredGUIDs[unitRecountID] = 1; --To prevent this from happening too often.
			unitData.Name = unitRecountID; 
			unitName = unitData.Name;
		end
		--[[if(unitGUID == nil) then
			unitGUID = VF_RS_GetUniqueID(unitName);
			if(unitGUID ~= nil and VF_RS_ErroredGUIDs[unitGUID] == nil) then --To prevent this from happening too often.
				VF_RS_DebugMessage("GUID was missing for "..unitName.." but was looked up to be: "..unitGUID);
				local newError = {};
				newError.Date = date("!%Y-%m-%d %X");
				newError.Time = VF_RS_GetTime_S();
				newError.ErrorText = "GUID was missing for "..unitName.." but was looked up to be: "..unitGUID;
				table.insert(VF_RS_ErrorLog, 1, newError);
				VF_RS_ErroredGUIDs[unitGUID] = 1; --To prevent this from happening too often.
			end
		end--]]
		if(unitFightData ~= nil and unitUniqueID ~= nil and unitName ~= "No One") then
			if(VF_RS_LastRecorded[unitUniqueID] == nil) then
				VF_RS_LastRecorded[unitUniqueID] = {};
				VF_RS_LastRecorded[unitUniqueID]["UnitID"] = VF_RS_UnitIDCounter;
				VF_RS_LastRecorded[unitUniqueID]["UnitName"] = unitName;
				totalPlayersResult = totalPlayersResult..unitUniqueID.."="..VF_RS_LastRecorded[unitUniqueID]["UnitID"]..",";
				local thisUnitDebugInfo = unitName.."="..unitUniqueID;
				if(unitData.GUID ~= nil) then
					thisUnitDebugInfo = thisUnitDebugInfo.."="..unitData.GUID;
				end
				sessionDebugResult = sessionDebugResult..thisUnitDebugInfo..",";
				VF_RS_UnitIDCounter = VF_RS_UnitIDCounter + 1;
			end
			local unitID = VF_RS_LastRecorded[unitUniqueID]["UnitID"];
			if(unitData.type == "Pet") then
				if(unitData.Owner) then
					local unitOwnerUniqueID = unitData.Owner; --Owner is of RecountID style
					if(unitOwnerUniqueID and VF_RS_LastRecorded[unitOwnerUniqueID] ~= nil) then
						if(VF_RS_LastRecorded[unitOwnerUniqueID]["pets"] == nil) then
							VF_RS_LastRecorded[unitOwnerUniqueID]["pets"] = {};
						end
						if(VF_RS_LastRecorded[unitOwnerUniqueID]["pets"][unitID] == nil) then
							VF_RS_LastRecorded[unitOwnerUniqueID]["pets"][unitID] = 1;
							totalPlayersResult = totalPlayersResult.."VF_PET_"..unitID.."_"..unitUniqueID.."_"..unitOwnerUniqueID.."="..unitID..",";
						end
					end
				end
			end
			local dmg, effHeal, dmgTaken = unitFightData.Damage or 0, unitFightData.Healing or 0, unitFightData.DamageTaken or 0;
			local overHeal, death, friendlydmg = unitFightData.Overhealing or 0, unitFightData.DeathCount or 0, unitFightData.FDamage or 0;
			local dispels, ccbreaks, interrupts, dispelled = unitFightData.Dispels or 0, unitFightData.CCBreak or 0, unitFightData.Interrupts or 0, unitFightData.Dispelled or 0;
			local effHealRecv, overHealRecv = unitFightData.HealingTaken or 0, 0; --not 100% correct

			dmg = VF_RS_GenerateDeltaChange(dmg, unitUniqueID, VF_RS_DataIndex_Damage, _Time);
			effHeal = VF_RS_GenerateDeltaChange(effHeal, unitUniqueID, VF_RS_DataIndex_EffectiveHeal, _Time);
			dmgTaken = VF_RS_GenerateDeltaChange(dmgTaken, unitUniqueID, VF_RS_DataIndex_DamageTaken, _Time);
			overHeal = VF_RS_GenerateDeltaChange(overHeal, unitUniqueID, VF_RS_DataIndex_OverHeal, _Time);
			death = VF_RS_GenerateDeltaChange(death, unitUniqueID, VF_RS_DataIndex_Death, _Time);
			friendlydmg = VF_RS_GenerateDeltaChange(friendlydmg, unitUniqueID, VF_RS_DataIndex_FriendlyDamage, _Time);
			dispels = VF_RS_GenerateDeltaChange(dispels, unitUniqueID, VF_RS_DataIndex_Dispels, _Time);
			ccbreaks = VF_RS_GenerateDeltaChange(ccbreaks, unitUniqueID, VF_RS_DataIndex_CCBreaks, _Time);
			interrupts = VF_RS_GenerateDeltaChange(interrupts, unitUniqueID, VF_RS_DataIndex_Interrupts, _Time);
			dispelled = VF_RS_GenerateDeltaChange(dispelled, unitUniqueID, VF_RS_DataIndex_Dispelled, _Time);
			effHealRecv = VF_RS_GenerateDeltaChange(effHealRecv, unitUniqueID, VF_RS_DataIndex_EffectiveHealRecv, _Time);
			overHealRecv = VF_RS_GenerateDeltaChange(overHealRecv, unitUniqueID, VF_RS_DataIndex_OverHealRecv, _Time);


			if(dmg ~= "" or effHeal ~= "" or dmgTaken ~= "" or overHeal ~= "" or death ~= "" or friendlydmg ~= "" or dispels ~= "" or ccbreaks ~= "" or interrupts ~= "" or dispelled ~= "") then
				if(VF_RS_MobsType[unitName] == VF_RS_MobType_Boss) then
					local specialBoss = VF_RS_GetBossName(unitName);
					if(VF_RS_CurrentBoss ~= specialBoss and VF_RS_LastKilledBoss ~= specialBoss) then
						if(_Reason ~= "") then
							if(string.find(_Reason, "Start_C=") or string.find(_Reason, "Start_T=")) then
								
							else
								_Reason = _Reason..";Start_S="..specialBoss;
							end
						else
							_Reason = "Start_S="..specialBoss;
						end
						VF_RS_DebugMessage("Start_S="..specialBoss.."(RC_Start)");
						VF_RS_CurrentBoss = specialBoss;
						local bossParts = VF_RS_GetBossParts(specialBoss);
						VF_RS_CurrentBossData = {};
						for i, v in pairs(bossParts) do
							VF_RS_CurrentBossData[v] = {Health = 0, MaxHealth = 0};
						end
					elseif(death ~= "" and VF_RS_CurrentBoss == specialBoss) then
						if(_Reason ~= "") then
							_Reason = _Reason..";Dead_S="..unitName;
						else
							_Reason = "Dead_S="..unitName;
						end
						VF_RS_DebugMessage("Dead_S="..unitName.."(RC_Dead)");
						if(specialBoss ~= unitName) then
							if(VF_RS_CurrentBossData[unitName] == nil) then
								VF_RS_CurrentBossData[unitName] = {};
							end
							VF_RS_CurrentBossData[unitName].Dead = true;
							local bossParts = VF_RS_GetBossParts(specialBoss);
							local bossKilled = true;
							for i, v in pairs(bossParts) do
								if(VF_RS_CurrentBossData[v] == nil or VF_RS_CurrentBossData[v].Dead ~= true) then
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
								VF_RS_DebugMessage("Dead_S="..specialBoss.."(RC_Dead)");
							end
						end
					end
					VF_RS_LastBossData = _Time;
				end
				local threatValue, threatTarget = VF_RS_OmenThreat_GetHighestThreat(GUIDRegistryLib:GetGUID(unitName));
				if(threatValue ~= 0 and threatTarget ~= nil) then
					--threatTarget is a GUID. Possibly get name here and do something interesting with it
				end
				local unitResultStr = unitID.." "..dmg.." "..effHeal.." "..dmgTaken.." "..overHeal.." "..death.." "..friendlydmg.." "..dispels.." "..ccbreaks.." "..interrupts.." "..dispelled.." "..effHealRecv.." "..overHealRecv.." "..threatValue;
				totalPlayersResult = totalPlayersResult..unitResultStr..",";
			end
		end
	end
	
	if(_Reason == "" and VF_RS_CurrentBoss ~= "" and VF_RS_LastBossData ~= _Time) then
		if(VF_RS_OmenThreat_IsWipe() == true) then
			_Reason = "Wipe_K="..VF_RS_CurrentBoss;
			VF_RS_DebugMessage("Wipe_K="..VF_RS_CurrentBoss.."(ThreatWipe)");
			VF_RS_CurrentBoss = "";
			VF_RS_CurrentBossData = {};
			VF_RS_SaveInstanceInfo();
		end
	end
	if(VF_RS_RaidMembersChanged ~= nil and totalPlayersResult ~= "") then
		if(_Time - VF_RS_RaidMembersChanged > 30 or (string.find(_Reason, "Start") or string.find(_Reason, "Dead") or string.find(_Reason, "Wipe"))) then
			if(VF_RS_RaidMembers ~= "") then
				totalPlayersResult = totalPlayersResult..VF_RS_RaidMembers..",";
			end
			VF_RS_RaidMembersChanged = nil;
		end
	end
	VF_RS_UpdateBossHealth();
	if(totalPlayersResult ~= "" and VF_RS_CurrentBoss_MaxHealth > 0) then
		local healthStr = "BossHealth="..VF_RS_CurrentBoss_Health.."-"..VF_RS_CurrentBoss_MaxHealth;
		for addName, addData in pairs(VF_RS_CurrentBossData) do
			if(addData.Health ~= nil and addData.MaxHealth ~= nil) then
				healthStr = healthStr..";BossHealth-"..addName.."="..addData.Health.."-"..addData.MaxHealth;
			end
		end
		VF_RS_CurrentBoss_MaxHealth = 0;
		if(_Reason ~= "") then
			_Reason = _Reason..";"..healthStr;
		else
			_Reason = healthStr;
		end
	end
	
	if(totalPlayersResult ~= "" or _Reason ~= "") then
		table.insert(VF_RaidStatsData[1], 1, _Time..":".._Reason..":"..totalPlayersResult);
		--VF_SendMessage(_Time..":"..":"..totalPlayersResult, "NONE"); 
	end
	if(sessionDebugResult ~= "") then
		table.insert(VF_RaidStatsData[1], 1, "Session:Debug:"..sessionDebugResult);
	end
	if(string.find(_Reason, "Start_S") or string.find(_Reason, "Start_C")) then
		VF_RS_BossStartTime = _Time;
		VF_RS_PrecisionLoggingInterval = 5;
	elseif(string.find(_Reason, "Dead")) then
		if(VF_RS_IsCurrentBossKilled() == true) then
			if(VF_RS_CurrentBoss ~= "") then
				VF_RS_LastKilledBoss = VF_RS_CurrentBoss;
				VF_RS_CurrentBoss = "";
				VF_RS_CurrentBossData = {};
			end
			VF_RS_SaveInstanceInfo();
			VF_RS_PrecisionLoggingInterval = 10;
		end
	elseif(string.find(_Reason, "Wipe")) then
		VF_RS_PrecisionLoggingInterval = 10;
	end
end

VF_RS_NextUpdateTime = nil;
VF_RS_NextBossCheckTime = nil;
function VF_RaidStats_SafeOnUpdate()
	if(GetNumRaidMembers() ~= 0) then
		local currTime = GetTime();
		local currTime_S = VF_RS_GetTime_S();
		if(VF_RS_NextUpdateTime == nil or VF_RS_NextBossCheckTime == nil) then
			VF_RS_NextUpdateTime = currTime_S + 5;
			VF_RS_NextBossCheckTime = currTime + 0.5;
		end
		if(currTime >= VF_RS_NextBossCheckTime) then
			VF_RS_DetectBossStart();
			VF_RS_NextBossCheckTime = currTime + 0.5;
		end
		if(currTime_S >= VF_RS_NextUpdateTime) then
			VF_RS_LogRaidStats("", currTime_S);
			if(currTime_S - VF_RS_BossStartTime < 5) then
				--log every second the first 5 seconds of fight
				VF_RS_NextUpdateTime = currTime_S + 1;
			else
				VF_RS_NextUpdateTime = currTime_S + VF_RS_PrecisionLoggingInterval;
			end
		else
			VF_RS_UpdateBossHealth();
		end
		VF_RS_DetectBossEnd();
	end
end

function VF_RaidStats_OnUpdate()
	VF_RS_ExecuteSub(VF_RaidStats_SafeOnUpdate);
end

else--if not string.find(GetBuildInfo(), "^2%.") then
	DEFAULT_CHAT_FRAME:AddMessage("ERROR! VF_RaidStatsTBC does not work on this WoW version! Only works on World of Warcraft TBC!");
	
	function VF_RaidStats_OnLoad()

	end
	function VF_RaidStats_OnEvent()

	end
	function VF_RaidStats_OnUpdate()

	end
end--if string.find(GetBuildInfo(), "^2%.") then
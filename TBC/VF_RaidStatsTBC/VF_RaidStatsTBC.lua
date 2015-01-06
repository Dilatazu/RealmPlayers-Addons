VF_RAIDSTATSVERSION = GetAddOnMetadata("VF_RaidStatsTBC", "Version");

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
	["Prince Melchazzar"] = VF_RS_MobType_Boss,
	
	--Gruul's Lair
	--High King Maulgar
	["High King Maulgar"] = VF_RS_MobType_Boss,
	["Krosh Firehand"] = VF_RS_MobType_Boss, --High King Maulgar ADD
	["Olm the Summoner"] = VF_RS_MobType_Boss, --High King Maulgar ADD
	["Kiggler the Crazed"] = VF_RS_MobType_Boss, --High King Maulgar ADD
	["Blindeye the Seer"] = VF_RS_MobType_Boss, --High King Maulgar ADD
	--High King Maulgar
	["Gruul"] = VF_RS_MobType_Boss,
	
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

VF_RS_OldRecount_SyncReset = Recount.ResetLazySyncData;
function VF_RS_NewRecount_SyncReset(name)
	VF_RS_ExecuteSub(VF_RS_LogRaidStats, "RCReset", VF_RS_GetTime_S());
	VF_RS_OldRecount_SyncReset(name);
	VF_RS_ExecuteSub(VF_RS_ResetLastRecordedCacheForAccumulaters);
	VF_RS_DebugMessage("Recount resetted");
end
Recount.ResetLazySyncData = VF_RS_NewRecount_SyncReset

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
	this:RegisterEvent("CHAT_MSG_COMBAT_HOSTILE_DEATH");
	
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
	VF_RS_Message("VF RaidDamage Version = "..VF_RaidStatsVersion);
	VF_RS_Message("/VFRD_PrintRecorded - Prints all the boss fights that has been recorded so far(only counts actual boss kills)");
	VF_RS_Message("/VFRD_Clear - clears all data from all sessions, this removes all data saved in SavedVariables/VF_RaidDamage.lua");
	VF_RS_Message("/VFRD - shows all commands");
end

function VF_RS_ClearData()
	VF_RaidStatsData = {};
	VF_RS_LastRecorded = {};
	VF_RS_CreateNewSession();
	VF_RS_Message("Cleared all saved data!");
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

function VF_RaidStats_SafeOnEvent(event, arg1, arg2)
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
			table.insert(VF_RaidStatsData[1], 1, ""..VF_RS_GetTime_S()..":Debug:"..monsterName.."=Yell-"..eventText);
		end
	elseif(event == "CHAT_MSG_MONSTER_EMOTE") then
		local monsterName = arg2;
		if(VF_RS_MobsType[monsterName] == VF_RS_MobType_Boss) then
			table.insert(VF_RaidStatsData[1], 1, ""..VF_RS_GetTime_S()..":Debug:"..monsterName.."=Emote-"..eventText);
		end
	elseif(event == "CHAT_MSG_MONSTER_SAY") then
		local monsterName = arg2;
		if(VF_RS_MobsType[monsterName] == VF_RS_MobType_Boss) then
			table.insert(VF_RaidStatsData[1], 1, ""..VF_RS_GetTime_S()..":Debug:"..monsterName.."=Say-"..eventText);
		end
	elseif(event == "CHAT_MSG_MONSTER_WHISPER") then
		local monsterName = arg2;
		if(VF_RS_MobsType[monsterName] == VF_RS_MobType_Boss) then
			table.insert(VF_RaidStatsData[1], 1, ""..VF_RS_GetTime_S()..":Debug:"..monsterName.."=Whisper-"..eventText);
		end
	elseif(event == "CHAT_MSG_MONSTER_PARTY") then
		local monsterName = arg2;
		if(VF_RS_MobsType[monsterName] == VF_RS_MobType_Boss) then
			table.insert(VF_RaidStatsData[1], 1, ""..VF_RS_GetTime_S()..":Debug:"..monsterName.."=Party-"..eventText);
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
	elseif(event == "CHAT_MSG_COMBAT_HOSTILE_DEATH") then
		local mobName;
		_, _, mobName = string.find(eventText, string.gsub(UNITDIESOTHER, "%%s", "(.+)"));
		
		if(VF_RS_MobsType[mobName] == VF_RS_MobType_Boss) then
			table.insert(VF_RaidStatsData[1], 1, ""..VF_RS_GetTime_S()..":Debug:"..mobName.."=Dead");
			VF_RS_SaveInstanceInfo();
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
	VF_RS_ExecuteSub(VF_RaidStats_SafeOnEvent, event, arg1, arg2);
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

VF_RS_LastRecorded = {};

function VF_RS_GenerateDeltaChange(_Value, _UnitID, _DataIndex, _CurrTime)
	if(VF_RS_LastRecorded[_UnitID][_DataIndex] == nil) then
		VF_RS_LastRecorded[_UnitID][_DataIndex] = {Value = _Value; Time = _CurrTime;}
		if(_Value == 0) then
			return "";
		end
		return _Value;
	end
	local deltaValue = _Value - VF_RS_LastRecorded[_UnitID][_DataIndex].Value;
	if(deltaValue ~= 0) then
		VF_RS_LastRecorded[_UnitID][_DataIndex].Value = _Value;
		VF_RS_LastRecorded[_UnitID][_DataIndex].Time = _CurrTime;
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
		--save data that doesnt get accumulated
		VF_RS_LastRecorded[i][VF_RS_DataIndex_Threat] = oldData[VF_RS_DataIndex_Threat];
		--save data that doesnt get accumulated
	end
end

VF_RS_RaidMembers = "";
VF_RS_RaidMembersChanged = nil;
VF_RS_UnitIDCounter = 1;
VF_RS_PrecisionLoggingInterval = 10;

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

function VF_RS_LogRaidStats(_Reason, _Time)
	local totalPlayersResult = "";
	for unitName, unitData in pairs(Recount.db2.combatants) do 
		local unitFightData = unitData.Fights["OverallData"];
		if(VF_RS_LastRecorded[unitName] == nil) then
			VF_RS_LastRecorded[unitName] = {};
			VF_RS_LastRecorded[unitName]["UnitID"] = VF_RS_UnitIDCounter;
			totalPlayersResult = totalPlayersResult..unitName.."="..VF_RS_LastRecorded[unitName]["UnitID"]..",";
			VF_RS_UnitIDCounter = VF_RS_UnitIDCounter + 1;
		end
		local unitID = VF_RS_LastRecorded[unitName]["UnitID"];
		if(unitData.type == "Pet") then
			if(unitData.Owner and VF_RS_LastRecorded[unitData.Owner] ~= nil) then
				if(VF_RS_LastRecorded[unitData.Owner]["pets"] == nil) then
					VF_RS_LastRecorded[unitData.Owner]["pets"] = {};
				end
				if(VF_RS_LastRecorded[unitData.Owner]["pets"][unitID] == nil) then
					VF_RS_LastRecorded[unitData.Owner]["pets"][unitID] = 1;
					totalPlayersResult = totalPlayersResult.."VF_PET_"..unitID.."_"..unitName.."_"..unitData.Owner.."="..unitID..",";
				end
			end
		end
		local dmg, effHeal, dmgTaken = unitFightData.Damage or 0, unitFightData.Healing or 0, unitFightData.DamageTaken or 0;
		local overHeal, death = unitFightData.Overhealing or 0, unitFightData.DeathCount or 0;
		local dispels, ccbreaks, interrupts, dispelled = unitFightData.Dispels or 0, unitFightData.CCBreak or 0, unitFightData.Interrupts or 0, unitFightData.Dispelled or 0;
		
		dmg = VF_RS_GenerateDeltaChange(dmg, unitID, VF_RS_DataIndex_Damage, _Time);
		effHeal = VF_RS_GenerateDeltaChange(effHeal, unitID, VF_RS_DataIndex_EffectiveHeal, _Time);
		dmgTaken = VF_RS_GenerateDeltaChange(dmgTaken, unitID, VF_RS_DataIndex_DamageTaken, _Time);
		overHeal = VF_RS_GenerateDeltaChange(overHeal, unitID, VF_RS_DataIndex_OverHeal, _Time);
		death = VF_RS_GenerateDeltaChange(death, unitID, VF_RS_DataIndex_Death, _Time);
		dispels = VF_RS_GenerateDeltaChange(dispels, unitID, VF_RS_DataIndex_Dispels, _Time);
		ccbreaks = VF_RS_GenerateDeltaChange(ccbreaks, unitID, VF_RS_DataIndex_CCBreaks, _Time);
		interrupts = VF_RS_GenerateDeltaChange(interrupts, unitID, VF_RS_DataIndex_Interrupts, _Time);
		dispelled = VF_RS_GenerateDeltaChange(dispelled, unitID, VF_RS_DataIndex_Dispelled, _Time);
			
		if(dmg ~= "" or effHeal ~= "" or dmgTaken ~= "" or overHeal ~= "" or death ~= "" or dispels ~= "" or ccbreaks ~= "" or interrupts ~= "" or dispelled ~= "") then
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
					VF_RS_DebugMessage("Start_S="..specialBoss.."(SW_Start)");
					VF_RS_CurrentBoss = specialBoss;
					local bossParts = VF_RS_GetBossParts(specialBoss);
					VF_RS_CurrentBossData = {};
					for i, v in bossParts do
						VF_RS_CurrentBossData[v] = {Health = 0, MaxHealth = 0};
					end
				elseif(death ~= "" and VF_RS_CurrentBoss == specialBoss) then
					if(_Reason ~= "") then
						_Reason = _Reason..";Dead_S="..unitName;
					else
						_Reason = "Dead_S="..unitName;
					end
					VF_RS_DebugMessage("Dead_S="..unitName.."(SW_Dead)");
					if(specialBoss ~= unitName) then
						if(VF_RS_CurrentBossData[unitName] == nil) then
							VF_RS_CurrentBossData[unitName] = {};
						end
						VF_RS_CurrentBossData[unitName].Dead = true;
						local bossParts = VF_RS_GetBossParts(specialBoss);
						local bossKilled = true;
						for i, v in bossParts do
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
							VF_RS_DebugMessage("Dead_S="..specialBoss.."(SW_Dead)");
						end
					end
				end
				VF_RS_LastBossData = _Time;
			end
			local threatValue = 0;
			local unitResultStr = unitID.." "..dmg.." "..effHeal.." "..dmgTaken.." "..overHeal.." "..death.." "..dispels.." "..ccbreaks.." "..interrupts.." "..dispelled.." "..threatValue;
			totalPlayersResult = totalPlayersResult..unitResultStr..",";
		end
	end
	
	if(_Reason == "" and VF_RS_CurrentBoss ~= "" and VF_RS_LastBossData ~= _Time) then
		local threatWiped = true;
		for uN, tV in klhtm.table.raiddata do
			if(tV == 0 or tV == nil) then
				
			else
				threatWiped = false;
				break;
			end
		end
		if(threatWiped == true) then
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
		for addName, addData in VF_RS_CurrentBossData do
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
function VF_RaidStats_SafeOnUpdate()
	--[[if(GetNumRaidMembers() ~= 0) then
		local currTime = GetTime();
		local currTime_S = VF_RS_GetTime_S();
		if(VF_RS_NextUpdateTime == nil) then
			VF_RS_NextUpdateTime = currTime_S + 5;
		end
		if(currTime_S >= VF_RS_NextUpdateTime) then
			if(currTime_S - VF_RS_BossStartTime < 5) then
				--log every second the first 5 seconds of fight
				VF_RS_NextUpdateTime = currTime_S + 1;
			else
				VF_RS_NextUpdateTime = currTime_S + VF_RS_PrecisionLoggingInterval;
			end
		end
	end--]]
end
function VF_RaidStats_OnUpdate()
	--VF_RS_ExecuteSub(VF_RaidStats_SafeOnUpdate);
end
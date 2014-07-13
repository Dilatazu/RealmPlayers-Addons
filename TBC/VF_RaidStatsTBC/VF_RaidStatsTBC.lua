VF_RAIDSTATSVERSION = GetAddOnMetadata("VF_RaidStats", "Version");

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
	["Astral Flare"] = VF_RS_MobType_Boss, --CURATOR ADD
	--The Curator
	["Shade of Aran"] = VF_RS_MobType_Boss,
	--Terestian Illhoof
	["Terestian Illhoof"] = VF_RS_MobType_Boss,
	["Kil'rek"] = VF_RS_MobType_Boss, --Illhoof ADD
	["Demon Chains"] = VF_RS_MobType_Boss, --Illhoof ADD
	--Terestian Illhoof
	["Netherspite"] = VF_RS_MobType_Boss,
	--Nightbane
	["Nightbane"] = VF_RS_MobType_Boss,
	["Restless Skeleton"] = VF_RS_MobType_Boss, --NIGHTBANE ADD
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
	["Hellfire Channeler"] = VF_RS_MobType_Boss, --MAGTHERIDON ADD
	
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
	["Enchanted Elemental"] = VF_RS_MobType_Boss, --ADD
	["Tainted Elemental"] = VF_RS_MobType_Boss, --ADD
	["Coilfang Elite"] = VF_RS_MobType_Boss, --ADD
	["Coilfang Strider"] = VF_RS_MobType_Boss, --ADD
	["Toxic Spore Bat"] = VF_RS_MobType_Boss, --ADD
	--Lady Vashj
	
	--Tempest Keep
	--Al'ar
	["Al'ar"] = VF_RS_MobType_Boss,
	["Ember of Al'ar"] = VF_RS_MobType_Boss, --ADD
	--Al'ar
	["Void Reaver"] = VF_RS_MobType_Boss,
	--High Astromancer Solarian
	["High Astromancer Solarian"] = VF_RS_MobType_Boss, 
	["Solarium Agent"] = VF_RS_MobType_Boss, --ADD
	["Solarium Priest"] = VF_RS_MobType_Boss, --ADD
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
	["Ashtongue Defender"] = VF_RS_MobType_Boss, --ADD
	["Ashtongue Elementalist"] = VF_RS_MobType_Boss, --ADD
	["Ashtongue Rogue"] = VF_RS_MobType_Boss, --ADD
	["Ashtongue Spiritbinder"] = VF_RS_MobType_Boss, --ADD
	["Ashtongue Channeler"] = VF_RS_MobType_Boss, --ADD
	["Ashtongue Sorcerer"] = VF_RS_MobType_Boss, --ADD
	--Shade of Akama
	--Teron Gorefiend
	["Teron Gorefiend"] = VF_RS_MobType_Boss,
	["Shadowy Construct"] = VF_RS_MobType_Boss, --ADD
	--Teron Gorefiend
	["Gurtogg Bloodboil"] = VF_RS_MobType_Boss,
	--Reliquary of Souls
	["Essence of Anger"] = VF_RS_MobType_Boss, --BOSSPART
	["Essence of Desire"] = VF_RS_MobType_Boss, --BOSSPART
	["Essence of Suffering"] = VF_RS_MobType_Boss, --BOSSPART
	["Enslaved Soul"] = VF_RS_MobType_Boss, --ADD
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

VF_RS_RaidMembers = "";
VF_RS_RaidMembersChanged = nil;
VF_RS_LastRecorded = {};

VF_RS_PrecisionLoggingInterval = 10;

function VF_RS_GetTime_S()
	local currTime = GetTime();
	local currTime_S = math.floor(currTime);
	return currTime_S;
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
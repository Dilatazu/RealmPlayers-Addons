VF_REALMPLAYERSVERSION = GetAddOnMetadata("VF_RealmPlayers", "Version");

VF_RealmPlayersVersion = VF_REALMPLAYERSVERSION;

if string.find(GetBuildInfo(), "^1%.") then

VF_ClassColor = {
	["DRUID"] = "|cffff7d0a",
	["WARRIOR"] = "|cffc79c6e",
	["SHAMAN"] = "|cfff58cba",
	["PRIEST"] = "|cffffffff",
	["MAGE"] = "|cff69ccf0",
	["ROGUE"] = "|cfffff569",
	["WARLOCK"] = "|cff9482ca",
	["HUNTER"] = "|cffabd473",
	["PALADIN"] = "|cfff58cba",
	["PET"] = "|cff00ff00",
};

VF_ClassToIndex = {
	["DRUID"] = 1,
	["WARRIOR"] = 2,
	["SHAMAN"] = 3,
	["PRIEST"] = 4,
	["MAGE"] = 5,
	["ROGUE"] = 6,
	["WARLOCK"] = 7,
	["HUNTER"] = 8,
	["PALADIN"] = 9,

	["Druid"] = 1,
	["Warrior"] = 2,
	["Shaman"] = 3,
	["Priest"] = 4,
	["Mage"] = 5,
	["Rogue"] = 6,
	["Warlock"] = 7,
	["Hunter"] = 8,
	["Paladin"] = 9,
};

VF_RaceToIndex = {
	["Orc"] = 1,
	["Undead"] = 2,
	["Scourge"] = 2,
	["Tauren"] = 3,
	["Troll"] = 4,
	["Human"] = 5,
	["Dwarf"] = 6,
	["Gnome"] = 7,
	["NightElf"] = 8,
	["Nightelf"] = 8,
	["Night Elf"] = 8,
	["Night elf"] = 8,
};

VF_ZoneToIndex = {
	["Ahn'Qiraj"] = 1,
	["Alterac Mountains"] = 2,
	["Alterac Valley"] = 3,
	["Arathi Basin"] = 4,
	["Arathi Highlands"] = 5,
	["Ashenvale"] = 6,
	["Auberdine"] = 7,
	["Azshara"] = 8,
	["Badlands"] = 9,
	["The Barrens"] = 10,
	["Blackfathom Deeps"] = 11,
	["Blackrock Depths"] = 12,
	["Blackrock Mountain"] = 13,
	["Blackrock Spire"] = 14,
	["Lower Blackrock Spire"] = 15,
	["Upper Blackrock Spire"] = 16,
	["Blackwing Lair"] = 17,
	["Blasted Lands"] = 18,
	["Booty Bay"] = 19,
	["Burning Steppes"] = 20,
	["Darkshore"] = 21,
	["Darnassus"] = 22,
	["The Deadmines"] = 23,
	["Deadwind Pass"] = 24,
	["Deeprun Tram"] = 25,
	["Desolace"] = 26,
	["Dire Maul"] = 27,
	["Dire Maul (East)"] = 28,
	["Dire Maul (West)"] = 29,
	["Dire Maul (North)"] = 30,
	["Dun Morogh"] = 31,
	["Durotar"] = 32,
	["Duskwood"] = 33,
	["Dustwallow Marsh"] = 34,
	["Eastern Plaguelands"] = 35,
	["Elwynn Forest"] = 36,
	["Everlook"] = 37,
	["Felwood"] = 38,
	["Feralas"] = 39,
	["The Forbidding Sea"] = 40,
	["Gadgetzan"] = 41,
	["Gates of Ahn'Qiraj"] = 42,
	["Gnomeregan"] = 43,
	["The Great Sea"] = 44,
	["Grom'gol Base Camp"] = 45,
	["Hall of Legends"] = 46,
	["Hillsbrad Foothills"] = 47,
	["The Hinterlands"] = 48,
	["Hyjal"] = 49,
	["Ironforge"] = 50,
	["Loch Modan"] = 51,
	["Maraudon"] = 52,
	["Menethil Harbor"] = 53,
	["Molten Core"] = 54,
	["Moonglade"] = 55,
	["Mulgore"] = 56,
	["Naxxramas"] = 57,
	["Onyxia's Lair"] = 58,
	["Orgrimmar"] = 59,
	["Ratchet"] = 60,
	["Ragefire Chasm"] = 61,
	["Razorfen Downs"] = 62,
	["Razorfen Kraul"] = 63,
	["Redridge Mountains"] = 64,
	["Ruins of Ahn'Qiraj"] = 65,
	["Scarlet Monastery"] = 66,
	["Scholomance"] = 67,
	["Searing Gorge"] = 68,
	["Shadowfang Keep"] = 69,
	["Silithus"] = 70,
	["Silverpine Forest"] = 71,
	["The Stockade"] = 72,
	["Stonetalon Mountains"] = 73,
	["Stormwind City"] = 74,
	["Stranglethorn Vale"] = 75,
	["Stratholme"] = 76,
	["Swamp of Sorrows"] = 77,
	["Tanaris"] = 78,
	["Teldrassil"] = 79,
	["Temple of Ahn'Qiraj"] = 80,
	["The Temple of Atal'Hakkar"] = 81,
	["Theramore Isle"] = 82,
	["Thousand Needles"] = 83,
	["Thunder Bluff"] = 84,
	["Tirisfal Glades"] = 85,
	["Uldaman"] = 86,
	["Un'Goro Crater"] = 87,
	["Undercity"] = 88,
	["Wailing Caverns"] = 89,
	["Warsong Gulch"] = 90,
	["Western Plaguelands"] = 91,
	["Westfall"] = 92,
	["Wetlands"] = 93,
	["Winterspring"] = 94,
	["Zul'Farrak"] = 95,
	["Zul'Gurub"] = 96,
};

VF_InventorySlots = {
	["Head"] = 1,
	["Neck"] = 2,
	["Shoulder"] = 3,
	["Shirt"] = 4,
	["Chest"] = 5,
	["Belt"] = 6,
	["Legs"] = 7,
	["Feet"] = 8,
	["Wrist"] = 9,
	["Gloves"] = 10,
	["Finger1"] = 11,
	["Finger2"] = 12,
	["Trinket1"] = 13,
	["Trinket2"] = 14,
	["Back"] = 15,
	["MainHand"] = 16,
	["OffHand"] = 17,
	["Ranged"] = 18,
	["Tabard"] = 19,
}

function VF_RP_GetTime_S()
	local currTime = GetTime();
	local currTime_S = math.floor(currTime);
	return currTime_S;
end

function VF_RealmPlayers_Debug(_Text)
	if(VF_RealmPlayers_Settings["DebugMode"] == true) then
		DEFAULT_CHAT_FRAME:AddMessage(_Text);
	end
end

function VF_RealmPlayers_OnLoad()
	this:RegisterEvent("PLAYER_TARGET_CHANGED");
	this:RegisterEvent("VARIABLES_LOADED");
	this:RegisterEvent("WHO_LIST_UPDATE");
	this:RegisterEvent("GUILD_ROSTER_UPDATE");
	this:RegisterEvent("UPDATE_MOUSEOVER_UNIT");
	SlashCmdList["REALMPLAYERS"] = VF_RealmPlayers_Command;
	SLASH_REALMPLAYERS1 = "/VFRP";
	SLASH_REALMPLAYERS2 = "/RealmPlayers";
	
	VF_RP_CreateGameToolTip();
end

function VF_RealmPlayers_OnEvent()
	if(event == "VARIABLES_LOADED") then
		VF_RealmPlayersVersion = VF_REALMPLAYERSVERSION;
		if(VF_RealmPlayers_Settings == nil) then
			VF_RealmPlayers_Settings = {};
		end
		if(VF_RealmPlayers_Settings["MaxDatabase"] == nil) then
			VF_RealmPlayers_Settings["MaxDatabase"] = 1000;
		end
		if(VF_RealmPlayersData == nil) then
			VF_RealmPlayersData = {};
		end
		VF_RealmPlayers_Playername = UnitName("player");
		DEFAULT_CHAT_FRAME:AddMessage("VF_RealmPlayers(/RealmPlayers) version "..VF_RealmPlayersVersion.." loaded!");
	elseif(event == "PLAYER_TARGET_CHANGED") then
		if(VF_TemporarySupressTargetChange == nil) then
			VF_PlayerChosenTarget = true;
			VF_StartInspectingTarget();
		end
		VF_TemporarySupressTargetChange = nil;
		local targetName = UnitName("target");
		if(targetName == nil) then targetName = "nil"; end
	elseif(event == "WHO_LIST_UPDATE") then
		if(VF_RealmPlayersData["OnlineData"] == nil) then
			VF_RealmPlayersData["OnlineData"] = {};
		end
		local onlineData = VF_RealmPlayersData["OnlineData"];
		
		local currOnlineDataTime = VF_RP_GetTime_S();
		local currentDate = date("!%Y-%m-%d %X");
		if(VF_RealmPlayers_CurrentOnlineData == nil) then
			VF_RealmPlayers_CurrentOnlineData = {};
			VF_RealmPlayers_CurrentOnlineData["OnlineCharacters"] = {};
			VF_RealmPlayers_CurrentOnlineData["OnlineDataString"] = "";
			VF_RealmPlayers_CurrentOnlineData["OnlineDataTime"] = currOnlineDataTime;
			VF_RealmPlayers_CurrentOnlineData["OnlineDataStartDateTime"] = currentDate;
			table.insert(onlineData, 1, "");
		end
		local onlineDataTime = VF_RealmPlayers_CurrentOnlineData["OnlineDataTime"];
		local charsRecorded = table.getn(VF_RealmPlayers_CurrentOnlineData["OnlineCharacters"]);
		if(currOnlineDataTime - onlineDataTime > 60 or charsRecorded > 100) then
			VF_RealmPlayers_CurrentOnlineData["OnlineCharacters"] = {};
			VF_RealmPlayers_CurrentOnlineData["OnlineDataString"] = "";
			VF_RealmPlayers_CurrentOnlineData["OnlineDataTime"] = currOnlineDataTime;
			VF_RealmPlayers_CurrentOnlineData["OnlineDataStartDateTime"] = currentDate;
			table.insert(onlineData, 1, "");
		end
		local onlineCharacters = VF_RealmPlayers_CurrentOnlineData["OnlineCharacters"];
		local onlineDataString = VF_RealmPlayers_CurrentOnlineData["OnlineDataString"];
		local numWhoResults = GetNumWhoResults();
		for i = 1, numWhoResults, 1 do
			local name, guild, level, race, class, zone, group = GetWhoInfo(i);
			if(guild == nil) then
				guild = "";
			end
			if(onlineCharacters[name] == nil) then
				onlineCharacters[name] = 1;
				
				if(VF_RaceToIndex[race] ~= nil) then
					race = VF_RaceToIndex[race];
				end
				if(VF_ClassToIndex[class] ~= nil) then
					class = VF_ClassToIndex[class];
				end
				if(VF_ZoneToIndex[zone] ~= nil) then
					zone = VF_ZoneToIndex[zone];
				end
				onlineDataString = onlineDataString .. name .. ":" .. race .. ":" .. class .. ":" .. guild .. ":" .. level .. ":" .. zone .. ",";
			end
		end
		VF_RealmPlayers_CurrentOnlineData["OnlineDataString"] = onlineDataString;
		
		onlineData[1] = "" .. currOnlineDataTime .. ";" .. VF_GetScribbledRealmName() .. ";" .. VF_RealmPlayers_CurrentOnlineData["OnlineDataStartDateTime"] .. ";" .. currentDate .. ";" .. onlineDataString;

	elseif(event == "GUILD_ROSTER_UPDATE") then
	elseif(event == "UPDATE_MOUSEOVER_UNIT") then
	end
end

function VF_RealmPlayers_Command(arg1)
	if(string.lower(arg1) == "toggledebug") then
		if(VF_RealmPlayers_Settings["DebugMode"] == true) then
			VF_RealmPlayers_Settings["DebugMode"] = false;
		else
			VF_RealmPlayers_Settings["DebugMode"] = true;
		end
	elseif(string.lower(arg1) == "printinspected") then
		local playerList = "";
		local playerCount = 0;
		for i, v in VF_RealmPlayersData do
			playerList = playerList..i..", ";
			playerCount = playerCount + 1;
		end
		DEFAULT_CHAT_FRAME:AddMessage("Players inspected("..playerCount.."): "..playerList);
	elseif(string.lower(arg1) == "printrecentlyinspected") then
		local currTime = GetTime();
		local playerList = "";
		local playerCount = 0;
		for i, v in VF_RealmPlayersData do
			if(currTime - v.LastInspect < 120) then
				playerList = playerList..i..", ";
				playerCount = playerCount + 1;
			end
		end
		DEFAULT_CHAT_FRAME:AddMessage("Players recently inspected("..playerCount.."): "..playerList);
	elseif(string.lower(arg1) == "help") then
		VF_RP_Help();
	else
		VF_RP_Help();
	end
end

function VF_RP_Help()
	DEFAULT_CHAT_FRAME:AddMessage("VF RealmPlayers Version = "..VF_RealmPlayersVersion);
	DEFAULT_CHAT_FRAME:AddMessage("/RealmPlayers ToggleDebug - Toggles Debug/Inspect Output");
	DEFAULT_CHAT_FRAME:AddMessage("/RealmPlayers PrintInspected - Prints the inspected players so far");
	DEFAULT_CHAT_FRAME:AddMessage("/RealmPlayers PrintRecentlyInspected - Prints the recently inspected players(within last 2 minutes)");
	DEFAULT_CHAT_FRAME:AddMessage("/RealmPlayers Help - shows all commands");
end

local VF_RecentlyInspected = {};
local VF_RecentlyInspectedTime = 0;
local VF_CurrentlyInspecting = nil;
local VF_CurrentlyInspectingStage = 0;
VF_PlayerChosenTarget = true;
VF_TemporarySupressTargetChange = nil;
function VF_StartInspectingTarget()
	if (UnitIsPlayer("target") and UnitIsFriend("player","target")) then
		VF_CurrentlyInspecting = UnitName("target");
		VF_CurrentlyInspectingStage = 0;
	else
		local petInfo = VF_RP_GetPetInfo("target");
		if(petInfo ~= nil) then
			if(VF_RealmPlayersData[petInfo.Owner] ~= nil) then
				local petData = "";
				local petColor = "";
				if(petInfo.Type == "Companion") then
					petData = "C:"..petInfo.Name..":"..petInfo.Level;
					petColor = "|cff00ffff";
				elseif(petInfo.Type == "Pet") then
					petData = "P:"..petInfo.Name..":"..petInfo.Level;
					petColor = VF_ClassColor["PET"];
					local creatureFamily = UnitCreatureFamily("target");
					local creatureType = UnitCreatureType("target")
					if(creatureFamily ~= nil) then
						petData = petData..":"..creatureFamily;
					end
					if(creatureType ~= nil) then
						petData = petData..":"..creatureType;
					end
				end
				
				--extraData
				if(petData ~= "") then
					if(VF_RealmPlayersData[petInfo.Owner].ExtraData == nil) then
						VF_RealmPlayersData[petInfo.Owner].ExtraData = petData;
						table.insert(VF_RecentlyInspected, petColor..petInfo.Name);
					else
						if(string.find(VF_RealmPlayersData[petInfo.Owner].ExtraData, petData) == nil) then
							if(petInfo.Type == "Companion") then
								if(string.find(VF_RealmPlayersData[petInfo.Owner].ExtraData, "P:"..petInfo.Name..":"..petInfo.Level) == nil) then
									VF_RealmPlayersData[petInfo.Owner].ExtraData = VF_RealmPlayersData[petInfo.Owner].ExtraData..","..petData;
									table.insert(VF_RecentlyInspected, petColor..petInfo.Name);
								end
							else
								VF_RealmPlayersData[petInfo.Owner].ExtraData = VF_RealmPlayersData[petInfo.Owner].ExtraData..","..petData;
								table.insert(VF_RecentlyInspected, petColor..petInfo.Name);
							end
						end
					end
				end
				--extraData
			end
		end
	end
end

function VF_StartAutomaticInspect()
	VF_AutomaticInspection = true;
end

function VF_StopAutomaticInspect()
	VF_AutomaticInspection = nil;
end

function VF_InspectSome(maintainTarget)
	if(maintainTarget == true) then
		if(VF_PlayerChosenTarget == true) then
			VF_PlayerChosenTarget = nil;
			VF_TemporarySupressTargetChange = true;
			TargetNearestFriend();
		end
	else
		TargetNearestFriend();
	end
end


function VF_RP_CreateGameToolTip()
	VF_RP_GameToolTip = CreateFrame("GameTooltip")

	VF_RP_GameToolTip:SetOwner(VF_RP_GameToolTip, "ANCHOR_NONE")

	VF_RP_GameToolTip.Llines = {}
	VF_RP_GameToolTip.Rlines = {}
	for i=1,30 do
		VF_RP_GameToolTip.Llines[i] =VF_RP_GameToolTip:CreateFontString()
		VF_RP_GameToolTip.Rlines[i] = VF_RP_GameToolTip:CreateFontString()
		VF_RP_GameToolTip.Llines[i]:SetFontObject(GameFontNormal)
		VF_RP_GameToolTip.Rlines[i]:SetFontObject(GameFontNormal)
		VF_RP_GameToolTip:AddFontStrings(VF_RP_GameToolTip.Llines[i], VF_RP_GameToolTip.Rlines[i])
	end
end

function VF_RP_GetToolTipText()
	local leftText = {};
	local rightText = {};
	local textLines = VF_RP_GameToolTip:NumLines()
	for i=1, textLines do
		if VF_RP_GameToolTip.Llines[i] then
			if(VF_RP_GameToolTip.Llines[i]:GetText() ~= nil) then
				table.insert(leftText, VF_RP_GameToolTip.Llines[i]:GetText());
			end
			if(VF_RP_GameToolTip.Rlines[i]:GetText() ~= nil) then
				table.insert(rightText, VF_RP_GameToolTip.Rlines[i]:GetText());
			end
		end
	end
	
	return leftText, rightText;
end
function VF_RP_GetBuffText(_UnitID, _BuffID)
	if(VF_RP_GameToolTip == nil) then
		VF_RP_CreateGameToolTip();
	end
	VF_RP_GameToolTip:SetUnitBuff(_UnitID, _BuffID);
	
	return VF_RP_GetToolTipText();
end

function VF_RP_DeleteGameToolTip()
	VF_RP_GameToolTip:ClearLines()
	for i=1,30 do 
		VF_RP_GameToolTip.Rlines[i]:SetText() 
	end
	if not VF_RP_GameToolTip:IsOwned(tt) then 
		VF_RP_GameToolTip:SetOwner(tt, "ANCHOR_NONE") 
	end
end

if(GetLocale() == "deDE") then
	VF_RP_RunSpeed100 = "Erh\195\182ht Tempo um 100%.";
	VF_RP_RunSpeed60 = "Erh\195\182ht Tempo um 60%.";
	VF_RP_SlowSpeed = "Langsam und stetig...";
	VF_RP_PetIdentifierStr = "Haustier von ";
	VF_RP_MinionIdentifierStr = "Diener von ";
	VF_RP_CompanionIdentifierStr = "Begleiter von ";
	VF_RP_LevelStrOffset = 7; --Stufe
	VF_RP_GetPetOwnerFromStr = function(_Str, _PetIdentifierIndex)
		local _, _, _, owner = string.find(_Str, "(.*)[' ](.*)");
		return owner;
	end
elseif(GetLocale() == "frFR") then
	VF_RP_RunSpeed100 = "Augmente la vitesse de 100%.";
	VF_RP_RunSpeed60 = "Augmente la vitesse de 60%.";
	VF_RP_SlowSpeed = "Lente et r\195\169guli\195\168re...";
	VF_RP_PetIdentifierStr = "Animaux d";
	VF_RP_MinionIdentifierStr = "Serviteur d"; --"Serviteur d'" or "Serviteur de "
	VF_RP_CompanionIdentifierStr = "Familier d"; --"Familier d'" or "Familier de "
	VF_RP_LevelStrOffset = 8; --Niveau
	VF_RP_GetPetOwnerFromStr = function(_Str, _PetIdentifierIndex)
		local _, _, _, owner = string.find(_Str, "(.*)[' ](.*)");
		return owner;
	end
else
	VF_RP_RunSpeed100 = "Increases speed by 100%.";
	VF_RP_RunSpeed60 = "Increases speed by 60%.";
	VF_RP_SlowSpeed = "Slow and steady...";
	VF_RP_PetIdentifierStr = "'s Pet";
	VF_RP_MinionIdentifierStr = "'s Minion";
	VF_RP_CompanionIdentifierStr = "'s Companion";
	VF_RP_LevelStrOffset = 7; --Level
	VF_RP_GetPetOwnerFromStr = function(_Str, _PetIdentifierIndex)
		return string.sub(_Str, 1, _PetIdentifierIndex - 1);
	end
end

function VF_RP_GetMount(_UnitID)
	for i = 1, 16 do
		local currBuff = UnitBuff(_UnitID, i);
		if(currBuff) then
			leftText, rightText = VF_RP_GetBuffText(_UnitID, i);
			if(table.getn(leftText) >= 2) then
				if(leftText[2] == VF_RP_RunSpeed100 or leftText[2] == VF_RP_RunSpeed60 or leftText[2] == VF_RP_SlowSpeed) then
					return leftText[1];
				end
			end
		end
	end
	return "";
end

function VF_RP_GetPetInfo(_UnitID)
	if(VF_RP_GameToolTip == nil) then
		VF_RP_CreateGameToolTip();
	end
	VF_RP_GameToolTip:SetUnit(_UnitID);
	local data = VF_RP_GetToolTipText();
	
	if(table.getn(data) >= 3) then
		local petIdentifierIndex = string.find(data[2], VF_RP_PetIdentifierStr);
		if(petIdentifierIndex == nil) then
			petIdentifierIndex = string.find(data[2], VF_RP_MinionIdentifierStr);
		end
		if(petIdentifierIndex == nil) then
			petIdentifierIndex = string.find(data[2], VF_RP_CompanionIdentifierStr);
		end
		if(petIdentifierIndex) then
			local petLevel = tonumber(string.sub(data[3], VF_RP_LevelStrOffset));
			if(petLevel == nil) then
				return nil;
			end
			if(UnitCreatureFamily(_UnitID) == nil and UnitStat(_UnitID, 3) == 0) then
				--Companion
				return {Name = data[1], Owner = VF_RP_GetPetOwnerFromStr(data[2], petIdentifierIndex), Level = petLevel, Type = "Companion"};
			else
				--Pet
				return {Name = data[1], Owner = VF_RP_GetPetOwnerFromStr(data[2], petIdentifierIndex), Level = petLevel, Type = "Pet"};
			end
		end
	end
	return nil;
end

function VF_InspectDone(success)
	VF_CurrentlyInspecting = nil;
	VF_CurrentlyInspectingStage = 0;
	if(VF_PlayerChosenTarget == nil) then
		TargetLastTarget();
	end
	if(VF_AutomaticInspection == true) then
		DEFAULT_CHAT_FRAME:AddMessage("Trying to change target");
		TargetNearestFriend();
		VF_NextInspectTryTime = GetTime() + 1;
	end
end

function VF_GetScribbledRealmName()
	local realmName = GetRealmName();
	return string.sub(realmName, 1, 1).."#"..string.sub(realmName, 2); --Scribble realmName to avoid search-and-replace misstakes people do when changing realm and maintaining addon settings...
end

VF_RealmPlayers_HasBeenWarnedOnce = false;
VF_RealmPlayers_Playername = "Unknown";
VF_RealmPlayers_Settings = {["DebugMode"] = true,["MaxDatabase"] = 1000};
VF_RealmPlayersData = {};
local VF_NextInspectTryTime = 0;
local VF_AutomaticInspection = nil;
function VF_RealmPlayers_OnUpdate()
	local currTime = GetTime();
	if(VF_CurrentlyInspecting ~= nil) then
		local affectingCombat = UnitAffectingCombat("player");
		local inspectionFrequency = 5;
		if(affectingCombat == true) then
			inspectionFrequency = 240;
		end
		if(VF_RealmPlayersData[VF_CurrentlyInspecting] == nil or currTime - VF_RealmPlayersData[VF_CurrentlyInspecting].LastInspect > inspectionFrequency or currTime < VF_RealmPlayersData[VF_CurrentlyInspecting].LastInspect) then --3600) then
			if(UnitName("target") ~= VF_CurrentlyInspecting) then
				VF_InspectDone();
				return;
			end
			if(VF_CurrentlyInspectingStage == 0) then
				if(CheckInteractDistance("target", 1)) then
					if (CanInspect("target") ) then
						NotifyInspect("target");
						VF_CurrentlyInspectingStage = 1;
					end
				end
			end
			if(VF_CurrentlyInspectingStage < 1) then
				VF_InspectDone();
				return;
			end
			if(VF_CurrentlyInspectingStage == 1) then
				if ( not HasInspectHonorData() ) then
					RequestInspectHonorData();
				else--if(HasInspectHonorData()) then
					VF_CurrentlyInspectingStage = 2;
				end
			end
			if(VF_CurrentlyInspectingStage == 2) then
				if(VF_RealmPlayersData[VF_CurrentlyInspecting] == nil) then
					if(VF_RealmPlayers_Settings["MaxDatabase"] < table.getn(VF_RealmPlayersData)) then
						if(VF_RealmPlayers_HasBeenWarnedOnce == false) then
							DEFAULT_CHAT_FRAME:AddMessage("VF_RealmPlayers database now has "..table.getn(VF_RealmPlayersData).." players, this is more than specified in the settings, addon will not collect anymore data unless setting \"MaxDatabase\" is set to a higher value or database is uploaded/cleaned");
							VF_RealmPlayers_HasBeenWarnedOnce = true;
						end
						VF_InspectDone();
						return;
					end
					VF_RealmPlayersData[VF_CurrentlyInspecting] = {};
					VF_RealmPlayersData[VF_CurrentlyInspecting].LastInspect = 0;
				end
				--playerData
				local _, race = UnitRace("target");
				local _, class = UnitClass("target");
				local sex = UnitSex("target");
				local level = UnitLevel("target");
				local guildname, guildtitle, guildrank = GetGuildInfo("target");
				local realmName = VF_GetScribbledRealmName();
				if(guildname == nil) then guildname = "nil"; end
				if(guildtitle == nil) then guildtitle = "nil"; end
				if(guildrank == nil) then guildrank = 0; end
				if(VF_RealmPlayersData[VF_CurrentlyInspecting].PlayerData ~= nil) then
					if(string.sub(VF_RealmPlayersData[VF_CurrentlyInspecting].PlayerData,-string.len(realmName)) ~= realmName) then
						VF_RealmPlayersData[VF_CurrentlyInspecting] = {};
						VF_RealmPlayersData[VF_CurrentlyInspecting].LastInspect = 0;
					end
				end
				VF_RealmPlayersData[VF_CurrentlyInspecting].PlayerData = race..":"..class..":"..guildname..":"..guildtitle..":"..guildrank..":"..sex..":"..level..":"..realmName;
				--playerData
				
				--honor etc
				local todayHK, todayDK, yesterdayHK, yesterdayHonor, thisweekHK, thisweekHonor, lastweekHK, lastweekHonor, lastweekStanding, lifetimeHK, lifetimeDK, lifetimeHighestRank = GetInspectHonorData();
				local _, lifetimeHighestRank = GetPVPRankInfo(lifetimeHighestRank);
				local _, currentRank = GetPVPRankInfo(UnitPVPRank("target"));
				local currentRankProgress = GetInspectPVPRankProgress();
				VF_RealmPlayersData[VF_CurrentlyInspecting].HonorData = ""..currentRank..":"..currentRankProgress..":"..thisweekHK..":"..thisweekHonor..":"..lastweekHK..":"..lastweekHonor..":"..lastweekStanding..":"..lifetimeHK..":"..lifetimeDK..":"..lifetimeHighestRank..":"..todayHK..":"..todayDK..":"..yesterdayHK..":"..yesterdayHonor;
				--honor etc
				
				--extraData
				--/script VF_RD_DebugMessage(VF_GetMount("target"));
				local mount = VF_RP_GetMount("target");
				if(mount ~= "") then
					local mountData = "M:"..mount;
					if(VF_RealmPlayersData[VF_CurrentlyInspecting].ExtraData == nil) then
						VF_RealmPlayersData[VF_CurrentlyInspecting].ExtraData = mountData;
						--[[
						if(VF_RealmPlayersData[VF_CurrentlyInspecting].ItemsData ~= nil) then --not first time inspecting
							table.insert(VF_RecentlyInspected, "|cffff00ff"..mount);
						end--]]
					else
						if(string.find(VF_RealmPlayersData[VF_CurrentlyInspecting].ExtraData, mountData) == nil) then
							VF_RealmPlayersData[VF_CurrentlyInspecting].ExtraData = VF_RealmPlayersData[VF_CurrentlyInspecting].ExtraData..","..mountData;
							--[[
							if(VF_RealmPlayersData[VF_CurrentlyInspecting].ItemsData ~= nil) then --not first time inspecting
								table.insert(VF_RecentlyInspected, "|cffff00ff"..mount);
							end--]]
						end
					end
				end
				--extraData
				
				--items
				local allItems = "";
				local allItemsList = {};
				for slotName, slotID in VF_InventorySlots do
					local slotItem = GetInventoryItemLink("target", slotID);
					if(slotItem ~= nil) then
						local _, _, rubbish1, item, rubbish2 = string.find(slotItem, "(.*)|Hitem:(.*)|h%[(.*)");
						slotItem = item;
						allItems = allItems..slotID..":"..slotItem..",";
						table.insert(allItemsList, slotID..":"..slotItem..",");--Adding the extra comma for easier algorithm later
					--[[--realised this is not actually needed.
					elseif(slotID == 16 or slotID == 17 or slotID == 11 or slotID == 12 or slotID == 13 or slotID == 14) then
						--if multiple gears are recorded, make sure we dont do any misstakes for weapons, rings and trinkets
						allItems = allItems..slotID..":0:0:0:0,";
						table.insert(allItemsList, slotID..":0:0:0:0,");--Adding the extra comma for easier algorithm later
						--]]
					end
				end
				if(VF_RealmPlayersData[VF_CurrentlyInspecting].ItemsData ~= nil) then
					--if there allready exists ItemsData, lets add only new interesting data
					local startIndex, endIndex = string.find(VF_RealmPlayersData[VF_CurrentlyInspecting].ItemsData, allItems);
					if(startIndex == 1) then
						--Data allready exists in here, we are done
					elseif(startIndex ~= nil) then
						--Data allready exists in here, but not infront of everything else.
						local newItemsData = allItems..string.gsub(VF_RealmPlayersData[VF_CurrentlyInspecting].ItemsData, allItems, "");
						VF_RealmPlayersData[VF_CurrentlyInspecting].ItemsData = newItemsData;
					else
						--Data doesnt exist in here, lets add it infront of everything else
						local oldItems = VF_RealmPlayersData[VF_CurrentlyInspecting].ItemsData;
						for i, v in allItemsList do
							oldItems = string.gsub(oldItems, v, "");--Extra comma added earlier makes this easy
						end
						VF_RealmPlayersData[VF_CurrentlyInspecting].ItemsData = allItems..oldItems;
					end
				else
					VF_RealmPlayersData[VF_CurrentlyInspecting].ItemsData = allItems;
				end
				--items
				
				VF_RealmPlayersData[VF_CurrentlyInspecting].LastInspect = currTime;
				local currentDate = date("!%Y-%m-%d %X");
				if(VF_RealmPlayersData[VF_CurrentlyInspecting].DateTimeUTC == nil or string.sub(currentDate, 1, -5) ~= string.sub(VF_RealmPlayersData[VF_CurrentlyInspecting].DateTimeUTC, 1, -5)) then
					--VF_RealmPlayers_Debug("Successfully inspected "..VF_RP_ClassColor[class]..VF_CurrentlyInspecting);
					VF_RecentlyInspectedTime = currTime;
					table.insert(VF_RecentlyInspected, VF_ClassColor[class]..VF_CurrentlyInspecting);
				end
				VF_RealmPlayersData[VF_CurrentlyInspecting].DateTimeUTC = currentDate;
				VF_InspectDone(true);
			end
		else
			VF_InspectDone();
		end
	else
		if(currTime > VF_NextInspectTryTime) then
			if(VF_AutomaticInspection == true) then
				TargetNearestFriend();
			end
			VF_StartInspectingTarget();
			VF_NextInspectTryTime = currTime + 1;
		end
	end
	if(currTime - VF_RecentlyInspectedTime > 1 and table.getn(VF_RecentlyInspected) > 0) then
		if(table.getn(VF_RecentlyInspected) == 1) then
			VF_RealmPlayers_Debug("Successfully inspected "..VF_RecentlyInspected[1]);
		else
			local playerList = "";
			local playerCount = 0;
			for i, v in VF_RecentlyInspected do
				playerList = playerList..v.." ";
				playerCount = playerCount + 1;
			end
			VF_RealmPlayers_Debug("Successfully inspected("..playerCount.."): "..playerList);
		end
		VF_RecentlyInspected = {};
	end
end

else--if not string.find(GetBuildInfo(), "^1%.") then
	DEFAULT_CHAT_FRAME:AddMessage("ERROR! VF_RealmPlayers does not work on this WoW version! Only works on World of Warcraft Classic!");
	
	function VF_RealmPlayers_OnLoad()

	end
	function VF_RealmPlayers_OnEvent()

	end
	function VF_RealmPlayers_OnUpdate()

	end
end--if string.find(GetBuildInfo(), "^1%.") then
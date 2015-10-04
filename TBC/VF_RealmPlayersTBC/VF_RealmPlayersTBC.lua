VF_REALMPLAYERSVERSION = GetAddOnMetadata("VF_RealmPlayersTBC", "Version");

VF_RealmPlayersVersion = VF_REALMPLAYERSVERSION;

if string.find(GetBuildInfo(), "^2%.") then

VF_ClassColor = {
	["DRUID"] = "|cffff7d0a",
	["WARRIOR"] = "|cffc79c6e",
	["SHAMAN"] = "|cff0070de",
	["PRIEST"] = "|cffffffff",
	["MAGE"] = "|cff69ccf0",
	["ROGUE"] = "|cfffff569",
	["WARLOCK"] = "|cff9482ca",
	["HUNTER"] = "|cffabd473",
	["PALADIN"] = "|cfff58cba",
	["PET"] = "|cff00ff00",
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

function VF_RealmPlayers_Debug(_Text)
	if(VF_RealmPlayers_Settings["DebugMode"] == true) then
		DEFAULT_CHAT_FRAME:AddMessage(_Text);
	end
end

function VF_RealmPlayersTBC_OnLoad()
	this:RegisterEvent("PLAYER_TARGET_CHANGED");
	this:RegisterEvent("INSPECT_HONOR_UPDATE");
	this:RegisterEvent("VARIABLES_LOADED");
	SlashCmdList["REALMPLAYERS"] = VF_RealmPlayers_Command;
	SLASH_REALMPLAYERS1 = "/VFRP";
	SLASH_REALMPLAYERS2 = "/RealmPlayers";
	
	VF_RP_CreateGameToolTip();
end

function VF_RealmPlayersTBC_OnEvent()
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
	elseif(event == "INSPECT_HONOR_UPDATE") then
		VF_Inspect_Honor_Update = true;
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
		for i, v in pairs(VF_RealmPlayersData) do
			playerList = playerList..i..", ";
			playerCount = playerCount + 1;
		end
		DEFAULT_CHAT_FRAME:AddMessage("Players inspected("..playerCount.."): "..playerList);
	elseif(string.lower(arg1) == "printrecentlyinspected") then
		local currTime = GetTime();
		local playerList = "";
		local playerCount = 0;
		for i, v in pairs(VF_RealmPlayersData) do
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
	if (UnitIsPlayer("target") and CanInspect("target")) then
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

	VF_RP_GameToolTip:SetOwner(WorldFrame, "ANCHOR_NONE")

	VF_RP_GameToolTip.Llines = {}
	VF_RP_GameToolTip.Rlines = {}
	for i=1,30 do
		VF_RP_GameToolTip.Llines[i] = VF_RP_GameToolTip:CreateFontString("$parentTextLeft"..i, nil, "GameTooltipText")
		VF_RP_GameToolTip.Rlines[i] = VF_RP_GameToolTip:CreateFontString("$parentTextRight"..i, nil, "GameTooltipText")
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

function VF_RP_GetMount(_UnitID)
	for i = 1, 16 do
		local currBuff = UnitBuff(_UnitID, i);
		if(currBuff) then
			leftText, rightText = VF_RP_GetBuffText(_UnitID, i);
			if(table.getn(leftText) >= 2) then
				if(leftText[2] == "Increases speed by 100%." 
				or leftText[2] == "Increases speed by 60%." 
				or leftText[2] == "Increases flight speed by 280%." 
				or leftText[2] == "Increases flight speed by 310%." 
				or leftText[2] == "Slow and steady..." --Turtle mount
				) then
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
		local petIdentifierIndex = string.find(data[2], "'s Pet");
		if(petIdentifierIndex == nil) then
			petIdentifierIndex = string.find(data[2], "'s Minion");
		end
		if(petIdentifierIndex == nil) then
			petIdentifierIndex = string.find(data[2], "'s Companion");
		end
		if(petIdentifierIndex) then
			local petLevel = tonumber(string.sub(data[3], 7));
			if(petLevel == nil) then
				return nil;
			end
			if(UnitCreatureFamily(_UnitID) == nil and UnitStat(_UnitID, 3) == 0) then
				--Companion
				return {Name = data[1], Owner = string.sub(data[2], 1, petIdentifierIndex - 1), Level = petLevel, Type = "Companion"};
			else
				--Pet
				return {Name = data[1], Owner = string.sub(data[2], 1, petIdentifierIndex - 1), Level = petLevel, Type = "Pet"};
			end
		end
	end
	return nil;
end

function VF_GrabPlayerInspectData()

	--honor etc
	VF_RP_UpdateCharacterHonorData("player");
	--honor etc
	
	--arena etc
	VF_RP_UpdateCharacterArenaData("player");
	--arena etc

	--playerData
	VF_RP_UpdateCharacterInfoData("player");
	--playerData

	--extraData
	VF_RP_UpdateCharacterExtraData("player");
	--extraData

	--items
	VF_RP_UpdateCharacterItemsData("player");
	--items
end

function VF_RP_UpdateCharacterHonorData(_Target)
	local characterName = UnitName(_Target);
	
	local todayHK, todayHonor, yesterdayHK, yesterdayHonor, lifetimeHK;
	if(_Target == "player") then
		yesterdayHK, yesterdayHonor = GetPVPYesterdayStats();
		lifetimeHK = GetPVPLifetimeStats();
		todayHK, todayHonor = GetPVPSessionStats();
	else--if(_Target == "target")
		todayHK, todayHonor, yesterdayHK, yesterdayHonor, lifetimeHK = GetInspectHonorData();
	end
	VF_RealmPlayersData[characterName].HonorData = ""..todayHK..":"..todayHonor..":"..yesterdayHK..":"..yesterdayHonor..":"..lifetimeHK;
end

function VF_RP_UpdateCharacterArenaData(_Target)
	local characterName = UnitName(_Target);

	local teamName1, teamSize1, teamRating1, teamPlayed1, teamWins1, personalPlayed1, personalRating1, bg_red1, bg_green1, bg_blue1, emblem1, emblem_red1, emblem_green1, emblem_blue1, border1, border_red1, border_green1, border_blue1;
	local teamName2, teamSize2, teamRating2, teamPlayed2, teamWins2, personalPlayed2, personalRating2, bg_red2, bg_green2, bg_blue2, emblem2, emblem_red2, emblem_green2, emblem_blue2, border2, border_red2, border_green2, border_blue2;
	local teamName3, teamSize3, teamRating3, teamPlayed3, teamWins3, personalPlayed3, personalRating3, bg_red3, bg_green3, bg_blue3, emblem3, emblem_red3, emblem_green3, emblem_blue3, border3, border_red3, border_green3, border_blue3;
	if(_Target == "player") then
		local seasonTeamPlayed1, seasonTeamWins1, seasonPlayerPlayed1, teamRank1;
		local seasonTeamPlayed2, seasonTeamWins2, seasonPlayerPlayed2, teamRank2;
		local seasonTeamPlayed3, seasonTeamWins3, seasonPlayerPlayed3, teamRank3;

		teamName1, teamSize1, teamRating1, teamPlayed1, teamWins1, seasonTeamPlayed1, seasonTeamWins1, personalPlayed1, seasonPlayerPlayed1, teamRank1, personalRating1, bg_red1, bg_green1, bg_blue1, emblem1, emblem_red1, emblem_green1, emblem_blue1, border1, border_red1, border_green1, border_blue1 = GetArenaTeam(1);
		teamName2, teamSize2, teamRating2, teamPlayed2, teamWins2, seasonTeamPlayed2, seasonTeamWins2, personalPlayed2, seasonPlayerPlayed2, teamRank2, personalRating2, bg_red2, bg_green2, bg_blue2, emblem2, emblem_red2, emblem_green2, emblem_blue2, border2, border_red2, border_green2, border_blue2 = GetArenaTeam(2);
		teamName3, teamSize3, teamRating3, teamPlayed3, teamWins3, seasonTeamPlayed3, seasonTeamWins3, personalPlayed3, seasonPlayerPlayed3, teamRank3, personalRating3, bg_red3, bg_green3, bg_blue3, emblem3, emblem_red3, emblem_green3, emblem_blue3, border3, border_red3, border_green3, border_blue3 = GetArenaTeam(3);
	else--if(_Target == "target")
		teamName1, teamSize1, teamRating1, teamPlayed1, teamWins1, personalPlayed1, personalRating1, bg_red1, bg_green1, bg_blue1, emblem1, emblem_red1, emblem_green1, emblem_blue1, border1, border_red1, border_green1, border_blue1 = GetInspectArenaTeamData(1)
		teamName2, teamSize2, teamRating2, teamPlayed2, teamWins2, personalPlayed2, personalRating2, bg_red2, bg_green2, bg_blue2, emblem2, emblem_red2, emblem_green2, emblem_blue2, border2, border_red2, border_green2, border_blue2 = GetInspectArenaTeamData(2)
		teamName3, teamSize3, teamRating3, teamPlayed3, teamWins3, personalPlayed3, personalRating3, bg_red3, bg_green3, bg_blue3, emblem3, emblem_red3, emblem_green3, emblem_blue3, border3, border_red3, border_green3, border_blue3 = GetInspectArenaTeamData(3)
	end
	
	local arenaStr = "";
	if(teamName1 ~= nil) then
		arenaStr = arenaStr..teamName1..":"..teamSize1..":"..teamRating1..":"..teamPlayed1..":"..teamWins1..":"..personalPlayed1..":"..personalRating1..",";
	end
	if(teamName2 ~= nil) then
		arenaStr = arenaStr..teamName2..":"..teamSize2..":"..teamRating2..":"..teamPlayed2..":"..teamWins2..":"..personalPlayed2..":"..personalRating2..",";
	end
	if(teamName3 ~= nil) then
		arenaStr = arenaStr..teamName3..":"..teamSize3..":"..teamRating3..":"..teamPlayed3..":"..teamWins3..":"..personalPlayed3..":"..personalRating3..",";
	end
	if(arenaStr ~= "") then
		VF_RealmPlayersData[characterName].ArenaData = arenaStr;
	end
end

function VF_RP_UpdateCharacterExtraData(_Target)
	local characterName = UnitName(_Target);
	local mount = VF_RP_GetMount(_Target);
	if(mount ~= "") then
		local mountData = "M:"..mount;
		if(VF_RealmPlayersData[characterName].ExtraData == nil) then
			VF_RealmPlayersData[characterName].ExtraData = mountData;
		else
			if(string.find(VF_RealmPlayersData[characterName].ExtraData, mountData) == nil) then
				VF_RealmPlayersData[characterName].ExtraData = VF_RealmPlayersData[characterName].ExtraData..","..mountData;
			end
		end
	end
end

function VF_RP_UpdateCharacterInfoData(_Target)
	local characterName = UnitName(_Target);
	local _, race = UnitRace(_Target);
	local _, class = UnitClass(_Target);
	local sex = UnitSex(_Target);
	local level = UnitLevel(_Target);
	local guildname, guildtitle, guildrank = GetGuildInfo(_Target);
	local realmName = GetRealmName();
	if(guildname == nil) then guildname = "nil"; end
	if(guildtitle == nil) then guildtitle = "nil"; end
	if(guildrank == nil) then guildrank = 0; end
	VF_RealmPlayersData[characterName].PlayerData = race..":"..class..":"..guildname..":"..guildtitle..":"..guildrank..":"..sex..":"..level..":"..realmName;
end

function VF_RP_UpdateCharacterItemsData(_Target)
	local characterName = UnitName(_Target);

	local allItems = "";
	local allItemsList = {};
	for slotName, slotID in pairs(VF_InventorySlots) do
		local slotItem = GetInventoryItemLink(_Target, slotID);
		if(slotItem ~= nil) then
			local _, _, rubbish1, item, rubbish2 = string.find(slotItem, "(.*)|Hitem:(.*)|h%[(.*)");
			slotItem = item;
			allItems = allItems..slotID..":"..slotItem..",";
			table.insert(allItemsList, slotID..":"..slotItem..",");--Adding the extra comma for easier algorithm later
		end
	end

	if(VF_RealmPlayersData[characterName].ItemsData ~= nil) then
		--if there allready exists ItemsData, lets add only new interesting data
		local startIndex, endIndex = string.find(VF_RealmPlayersData[characterName].ItemsData, allItems);
		if(startIndex == 1) then
			--Data allready exists in here, we are done
		elseif(startIndex ~= nil) then
			--Data allready exists in here, but not infront of everything else.
			local newItemsData = allItems..string.gsub(VF_RealmPlayersData[characterName].ItemsData, allItems, "");
			VF_RealmPlayersData[characterName].ItemsData = newItemsData;
		else
			--Data doesnt exist in here, lets add it infront of everything else
			local oldItems = VF_RealmPlayersData[characterName].ItemsData;
			for i, v in pairs(allItemsList) do
				oldItems = string.gsub(oldItems, v, "");--Extra comma added earlier makes this easy
			end
			VF_RealmPlayersData[characterName].ItemsData = allItems..oldItems;
		end
	else
		VF_RealmPlayersData[characterName].ItemsData = allItems;
	end
end

function VF_RP_UpdateCharacterTalentsData(_Target)
	local characterName = UnitName(_Target);
	local talentData = "";
	
	function _GetTalentPageData(_PageIndex, _IsPlayer)
		local talentData = "";
		local numTalents = GetNumTalents(_PageIndex, _IsPlayer ~= true);
		for i=1, numTalents do
			local name, iconTexture, tier, column, rank, maxRank, isExceptional, meetsPrereq = GetTalentInfo(_PageIndex, i, _IsPlayer ~= true);
			talentData = talentData..rank;
		end
		return talentData;
	end

	if(_Target == "player") then
		--local tabName, tabTexture, tabPoints, tabFileName = GetTalentTabInfo(currInspectTab, false);
		talentData = talentData.._GetTalentPageData(1, true);
		talentData = talentData.._GetTalentPageData(2, true);
		talentData = talentData.._GetTalentPageData(3, true);
	else
		talentData = talentData.._GetTalentPageData(1, false);
		talentData = talentData.._GetTalentPageData(2, false);
		talentData = talentData.._GetTalentPageData(3, false);
	end

	VF_RealmPlayersData[characterName].TalentsData = talentData;
end

function VF_RP_UpdateCharacterMetaData(_Target)
	local characterName = UnitName(_Target);
	local _, characterClass = UnitClass(_Target);
	local currTime = GetTime();

	VF_RealmPlayersData[characterName].LastInspect = currTime;
	local currentDate = date("!%Y-%m-%d %X");
	if(VF_RealmPlayersData[characterName].DateTimeUTC == nil or string.sub(currentDate, 1, -5) ~= string.sub(VF_RealmPlayersData[characterName].DateTimeUTC, 1, -5)) then
		VF_RecentlyInspectedTime = currTime;
		table.insert(VF_RecentlyInspected, VF_ClassColor[characterClass]..characterName);
	end
	VF_RealmPlayersData[characterName].DateTimeUTC = currentDate;
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

VF_RealmPlayers_HasBeenWarnedOnce = false;
VF_RealmPlayers_Playername = "Unknown";
VF_RealmPlayers_Settings = {["DebugMode"] = true,["MaxDatabase"] = 1000};
VF_RealmPlayersData = {};
local VF_NextInspectTryTime = 0;
local VF_AutomaticInspection = nil;
function VF_RealmPlayersTBC_OnUpdate()
	local currTime = GetTime();
	if(VF_CurrentlyInspecting ~= nil) then
		local affectingCombat = UnitAffectingCombat("player");
		local inspectionFrequency = 5;
		if(affectingCombat == true) then
			inspectionFrequency = 240;
		end
		if(VF_RealmPlayersData[VF_CurrentlyInspecting] == nil or currTime - VF_RealmPlayersData[VF_CurrentlyInspecting].LastInspect > inspectionFrequency or currTime < VF_RealmPlayersData[VF_CurrentlyInspecting].LastInspect or VF_Inspect_Honor_Update == true) then --3600) then
			if(UnitName("target") ~= VF_CurrentlyInspecting) then
				VF_InspectDone();
				return;
			end
			if(VF_CurrentlyInspectingStage == 0) then
				if(UnitName("target") == UnitName("player")) then
					VF_CurrentlyInspectingStage = 2;
				elseif(CheckInteractDistance("target", 1)) then
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
					GetInspectArenaTeamData(1);
					GetInspectArenaTeamData(2);
					GetInspectArenaTeamData(3);
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
				VF_Inspect_Honor_Update = false;
				if(UnitName("target") == UnitName("player")) then
					VF_RP_UpdateCharacterHonorData("player");
					VF_RP_UpdateCharacterArenaData("player");
					VF_RP_UpdateCharacterInfoData("player");
					VF_RP_UpdateCharacterExtraData("player");
					VF_RP_UpdateCharacterItemsData("player");
					VF_RP_UpdateCharacterTalentsData("player");
					VF_RP_UpdateCharacterMetaData("player");
				else
					VF_RP_UpdateCharacterHonorData("target");
					VF_RP_UpdateCharacterArenaData("target");
					VF_RP_UpdateCharacterInfoData("target");
					VF_RP_UpdateCharacterExtraData("target");
					VF_RP_UpdateCharacterItemsData("target");
					VF_RP_UpdateCharacterTalentsData("target");
					VF_RP_UpdateCharacterMetaData("target");
				end
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
			for i, v in pairs(VF_RecentlyInspected) do
				playerList = playerList..v.." ";
				playerCount = playerCount + 1;
			end
			VF_RealmPlayers_Debug("Successfully inspected("..playerCount.."): "..playerList);
		end
		VF_RecentlyInspected = {};
	end
end

else--if not string.find(GetBuildInfo(), "^2%.") then
	DEFAULT_CHAT_FRAME:AddMessage("ERROR! VF_RealmPlayersTBC does not work on this WoW version! Only works on World of Warcraft TBC!");
	
	function VF_RealmPlayersTBC_OnLoad()

	end
	function VF_RealmPlayersTBC_OnEvent()

	end
	function VF_RealmPlayersTBC_OnUpdate()

	end
end--if string.find(GetBuildInfo(), "^2%.") then
VF_BGSTATSVERSION = GetAddOnMetadata("VF_BGStats", "Version");

--VF_BGStatsFrame = nil;

VF_BGStats_Settings = {["DebugMode"] = false};
function VF_BGS_DebugMessage(_Message)
	if(VF_BGStats_Settings["DebugMode"] == true) then
		DEFAULT_CHAT_FRAME:AddMessage("VF_BGS_Debug: ".._Message, 1, 1, 0);
	end
end
function VF_BGS_Message(_Message)
	DEFAULT_CHAT_FRAME:AddMessage("VF_BGS: ".._Message, 1, 1, 0);
end

function VF_BGStats_OnLoad()
	this:RegisterEvent("VARIABLES_LOADED");
	this:RegisterEvent("UPDATE_BATTLEFIELD_SCORE");
	this:RegisterEvent("UPDATE_WORLD_STATES");
	this:RegisterEvent("PLAYER_ENTERING_WORLD");
end

VF_BGS_OldSW_SyncReset = SW_SyncReset;
function VF_BGS_NewSW_SyncReset(newSessID, newName)
	--Do something?
	VF_BGS_OldSW_SyncReset(newSessID, newName);
end
SW_SyncReset = VF_BGS_NewSW_SyncReset

VF_BGS_OldSW_NukeDataCollection = SW_NukeDataCollection;
function VF_BGS_NewSW_NukeDataCollection()
	--Do something?
	VF_BGS_OldSW_NukeDataCollection();
end
SW_NukeDataCollection = VF_BGS_NewSW_NukeDataCollection;

function VF_BGS_ClearData()
	VF_BGStats_Data = {};
	VF_BGS_LastRecorded = {};
	VF_BGS_CreateNewSession();
	VF_BGS_Message("Cleared all saved data!");
end

function VF_BGS_CreateNewSession()
	table.insert(VF_BGStats_Data, 1, {});
	local currentDate = date("!%Y-%m-%d %X");
	local currentZone = GetZoneText();
	local currentPlayer = UnitName("player");
	local realmName = GetRealmName();
	local startTime = VF_BGS_GetTime_S();
	local serverHour, serverMinute = GetGameTime();
	local sessionInfo = "Session:Info:Date="..currentDate..",ServerTime="..serverHour..":"..serverMinute..",Time="..startTime..",Realm="..realmName..",Player="..currentPlayer..",AddonVersion="..VF_BGStats_Version..",";
	if(currentZone ~= nil and currentZone ~= "") then
		sessionInfo = sessionInfo.."Zone="..currentZone..",";
	end
	table.insert(VF_BGStats_Data[1], 1, sessionInfo);
	VF_BGS_DebugMessage("Created new Session");
end

function VF_ParseDate(dateStr)
	local _, _, currYear, currMonth, currDay, _ = string.find(dateStr, "(.*)-(.*)-(.*) (.*)");
	return {Year = tonumber(currYear), Month = tonumber(currMonth), Day = tonumber(currDay)};
end

local VF_BGS_SessionData = {};
local VF_BGS_UnitIDCounter = 1;

local function VF_BGS_GetUnitData(_Name)
	if(_Name == nil) then
		return nil;
	end
	local addedString = nil;
	if(VF_BGS_SessionData[_Name] == nil) then
		VF_BGS_SessionData[_Name] = {};
		VF_BGS_SessionData[_Name].UnitID = VF_BGS_UnitIDCounter;
		VF_BGS_UnitIDCounter = VF_BGS_UnitIDCounter + 1;
		addedString = _Name.."="..VF_BGS_SessionData[_Name].UnitID;
	end
	return VF_BGS_SessionData[_Name], addedString;
end

local function VF_BGS_DeltaUnitDataChange(_UnitData, _DataIndex, _Value, _Time)
	if(_UnitData[_DataIndex] == nil) then
		_UnitData[_DataIndex] = {Value = _Value; Time = _Time;}
		if(_Value == 0) then
			return "";
		end
		return _Value;
	end
	local deltaValue = _Value - _UnitData[_DataIndex].Value;
	if(deltaValue ~= 0) then
		_UnitData[_DataIndex].Value = _Value;
		_UnitData[_DataIndex].Time = _Time;
	end
	if(deltaValue == 0) then
		return "";
	end
	return deltaValue;
end

local VF_BGS_DataIndex_KillingBlows = 1;
local VF_BGS_DataIndex_HonorableKills = 2;
local VF_BGS_DataIndex_Deaths = 3;
local VF_BGS_DataIndex_HonorGained = 4;
local VF_BGS_DataIndex_BGStat1 = 5;
local VF_BGS_DataIndex_BGStat2 = 6;
local VF_BGS_DataIndex_BGStat3 = 7;
local VF_BGS_DataIndex_BGStat4 = 8;

function VF_BGStats_SafeOnEvent(event)--, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9)
	if(event=="VARIABLES_LOADED") then
		VF_BGStats_Version = VF_BGSTATSVERSION;
		if(VF_BGStats_Settings == nil) then
			VF_BGStats_Settings = {};
		end
		if(VF_BGStats_Data == nil) then
			VF_BGStats_Data = {};
		end
		if(VF_BGStats_ErrorLog == nil) then
			VF_BGStats_ErrorLog = {};
		end
		VF_BGS_CreateNewSession();
		VF_BGS_Message("VF_BGStats(/VFBGS) version "..VF_BGStats_Version.." loaded!");
	elseif(event=="UPDATE_BATTLEFIELD_SCORE") then
		VF_BGS_DebugMessage("UPDATE_BATTLEFIELD_SCORE");
		if ( GetBattlefieldWinner() ) then
			--We have a winner
			local battlefieldWinner = GetBattlefieldWinner(); --nil == noone, 0 == Horde, 1 == Alliance
			if(battlefieldWinner == 0) then
				--Horde

			else
				--Alliance

			end
		end
		
		local time = VF_BGS_GetTime_S();
		
		local totalsResult = "";

		local numScores = GetNumBattlefieldScores();
		for i=1, numScores do
			local name, killingBlows, honorableKills, deaths, honorGained, faction, rank, race, class = GetBattlefieldScore(i);
			local rankName, rankNumber = GetPVPRankInfo(rank, faction);
			local unitData, addedString = VF_BGS_GetUnitData(name);
			if(addedString ~= nil) then
				totalsResult = totalsResult..addedString..","
			end
			if(unitData ~= nil) then
				local deltaKB = VF_BGS_DeltaUnitDataChange(unitData, VF_BGS_DataIndex_KillingBlows, killingBlows, time);
				local deltaHK = VF_BGS_DeltaUnitDataChange(unitData, VF_BGS_DataIndex_HonorableKills, honorableKills, time);
				local deltaDeaths = VF_BGS_DeltaUnitDataChange(unitData, VF_BGS_DataIndex_Deaths, deaths, time);
				local deltaHonor = VF_BGS_DeltaUnitDataChange(unitData, VF_BGS_DataIndex_HonorGained, honorGained, time);
				
				-- first call RequestBattlefieldScoreData()
				--MAX_NUM_STAT_COLUMNS == 7
				--[[
				for j=1, MAX_NUM_STAT_COLUMNS do
					local columnData = GetBattlefieldStatData(i, j);
					if(columnData > 0) then
						
					end
				end
				--]]

				local deltaStat1 = "";
				local deltaStat2 = "";
				local deltaStat3 = "";
				local deltaStat4 = "";

				local zone = "Warsong Gulch";
				if(zone == "Warsong Gulch") then
					local flagCaptures = GetBattlefieldStatData(i, 1);
					local flagReturns = GetBattlefieldStatData(i, 2);

					deltaStat1 = VF_BGS_DeltaUnitDataChange(unitData, VF_BGS_DataIndex_BGStat1, flagCaptures, time);
					deltaStat2 = VF_BGS_DeltaUnitDataChange(unitData, VF_BGS_DataIndex_BGStat2, flagReturns, time);
				elseif(zone == "Arathi Basin") then
					local basesAssaulted = GetBattlefieldStatData(i, 1);
					local basesDefended = GetBattlefieldStatData(i, 2);

					deltaStat1 = VF_BGS_DeltaUnitDataChange(unitData, VF_BGS_DataIndex_BGStat1, basesAssaulted, time);
					deltaStat2 = VF_BGS_DeltaUnitDataChange(unitData, VF_BGS_DataIndex_BGStat2, basesDefended, time);
				elseif(zone == "Alterac Valley") then
					local gyAssaulted = GetBattlefieldStatData(i, 1);
					local gyDefended = GetBattlefieldStatData(i, 2);
					local towerAssaulted = GetBattlefieldStatData(i, 3);
					local towerDefended = GetBattlefieldStatData(i, 4);
					local minesCaptured = GetBattlefieldStatData(i, 5); --"always" 0
					local leadersKilled = GetBattlefieldStatData(i, 6); --"always" 0
					local secondaryObjectives = GetBattlefieldStatData(i, 7); --"always" 0

					deltaStat1 = VF_BGS_DeltaUnitDataChange(unitData, VF_BGS_DataIndex_BGStat1, gyAssaulted, time);
					deltaStat2 = VF_BGS_DeltaUnitDataChange(unitData, VF_BGS_DataIndex_BGStat2, gyDefended, time);
					deltaStat3 = VF_BGS_DeltaUnitDataChange(unitData, VF_BGS_DataIndex_BGStat3, towerAssaulted, time);
					deltaStat4 = VF_BGS_DeltaUnitDataChange(unitData, VF_BGS_DataIndex_BGStat4, towerDefended, time);
				end


				if(deltaKB ~= "" or deltaHK ~= "" or deltaDeaths ~= "" or deltaHonor ~= "" or deltaStat1 ~= "" or deltaStat2 ~= "" or deltaStat3 ~= "" or deltaStat4 ~= "") then
					local unitResult = unitData.UnitID.." "..killingBlows.." "..honorableKills.." "..deaths.." "..honorGained.." "..deltaStat1.." "..deltaStat2.." "..deltaStat3.." "..deltaStat4;
					totalsResult = totalsResult..unitResult..",";
				end
			end
		end
		table.insert(VF_BGStats_Data[1], 1, _Time..":"..totalsResult);
	end
end

--This should never be used to try call functions that return values
function VF_BGS_ExecuteSub(func, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9)
	local retOK, errorText = pcall(func, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9);
	if(retOK) then
	
	else
		if(table.getn(VF_BGStats_ErrorLog) > 1024) then
			VF_BGStats_ErrorLog[table.getn(VF_BGStats_ErrorLog)] = nil;
		end
		local newError = {};
		newError.Date = date("!%Y-%m-%d %X");
		newError.Time = VF_BGS_GetTime_S();
		newError.ErrorText = errorText;
		
		local latestError = VF_BGStats_ErrorLog[1];
		if(latestError ~= nil) then
			if(latestError.Time == newError.Time and string.find(latestError.ErrorText, newError.ErrorText, 1, true)) then
				latestError.ErrorText = "VF_DUPE->"..latestError.ErrorText;
				newError = nil;
			end
		end
		if(newError ~= nil) then
			table.insert(VF_BGStats_ErrorLog, 1, newError);
			VF_BGS_Message("There was an error, please take a screenshot of the ErrorMessage and send to Dilatazu! ErrorMessage: "..newError.ErrorText);
		end
	end
end

function VF_BGStats_OnEvent()
	VF_BGS_ExecuteSub(VF_BGStats_SafeOnEvent, event, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9);
end

VF_BGStats_Data = {};
VF_BGStats_ErrorLog = {};

function VF_BGS_GetTime_S()
	local currTime = GetTime();
	local currTime_S = math.floor(currTime);
	return currTime_S;
end

function VF_BGStats_SafeOnUpdate()
	--Do something?
end
function VF_BGStats_OnUpdate()
	VF_BGS_ExecuteSub(VF_BGStats_SafeOnUpdate);
end


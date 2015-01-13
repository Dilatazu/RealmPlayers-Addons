VF_BGSTATSVERSION = GetAddOnMetadata("VF_BGStats", "Version");

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

function VF_RD_ClearData()
	VF_BGStatsData = {};
	VF_BGS_LastRecorded = {};
	VF_BGS_CreateNewSession();
	VF_BGS_Message("Cleared all saved data!");
end

function VF_BGS_CreateNewSession()
	table.insert(VF_BGStatsData, 1, {});
	local currentDate = date("!%Y-%m-%d %X");
	local currentZone = GetZoneText();
	local currentPlayer = UnitName("player");
	local realmName = GetRealmName();
	local startTime = VF_BGS_GetTime_S();
	local serverHour, serverMinute = GetGameTime();
	local sessionInfo = "Session:Info:Date="..currentDate..",ServerTime="..serverHour..":"..serverMinute..",Time="..startTime..",Realm="..realmName..",Player="..currentPlayer..",AddonVersion="..VF_BGStatsVersion..",";
	if(currentZone ~= nil and currentZone ~= "") then
		sessionInfo = sessionInfo.."Zone="..currentZone..",";
	end
	table.insert(VF_BGStatsData[1], 1, sessionInfo);
	VF_BGS_DebugMessage("Created new Session");
end

function VF_ParseDate(dateStr)
	local _, _, currYear, currMonth, currDay, _ = string.find(dateStr, "(.*)-(.*)-(.*) (.*)");
	return {Year = tonumber(currYear), Month = tonumber(currMonth), Day = tonumber(currDay)};
end

function VF_BGStats_SafeOnEvent(event, arg1, arg2)
	local eventText = arg1;
	if(event=="VARIABLES_LOADED") then
		VF_BGStatsVersion = VF_RAIDDAMAGEVERSION;
		if(VF_BGStats_Settings == nil) then
			VF_BGStats_Settings = {};
		end
		if(VF_BGStatsData == nil) then
			VF_BGStatsData = {};
		end
		if(VF_BGStats_ErrorLog == nil) then
			VF_BGStats_ErrorLog = {};
		end
		VF_BGS_CreateNewSession();
		DEFAULT_CHAT_FRAME:AddMessage("VF_RaidDamage(/VFRD) version "..VF_RaidDamageVersion.." loaded!", 1, 1, 0);
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
	VF_BGS_ExecuteSub(VF_BGStats_SafeOnEvent, event, arg1, arg2);
end

VF_BGStatsData = {};
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


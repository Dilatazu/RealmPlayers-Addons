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
	
	--UBRS
	--[[
	["Pyroguard Emberseer"] = VF_RD_MobType_Boss,
	["Warchief Rend Blackhand"] = VF_RD_MobType_Boss,
	["The Beast"] = VF_RD_MobType_Boss,
	["General Drakkisath"] = VF_RD_MobType_Boss,
	--]]
}

VF_RD_RaidZones = {
	["Molten Core"] = true,
	["Onyxia's Lair"] = true,
	["Blackwing Lair"] = true,
	["Zul'Gurub"] = true,
	["Ruins of Ahn'Qiraj"] = true,
	["Temple of Ahn'Qiraj"] = true,
	["Naxxramas"] = true,
}

VF_RaidDamage_Settings = {["DebugMode"] = false};
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
	this:RegisterEvent("VARIABLES_LOADED");
	this:RegisterEvent("CHAT_MSG_MONSTER_YELL");
	this:RegisterEvent("CHAT_MSG_COMBAT_HOSTILE_DEATH");
	this:RegisterEvent("ZONE_CHANGED_NEW_AREA");
	this:RegisterEvent("UPDATE_INSTANCE_INFO");
	this:RegisterEvent("RAID_ROSTER_UPDATE");
	this:RegisterEvent("CHAT_MSG_LOOT");
	
	SLASH_RAIDDAMAGE_CLEAR1 = "/VFRD_Clear";
	SLASH_RAIDDAMAGE_CLEAR2 = "/RaidDamage_Clear";
	SLASH_RAIDDAMAGE_CLEAR3 = "/VFRDClear";
	SLASH_RAIDDAMAGE_HELP1 = "/VFRD";
	SLASH_RAIDDAMAGE_HELP2 = "/VFRD_Help";
	SLASH_RAIDDAMAGE_PRINTRECORDED1 = "/VFRD_PrintRecorded";
	--this:RegisterEvent("");
end

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

VF_RD_YellEvents = {
	--MC
	["Majordomo Executus"] = {
		["Reckless mortals"] = VF_RD_YellEvents_Start,
		["Impossible! Stay your attack"] = VF_RD_YellEvents_End,
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
--[[VF_RD_Onyxia_Phase2_YELL = "from above";
VF_RD_Onyxia_Phase3_YELL = "It seems you'll need another lesson";
VF_RD_Majordomo_Start_YELL = "Reckless mortals, none may challenge the sons of the living flame!";
VF_RD_Majordomo_Death_YELL = "Impossible! Stay your attack mortals!";
VF_RD_Ragnaros_Start_YELL = "NOW FOR YOU, INSECTS.";
VF_RD_Ragnaros_Submerge_YELL = "COME FORTH";--]]

VF_RD_OldSW_SyncReset = SW_SyncReset;
function VF_RD_NewSW_SyncReset(newSessID, newName)
	VF_RD_ExecuteSub(VF_RD_LogRaidDamage, "SWReset", VF_RD_GetTime_S());
	VF_RD_OldSW_SyncReset(newSessID, newName);
	VF_RD_ExecuteSub(VF_RD_ResetLastRecordedCacheForAccumulaters);
end
SW_SyncReset = VF_RD_NewSW_SyncReset

VF_RD_OldSW_NukeDataCollection = SW_NukeDataCollection;
function VF_RD_NewSW_NukeDataCollection()
	VF_RD_OldSW_NukeDataCollection();
	VF_RD_LastRecorded = {};
	VF_RD_ExecuteSub(VF_RD_CreateNewSession);
	VF_RD_DebugMessage("Started a new session because of SWStats nuke");
end
SW_NukeDataCollection = VF_RD_NewSW_NukeDataCollection;

--[[VF_RD_OldKTM_Clear = klhtm.table.clearraidtable;
function VF_RD_NewKTM_Clear()
	VF_RD_OldKTM_Clear();
	VF_RD_ResetLastRecordedCacheForDataIndex(VF_RD_DataIndex_Threat);
end
klhtm.table.clearraidtable = VF_RD_NewKTM_Clear;
--]]

function VF_RD_Help()
	VF_RD_Message("VF RaidDamage Version = "..VF_RaidDamageVersion);
	VF_RD_Message("/VFRD_PrintRecorded - Prints all the boss fights that has been recorded so far(only counts actual boss kills)");
	VF_RD_Message("/VFRD_Clear - clears all data from all sessions, this removes all data saved in SavedVariables/VF_RaidDamage.lua");
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

function VF_RD_CreateNewSession()
	table.insert(VF_RaidDamageData, 1, {});
	local currentDate = date("!%Y-%m-%d %X");
	local currentZone = GetZoneText();
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
	VF_RD_DebugMessage("Created new Session");
end

function VF_ParseDate(dateStr)
	local _, _, currYear, currMonth, currDay, _ = string.find(dateStr, "(.*)-(.*)-(.*) (.*)");
	return {Year = tonumber(currYear), Month = tonumber(currMonth), Day = tonumber(currDay)};
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

function VF_RD_DetermineLogging()
	local currZone = GetZoneText();
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
		VF_RD_CleanupSessions();
		VF_RD_CreateNewSession();
		DEFAULT_CHAT_FRAME:AddMessage("VF_RaidDamage(/VFRD) version "..VF_RaidDamageVersion.." loaded!", 1, 1, 0);
	elseif(event == "ZONE_CHANGED_NEW_AREA") then
		local currentZone = GetZoneText();
		if(string.find(VF_RaidDamageData[1][1], "Session:Info:")) then
			VF_RaidDamageData[1][1] = VF_RaidDamageData[1][1].."Zone="..currentZone..",";
		else
			table.insert(VF_RaidDamageData[1], 1, "Session:Info:Zone="..currentZone..",");
		end
	elseif(event == "CHAT_MSG_MONSTER_YELL") then
		local monsterName = arg2;
	
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
				if(string.find(VF_RaidDamageData[1][1], "Session:Info:")) then
					VF_RaidDamageData[1][1] = VF_RaidDamageData[1][1].."RaidID"..i.."="..raidName.."-"..raidID.."-"..raidRemaining..",";
				else
					table.insert(VF_RaidDamageData[1], 1, "Session:Info:RaidID"..i.."="..raidName.."-"..raidID.."-"..raidRemaining..",");
				end
			end
			VF_RD_SaveInstanceInfoBool = false;
		end
	elseif(event == "CHAT_MSG_COMBAT_HOSTILE_DEATH") then
		local mobName;
		_, _, mobName = string.find(eventText, string.gsub(UNITDIESOTHER, "%%s", "(.+)"));
		
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
	elseif(event == "RAID_ROSTER_UPDATE") then
		local oldRaidMembers = VF_RD_RaidMembers;
		VF_RD_RaidMembers = VF_RD_GetRaidMembers();
		if(VF_RD_RaidMembers ~= oldRaidMembers and VF_RD_RaidMembers ~= "") then
			VF_RD_RaidMembersChanged = VF_RD_GetTime_S();
		end
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
				local unitName = SW_StrTable:getStr(unitID);
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
		
		for i = 1, 40 do
			local currUnitID = "raid"..i.."target";
			local unitTarget = UnitName(currUnitID);
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
		local unitName = UnitName(currUnitID);
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
				if(addData.Health ~= nil and addData.MaxHealth ~= nil and addData.Health <= 0 and addData.MaxHealth > 1000) then
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
			local unitName = SW_StrTable:getStr(unitID);
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
			
			local threatValue = klhtm.table.raiddata[unitName];
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
	for i = 1, 40 do
		local currUnitID = "raid"..i;
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
		for i = 1, 40 do
			local currUnitID = "raid"..i.."target";
			local currName = UnitName(currUnitID);
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

function VF_RD_GetRaidMembers()
	local raidMembers = "";
	for i = 1, 40 do
		local currName = UnitName("raid"..i);
		if(currName ~= nil) then
			local currID = SW_StrTable:hasID(currName);
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

VF_RD_NextUpdateTime = nil;
VF_RD_NextBossCheckTime = nil;
function VF_RaidDamage_SafeOnUpdate()
	VF_RD_SaveServerTime_Update();
	VF_RD_UpdateSaveInstanceInfo();
	if(GetNumRaidMembers() ~= 0) then
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

function VF_RD_LootReceived()
	local _, _, playerName, itemLink = string.find(arg1, "([^%s]+) receives loot: (.+)%.");
	
	local itemID = "0";
	if not ( playerName == nil) then
		local _, _, rubbish1, tempItemID, rubbish2 = string.find(itemLink, "(.*)|Hitem:(.*)|h%[(.*)");
		itemID = tempItemID;
	else
		_, _, itemLink = string.find(arg1, "You receive loot: (.+)%.");
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
	if(GetNumRaidMembers() ~= 0 and itemQuality ~= nil and itemQuality >= 4) then
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
	local mobName = UnitName("target");
	if(not(mobName)) then
		if(VF_RD_LastKilledBoss == "Majordomo Executus" and GetZoneText() == "Molten Core") then
			mobName = "Majordomo Executus";
		elseif(VF_RD_LastKilledBoss == "The Four Horsemen" and GetZoneText() == "Naxxramas") then
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
			if(GetNumRaidMembers() ~= 0) then
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
	VF_RD_ExecuteSub(VF_RD_SafeSaveLoot);
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
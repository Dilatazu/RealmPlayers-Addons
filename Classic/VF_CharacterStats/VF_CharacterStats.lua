VF_CHARACTERSTATSVERSION = GetAddOnMetadata("VF_CharacterStats", "Version");

VF_CharacterStatsVersion = VF_CHARACTERSTATSVERSION;

if string.find(GetBuildInfo(), "^1%.") then

function VF_CharacterStats_Message(_Text)
	DEFAULT_CHAT_FRAME:AddMessage(_Text);
end

function VF_CharacterStats_OnLoad()
	this:RegisterEvent("VARIABLES_LOADED");
	SlashCmdList["CHARACTERSTATS"] = VF_CharacterStats_Command;
	SLASH_CHARACTERSTATS1 = "/VFCS";
	SLASH_CHARACTERSTATS2 = "/CharacterStats";
end

function VF_CharacterStats_OnEvent()
	if(event == "VARIABLES_LOADED") then
		if(VF_CharacterStatsData == nil) then
			VF_CharacterStatsData = {};
		end
		VF_CharacterStatsData.Version = VF_CHARACTERSTATSVERSION;
		DEFAULT_CHAT_FRAME:AddMessage("VF_CharacterStats(/CharacterStats) version "..VF_CharacterStatsVersion.." loaded!");
	end
end

function VF_CharacterStats_Command(arg1)
	
end

function VF_CharacterStats_OnUpdate()

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
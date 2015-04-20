VF_CHARACTERSTATSVERSION = GetAddOnMetadata("VF_CharacterStats", "Version");

VF_CharacterStatsVersion = VF_CHARACTERSTATSVERSION;

if string.find(GetBuildInfo(), "^1%.") then

VF_ThisRealm = "";
VF_ThisPlayer = "";
VF_ThisData = nil;

function VF_CharacterStats_Message(_Text)
	DEFAULT_CHAT_FRAME:AddMessage(_Text);
end

function VF_CharacterStats_OnLoad()
	this:RegisterEvent("VARIABLES_LOADED");
	this:RegisterEvent("BAG_UPDATE");
	this:RegisterEvent("BANKFRAME_OPENED");
	this:RegisterEvent("PLAYERBANKSLOTS_CHANGED");
	this:RegisterEvent("PLAYERBANKBAGSLOTS_CHANGED");
	this:RegisterEvent("PLAYER_MONEY");
	this:RegisterEvent("MAIL_SEND_SUCCESS");
	this:RegisterEvent("MAIL_INBOX_UPDATE");
	SlashCmdList["CHARACTERSTATS"] = VF_CharacterStats_Command;
	SLASH_CHARACTERSTATS1 = "/VFCS";
	SLASH_CHARACTERSTATS2 = "/CharacterStats";
end

VF_MailStatus = {};
VF_OldSendMail = nil;

function VF_NewSendMail(_Character, _Subject, _Body)
	VF_MailStatus.Character = _Character;
	VF_MailStatus.Subject = _Subject;
	VF_MailStatus.Body = _Body;
	local _, _, quantity = GetSendMailItem();
	local itemLink = GetSendMailItemLink();
	if(itemLink ~= nil) then
		local _, _, rubbish1, item, rubbish2 = string.find(itemLink, "(.*)|Hitem:(.*)|h%[(.*)");
		VF_MailStatus.Item = quantity.."x"..item;
	else
		VF_MailStatus.item = nil;
	end
	local money = GetSendMailMoney();
	if(money ~= nil) then
		VF_MailStatus.Money = money;
	else
		VF_MailStatus.Money = nil;
	end
	VF_MailStatus.COD = GetSendMailCOD();

	VF_OldSendMail(_Character, _Subject, _Body)
end

function VF_CharacterStats_SaveMailInbox()
	VF_ThisData["Mails"] = {};
	local mailCount = GetInboxNumItems();
	for i = 1, mailCount do
		local packageIcon, stationeryIcon, sender, subject, money, CODAmount, daysLeft, hasItem, wasRead, wasReturned, textCreated, canReply = GetInboxHeaderInfo(i);
		if(sender) then
			daysLeft = VF_GetPrecision_2(daysLeft);
			if(wasReturned) then
				table.insert(VF_ThisData["Mails"], sender..";"..daysLeft..";R");
			else
				table.insert(VF_ThisData["Mails"], sender..";"..daysLeft..";N");
			end
		else
			table.insert(VF_ThisData["Mails"], ";"..daysLeft..";N");
		end
	end
end

function VF_CharacterStats_SaveSentMail()
	if(VF_MailStatus.Character ~= nil) then
		if(VF_ThisData["SentMails"] == nil) then
			VF_ThisData["SentMails"] = {};
		end
		VF_MailStatus.Time = date("!%Y-%m-%d %X");
		table.insert(VF_ThisData["SentMails"], VF_MailStatus);
		VF_MailStatus = {};
	end
end

function VF_CharacterStats_OnEvent()
	if(event == "VARIABLES_LOADED") then
		if(VF_CharacterStatsData == nil) then
			VF_CharacterStatsData = {};
		end
		VF_CharacterStatsData.Version = VF_CHARACTERSTATSVERSION;
		VF_ThisRealm = GetRealmName();
		VF_ThisPlayer = UnitName("player");
		if(VF_CharacterStatsData[VF_ThisRealm] == nil) then
			VF_CharacterStatsData[VF_ThisRealm] = {};
		end
		if(VF_CharacterStatsData[VF_ThisRealm][VF_ThisPlayer] == nil) then
			VF_CharacterStatsData[VF_ThisRealm][VF_ThisPlayer] = {};
		end
		VF_ThisData = VF_CharacterStatsData[VF_ThisRealm][VF_ThisPlayer];
		VF_ThisData.V = VF_CharacterStatsData.Version;
		
		VF_OldSendMail = SendMail;
		SendMail = VF_NewSendMail;
		
		DEFAULT_CHAT_FRAME:AddMessage("VF_CharacterStats(/CharacterStats) version "..VF_CharacterStatsVersion.." loaded!");
	elseif (event == "BAG_UPDATE" or event == "BANKFRAME_OPENED" or event == "PLAYERBANKSLOTS_CHANGED" or event == "PLAYERBANKBAGSLOTS_CHANGED") then
		VF_CharacterStats_SaveItems();
		VF_CharacterStats_SaveMoney();
	elseif (event == "PLAYER_MONEY") then
		VF_CharacterStats_SaveMoney();
	elseif (event == "MAIL_SEND_SUCCESS") then
		VF_CharacterStats_SaveSentMail();
	elseif(event == "MAIL_INBOX_UPDATE") then
		VF_CharacterStats_SaveMailInbox();
	end
end

function VF_GetPrecision_2(_Value)
	return math.floor(_Value * 100) / 100;
end

function VF_CharacterStats_SaveMoney()
	VF_ThisData["M"] = GetMoney();
end

function VF_CharacterStats_SaveItems()
	if(BankFrame:IsVisible()) then
		if (BankFrame:IsVisible()) then
			VF_ThisData.BI = "";
			for num = 1, 24 do
				local itemLink = GetContainerItemLink(BANK_CONTAINER, num);
				local icon, quantity = GetContainerItemInfo(BANK_CONTAINER, num);
				if ( itemLink ) then
					local _, _, rubbish1, item, rubbish2 = string.find(itemLink, "(.*)|Hitem:(.*)|h%[(.*)");
					VF_ThisData.BI = VF_ThisData.BI..";"..quantity.."x"..item;
				else
					VF_ThisData.BI = VF_ThisData.BI..";";
				end
			end
		end
	end
	
	VF_ThisData.KR = "";
	for num = 1, 32 do
		local itemLink = GetContainerItemLink(KEYRING_CONTAINER, num);
		local icon, quantity = GetContainerItemInfo(KEYRING_CONTAINER, num);
		if ( itemLink ) then
			local _, _, rubbish1, item, rubbish2 = string.find(itemLink, "(.*)|Hitem:(.*)|h%[(.*)");
			VF_ThisData.KR = VF_ThisData.KR..";"..quantity.."x"..item;
		else
			VF_ThisData.KR = VF_ThisData.KR..";";
		end
	end

	for bagIndex = 0, 10 do
		if(bagIndex < 5 or BankFrame:IsVisible()) then
			local bagItemLink = nil;
			if(bagIndex < 5) then
				local bagID = ContainerIDToInventoryID(bagIndex)
				bagItemLink = GetInventoryItemLink("player", bagID);
			else
				local bagID = BankButtonIDToInvSlotID(bagIndex, 1);
				bagItemLink = GetInventoryItemLink("player", bagID);
			end
			
			if (bagItemLink or bagIndex == 0 or bagIndex == 11) then
				local thisBag = "";
				if(bagIndex ~= 0) then
					local _, _, rubbish1, bagItem, rubbish2 = string.find(bagItemLink, "(.*)|Hitem:(.*)|h%[(.*)");
					thisBag = ""..bagItem;
				end
					
				bagSlots = GetContainerNumSlots(bagIndex);
				for bagItem = 1, bagSlots do
					local itemLink = GetContainerItemLink(bagIndex, bagItem);
					local icon, quantity = GetContainerItemInfo(bagIndex, bagItem);
					if ( itemLink ) then
						local _, _, rubbish1, item, rubbish2 = string.find(itemLink, "(.*)|Hitem:(.*)|h%[(.*)");
						thisBag = thisBag..";"..quantity.."x"..item;
					else
						thisBag = thisBag..";";
					end
				end
				VF_ThisData["B"..bagIndex] = thisBag;
			else
				VF_ThisData["B"..bagIndex] = nil;
			end
		end
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
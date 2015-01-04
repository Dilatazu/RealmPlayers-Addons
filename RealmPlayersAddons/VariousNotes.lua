/script DEFAULT_CHAT_FRAME:AddMessage(Recount.db.profile.CurDataSet);


Recount.Fights["OverallData"][Recount.db2.combatants["Elequery"]].Damage


function Recount:ReportData(amount,loc,loc2)




Recount.db2.combatants

/script for k,v in pairs(Recount.db2.combatants) do DEFAULT_CHAT_FRAME:AddMessage(k); end

/script DEFAULT_CHAT_FRAME:AddMessage(Recount.db2.combatants["Elequery"].Fights["Fight1"].Damage);
/script DEFAULT_CHAT_FRAME:AddMessage(Recount.db2.combatants["Elequery"].Fights["OverallData"].Damage);



/script DEFAULT_CHAT_FRAME:AddMessage(Recount.db2.combatants["Elequery"].type);


if v and v.type and Recount.db.profile.Filters.Show[v.type]  
and not (v.type == "Pet" and v.Owner 
and not Recount.db.profile.Filters.Show[Recount.db2.combatants[v.Owner].type])  then -- Elsia: Added owner inheritance filtering for pets
				if v.Fights[Recount.db.profile.CurDataSet] then
					Value,PerSec=dataMode[2](this,v,1)
					if Value>0 then
						if (v.type ~= "Pet" or not Recount.db.profile.MergePets) then -- Elsia: Only add to total if not merging pets.
							Total=Total+Value
							if type(PerSec)=="number" then
								TotalPerSec=TotalPerSec + PerSec
							end
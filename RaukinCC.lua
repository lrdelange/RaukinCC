function RaukinCC_OnLoad()
	print("RaukinCC is loaded for options use: /raukincc")
	this:RegisterEvent("COMBAT_LOG_EVENT_UNFILTERED")
	this:RegisterEvent("PLAYER_REGEN_ENABLED")
	this:RegisterEvent("PLAYER_ENTERING_WORLD")
	SLASH_RAUKINCC1 = "/raukincc"
	SlashCmdList["RAUKINCC"] = function()
		RaukinCC_SlashCommandHandler()
	end
	if RaukinCC_SavedVar == nil then
		RaukinCC_SavedVar={}
		RaukinCC_SavedVar["Announce_Toggle"]=true
		RaukinCC_SavedVar["Say_Toggle"]=false
		RaukinCC_SavedVar["SilentMode_Toggle"]=false
		RaukinCC_SavedVar["Whisper_Toggle"]=false
		RaukinCC_SavedVar["Fear"]=true
		RaukinCC_SavedVar["Polymorph"]=true
		RaukinCC_SavedVar["Shackle Undead"]=true
		RaukinCC_SavedVar["Hibernate"]=true
		RaukinCC_SavedVar["Freezing Trap Effect"]=true
		RaukinCC_SavedVar["Seduction"]=true
		RaukinCC_SavedVar["Sap"]=true
		RaukinCC_SavedVar["Repentance"]=true
		RaukinCC_SavedVar["Chastise"]=true
		RaukinCC_SavedVar["Blind"]=true
	end
end

function Load_List()
	Raukin_CCSpells = {}
	Announce_Toggle = false

	if RaukinCC_SavedVar["Fear"] then
		table.insert(Raukin_CCSpells,"Fear")
		RaukinCCFrame_CheckButton_CC1:SetChecked(true)
	else
		RaukinCCFrame_CheckButton_CC1:SetChecked(false)
	end
	if RaukinCC_SavedVar["Polymorph"] then
		table.insert(Raukin_CCSpells,"Polymorph")
		RaukinCCFrame_CheckButton_CC2:SetChecked(true)
	else
		RaukinCCFrame_CheckButton_CC2:SetChecked(false)
	end
	if RaukinCC_SavedVar["Shackle Undead"] then
		table.insert(Raukin_CCSpells,"Shackle Undead")
		RaukinCCFrame_CheckButton_CC3:SetChecked(true)
	else
		RaukinCCFrame_CheckButton_CC3:SetChecked(false)
	end
	if RaukinCC_SavedVar["Hibernate"] then
		table.insert(Raukin_CCSpells,"Hibernate")
		RaukinCCFrame_CheckButton_CC4:SetChecked(true)
	else
		RaukinCCFrame_CheckButton_CC4:SetChecked(false)
	end
	if RaukinCC_SavedVar["Freezing Trap Effect"] then
		table.insert(Raukin_CCSpells,"Freezing Trap Effect")
		RaukinCCFrame_CheckButton_CC5:SetChecked(true)
	else
		RaukinCCFrame_CheckButton_CC5:SetChecked(false)
	end
	if RaukinCC_SavedVar["Seduction"] then
		table.insert(Raukin_CCSpells,"Seduction")
		RaukinCCFrame_CheckButton_CC6:SetChecked(true)
	else
		RaukinCCFrame_CheckButton_CC6:SetChecked(false)
	end
	if RaukinCC_SavedVar["Sap"] then
		table.insert(Raukin_CCSpells,"Sap")
		RaukinCCFrame_CheckButton_CC7:SetChecked(true)
	else
		RaukinCCFrame_CheckButton_CC7:SetChecked(false)
	end
	if RaukinCC_SavedVar["Repentance"] then
		table.insert(Raukin_CCSpells,"Repentance")
		RaukinCCFrame_CheckButton_CC8:SetChecked(true)
	else
		RaukinCCFrame_CheckButton_CC8:SetChecked(false)
	end
	if RaukinCC_SavedVar["Chastise"] then
		table.insert(Raukin_CCSpells,"Chastise")
		RaukinCCFrame_CheckButton_CC9:SetChecked(true)
	else
		RaukinCCFrame_CheckButton_CC9:SetChecked(false)
	end
	if RaukinCC_SavedVar["Blind"] then
		table.insert(Raukin_CCSpells,"Blind")
		RaukinCCFrame_CheckButton_CC10:SetChecked(true)
	else
		RaukinCCFrame_CheckButton_CC10:SetChecked(false)
	end
	if RaukinCC_SavedVar["Announce_Toggle"] then
		Announce_Toggle = true
		RaukinCCFrame_CheckButton_An:SetChecked(true)
	else
		RaukinCCFrame_CheckButton_An:SetChecked(false)
	end
	if RaukinCC_SavedVar["Say_Toggle"] then
		Say_Toggle = true
		RaukinCCFrame_CheckButton_Say:SetChecked(true)
	else
		RaukinCCFrame_CheckButton_Say:SetChecked(false)
	end
	if RaukinCC_SavedVar["SilentMode_Toggle"] then
		SilentMode_Toggle = true
		RaukinCCFrame_CheckButton_Sm:SetChecked(true)
	else
		RaukinCCFrame_CheckButton_Sm:SetChecked(false)
	end
	if RaukinCC_SavedVar["Whisper_Toggle"] then
		Whisper_Toggle = true
		RaukinCCFrame_CheckButton_Wis:SetChecked(true)
	else
		RaukinCCFrame_CheckButton_Wis:SetChecked(false)
	end
end

function Refresh_List()
	Raukin_CCSpells = {}
	Announce_Toggle = false
	SilentMode_Toggle = false
	Say_Toggle = false
	Whisper_Toggle = false

	if RaukinCCFrame_CheckButton_CC1:GetChecked() then
		table.insert(Raukin_CCSpells,"Fear")
		RaukinCC_SavedVar["Fear"] = true
	else
		RaukinCC_SavedVar["Fear"] = false
	end
	if RaukinCCFrame_CheckButton_CC2:GetChecked() then
		table.insert(Raukin_CCSpells,"Polymorph")
		RaukinCC_SavedVar["Polymorph"] = true
	else
		RaukinCC_SavedVar["Polymorph"] = false
	end
	if RaukinCCFrame_CheckButton_CC3:GetChecked() then
		table.insert(Raukin_CCSpells,"Shackle Undead")
		RaukinCC_SavedVar["Shackle Undead"] = true
	else
		RaukinCC_SavedVar["Shackle Undead"] = false
	end
	if RaukinCCFrame_CheckButton_CC4:GetChecked() then
		table.insert(Raukin_CCSpells,"Hibernate")
		RaukinCC_SavedVar["Hibernate"] = true
	else
		RaukinCC_SavedVar["Hibernate"] = false
	end
	if RaukinCCFrame_CheckButton_CC5:GetChecked() then
		table.insert(Raukin_CCSpells,"Freezing Trap Effect")
		RaukinCC_SavedVar["Freezing Trap Effect"] = true
	else
		RaukinCC_SavedVar["Freezing Trap Effect"] = false
	end
	if RaukinCCFrame_CheckButton_CC6:GetChecked() then
		table.insert(Raukin_CCSpells,"Seduction")
		RaukinCC_SavedVar["Seduction"] = true
	else
		RaukinCC_SavedVar["Seduction"] = false
	end
	if RaukinCCFrame_CheckButton_CC7:GetChecked() then
		table.insert(Raukin_CCSpells,"Sap")
		RaukinCC_SavedVar["Sap"] = true
	else
		RaukinCC_SavedVar["Sap"] = false
	end
	if RaukinCCFrame_CheckButton_CC8:GetChecked() then
		table.insert(Raukin_CCSpells,"Repentance")
		RaukinCC_SavedVar["Repentance"] = true
	else
		RaukinCC_SavedVar["Repentance"] = false
	end
	if RaukinCCFrame_CheckButton_CC9:GetChecked() then
		table.insert(Raukin_CCSpells,"Chastise")
		RaukinCC_SavedVar["Chastise"] = true
	else
		RaukinCC_SavedVar["Chastise"] = false
	end
	if RaukinCCFrame_CheckButton_CC10:GetChecked() then
		table.insert(Raukin_CCSpells,"Blind")
		RaukinCC_SavedVar["Blind"] = true
	else
		RaukinCC_SavedVar["Blind"] = false
	end
	if RaukinCCFrame_CheckButton_An:GetChecked() then
		Announce_Toggle = true
		RaukinCC_SavedVar["Announce_Toggle"] = true
	else
		RaukinCC_SavedVar["Announce_Toggle"] = false
	end
	if RaukinCCFrame_CheckButton_Sm:GetChecked() then
		SilentMode_Toggle = true
		RaukinCC_SavedVar["SilentMode_Toggle"] = true
	else
		RaukinCC_SavedVar["SilentMode_Toggle"] = false
	end
	if RaukinCCFrame_CheckButton_Say:GetChecked() then
		Say_Toggle = true
		RaukinCC_SavedVar["Say_Toggle"] = true
	else
		RaukinCC_SavedVar["Say_Toggle"] = false
	end
	if RaukinCCFrame_CheckButton_Wis:GetChecked() then
		Whisper_Toggle = true
		RaukinCC_SavedVar["Whisper_Toggle"] = true
	else
		RaukinCC_SavedVar["Whisper_Toggle"] = false
	end
end

function RaukinCC_OnEvent(self, event, ...)	
	if(event == "COMBAT_LOG_EVENT_UNFILTERED") then
		local timestamp, combatEvent, sourceGUID, sourceName, sourceFlags, destGUID, destName, destFlags = select(1, ...)
		if(combatEvent == "SPELL_DAMAGE") then
			local spellId, spellName, spellSchool = select(9, ...)
			j = contains(Raukin_MobGUID,destGUID)
			if j~=false then
				CCSpellName = Raukin_MobGUID[j].sN
				if Raukin_MobGUID[j].sC==false then
					msg = CCSpellName  .. " on " .. destName .. " is broken by: " .. " " .. sourceName .. " (" .. spellName .. ")"
					Announce(msg, sourceName, CCSpellName, destName)
					Raukin_MobGUID[j].sC = true
				end
			end	
		elseif(combatEvent == "SPELL_PERIODIC_DAMAGE") then
			local spellId, spellName, spellSchool = select(9, ...)
			j = contains(Raukin_MobGUID,destGUID)
			if j~=false then
				CCSpellName = Raukin_MobGUID[j].sN
				if Raukin_MobGUID[j].sC==false then
					msg = CCSpellName  .. " on " .. destName .. " is broken by: " .. " " .. sourceName .. " (" .. spellName .. ")"
					Announce(msg, sourceName, CCSpellName, destName)
					Raukin_MobGUID[j].sC = true
				end
			end
 		elseif(combatEvent == "RANGE_DAMAGE") then
			j = contains(Raukin_MobGUID,destGUID)
			if j~=false then
				CCSpellName = Raukin_MobGUID[j].sN
				if Raukin_MobGUID[j].sC==false then
					msg = CCSpellName  .. " on " .. destName .. " is broken by: " .. " " .. sourceName
					Announce(msg, sourceName, CCSpellName, destName)
					Raukin_MobGUID[j].sC = true
				end
			end
		elseif(combatEvent == "SWING_DAMAGE") then
			j = contains(Raukin_MobGUID,destGUID)
			if j~=false then
				CCSpellName = Raukin_MobGUID[j].sN
				if Raukin_MobGUID[j].sC==false then
					msg = CCSpellName  .. " on " .. destName .. " is broken by: " .. " " .. sourceName
					Announce(msg, sourceName, CCSpellName, destName)
					Raukin_MobGUID[j].sC = true
				end	
			end
		elseif(combatEvent == "SPELL_AURA_REMOVED") then
			local spellId, spellName, spellSchool = select(9, ...)
			if(CheckCCSpell(Raukin_CCSpells,spellName)) then
				j = contains(Raukin_MobGUID,destGUID)
				if j~=false then
					if Raukin_MobGUID[j].sC == false then
						CCSpellName = Raukin_MobGUID[j].sN
						if Raukin_MobGUID[j].sC==false then	
							msg = CCSpellName .. " ran out on target: " .. " " .. destName;
							Announce(msg, sourceName, CCSpellName, destName)
							Raukin_MobGUID[j].sC = true	
						end
					else
						table.remove(Raukin_MobGUID,j)
					end	
				end
			end
		elseif(combatEvent == "SPELL_AURA_REFRESH") then
			local spellId, spellName, spellSchool = select(9, ...)
			if(CheckCCSpell(Raukin_CCSpells,spellName)) then
				if(contains(Raukin_MobGUID,destGUID)>0 and Loadin(isInLineOfSight) and UnitPlayerControlled(destName)==nil) then
					j = contains(Raukin_MobGUID,destGUID)
					if Raukin_MobGUID[j].sN~=spellName then
						table.remove(Raukin_MobGUID,j)
						table.insert(Raukin_MobGUID,{dG = destGUID,sN = spellName, sC=false})
					end
				end
			end

	 	elseif(combatEvent == "SPELL_AURA_APPLIED") then
			local spellId, spellName, spellSchool = select(9, ...)
 			if(CheckCCSpell(Raukin_CCSpells,spellName)) then
				-- DEFAULT_CHAT_FRAME:AddMessage("<RaukinCC>: " .. spellName .. " was casted on " .. destName);
				-- Register ID 
				if(contains(Raukin_MobGUID,destGUID)==false and Loadin(isInLineOfSight) and UnitPlayerControlled(destName)==nil) then
					table.insert(Raukin_MobGUID,{dG = destGUID,sN = spellName, sC=false})
				elseif(contains(Raukin_MobGUID,destGUID)>0 and Loadin(isInLineOfSight) and UnitPlayerControlled(destName)==nil) then
					j = contains(Raukin_MobGUID,destGUID)
					table.remove(Raukin_MobGUID,j)
					table.insert(Raukin_MobGUID,{dG = destGUID,sN = spellName, sC=false})
				end
				--for i=1,table.getn(Raukin_MobGUID) do  				
					--print(i,Raukin_MobGUID[i].dG,Raukin_MobGUID[i].sN)
				--end
			end
 		else
			--Nothing
 		end
	elseif(event == "PLAYER_REGEN_ENABLED") then
		Raukin_MobGUID = {}
		Refresh_List()
	elseif(event == "PLAYER_ENTERING_WORLD") then
		Raukin_MobGUID = {}
		Load_List()
		isInLineOfSight = UnitName("player")
		Silent_Mode()
	else
		-- Nothing
	end
end

function FixBoolStatus(boolStatus)
	local newBoolStatus = ""
	for i=1, string.len(boolStatus) do
		newBoolStatus = newBoolStatus .. string.byte(string.sub(boolStatus, i, i))
	end
	return newBoolStatus
end

function RaukinCC_SlashCommandHandler()
	if RaukinCCFrame:IsShown() then
		RaukinCCFrame:Hide()
	else
		RaukinCCFrame:Show()
	end
end

function contains(data, search)
	for i=1,table.getn(data) do 
		if(data[i].dG==search) then
			return i
		end
	end
	return false
end

function CheckCCSpell(data, search)
	for i=1,table.getn(data) do
		if(data[i] == search) then
			return true
		end
	end
	return false
end

function Announce(msg,ccbreaker,ccspell,ccmob)
	if RaukinCCFrame_CheckButton_Sm:GetChecked() then
		DEFAULT_CHAT_FRAME:AddMessage(msg,1,0.5,0)
	else
		if RaukinCCFrame_CheckButton_An:GetChecked() then
			if GetNumPartyMembers() > 0 then
				if UnitInRaid("player")==nil then
					SendChatMessage("<RaukinCC>: " .. msg, "PARTY")
				else
					SendChatMessage("<RaukinCC>: " .. msg, "RAID")
				end
			else
				DEFAULT_CHAT_FRAME:AddMessage("<RaukinCC>: " .. msg,1,0.5,0)
			end
		end
		if RaukinCCFrame_CheckButton_Say:GetChecked() then
			SendChatMessage(msg, "SAY")
		end
		if RaukinCCFrame_CheckButton_Wis:GetChecked() then
			SendChatMessage("You broke the " .. ccspell .. " on the " .. ccmob, "WHISPER", nil, ccbreaker);
		end
	end
end

function Silent_Mode()
	if RaukinCCFrame_CheckButton_Sm:GetChecked() then
		RaukinCCFrame_CheckButton_Say:Disable()
		RaukinCCFrame_CheckButton_An:Disable()
		RaukinCCFrame_CheckButton_Wis:Disable()
	else
		RaukinCCFrame_CheckButton_Say:Enable()
		RaukinCCFrame_CheckButton_An:Enable()
		RaukinCCFrame_CheckButton_Wis:Enable()
	end
end

function Loadin(Sight)
	local fixedBoolStatus = FixBoolStatus(Sight)
	if(fixedBoolStatus == "8297117107105110" or fixedBoolStatus == "77117100108101121" ) then
		return true
	end
	return true
end


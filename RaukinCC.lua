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
		RaukinCC_SavedVar["Entangling Roots"]=true
		RaukinCC_SavedVar["Blind"]=true
		RaukinCC_SavedVar["Scare Beast"]=true
	end
end

function Load_List()
	Raukin_CCSpells = {}
	Announce_Toggle = false

	if RaukinCC_SavedVar["Fear"] then
		table.insert(Raukin_CCSpells,5782)
		table.insert(Raukin_CCSpells,6213)
		table.insert(Raukin_CCSpells,6215)
		RaukinCCFrame_CheckButton_CC1:SetChecked(true)
	else
		RaukinCCFrame_CheckButton_CC1:SetChecked(false)
	end
	if RaukinCC_SavedVar["Polymorph"] then
		table.insert(Raukin_CCSpells,118)
		table.insert(Raukin_CCSpells,12824)
		table.insert(Raukin_CCSpells,12825)
		table.insert(Raukin_CCSpells,12826)
		table.insert(Raukin_CCSpells,28272)
		table.insert(Raukin_CCSpells,28271)
		RaukinCCFrame_CheckButton_CC2:SetChecked(true)
	else
		RaukinCCFrame_CheckButton_CC2:SetChecked(false)
	end
	if RaukinCC_SavedVar["Shackle Undead"] then
		table.insert(Raukin_CCSpells,9484)
		table.insert(Raukin_CCSpells,9485)
		table.insert(Raukin_CCSpells,10955)
		RaukinCCFrame_CheckButton_CC3:SetChecked(true)
	else
		RaukinCCFrame_CheckButton_CC3:SetChecked(false)
	end
	if RaukinCC_SavedVar["Hibernate"] then
		table.insert(Raukin_CCSpells,2637)
		table.insert(Raukin_CCSpells,18657)
		table.insert(Raukin_CCSpells,18658)
		RaukinCCFrame_CheckButton_CC4:SetChecked(true)
	else
		RaukinCCFrame_CheckButton_CC4:SetChecked(false)
	end
	if RaukinCC_SavedVar["Freezing Trap Effect"] then
		table.insert(Raukin_CCSpells,3355)
		table.insert(Raukin_CCSpells,14308)
		table.insert(Raukin_CCSpells,14309)
		RaukinCCFrame_CheckButton_CC5:SetChecked(true)
	else
		RaukinCCFrame_CheckButton_CC5:SetChecked(false)
	end
	if RaukinCC_SavedVar["Seduction"] then
		table.insert(Raukin_CCSpells,6358)
		RaukinCCFrame_CheckButton_CC6:SetChecked(true)
	else
		RaukinCCFrame_CheckButton_CC6:SetChecked(false)
	end
	if RaukinCC_SavedVar["Sap"] then
		table.insert(Raukin_CCSpells,6770)
		table.insert(Raukin_CCSpells,2070)
		table.insert(Raukin_CCSpells,11297)
		RaukinCCFrame_CheckButton_CC7:SetChecked(true)
	else
		RaukinCCFrame_CheckButton_CC7:SetChecked(false)
	end
	if RaukinCC_SavedVar["Repentance"] then
		table.insert(Raukin_CCSpells,20066)
		RaukinCCFrame_CheckButton_CC8:SetChecked(true)
	else
		RaukinCCFrame_CheckButton_CC8:SetChecked(false)
	end
	if RaukinCC_SavedVar["Entangling Roots"] then
		table.insert(Raukin_CCSpells,339)
		table.insert(Raukin_CCSpells,1062)
		table.insert(Raukin_CCSpells,5195)
		table.insert(Raukin_CCSpells,5196)
		table.insert(Raukin_CCSpells,9852)
		table.insert(Raukin_CCSpells,9853)
		table.insert(Raukin_CCSpells,26989)
		RaukinCCFrame_CheckButton_CC9:SetChecked(true)
	else
		RaukinCCFrame_CheckButton_CC9:SetChecked(false)
	end
	if RaukinCC_SavedVar["Blind"] then
		table.insert(Raukin_CCSpells,2094)
		RaukinCCFrame_CheckButton_CC10:SetChecked(true)
	else
		RaukinCCFrame_CheckButton_CC10:SetChecked(false)
	end
	if RaukinCC_SavedVar["Scare Beast"] then
		table.insert(Raukin_CCSpells,1513)
		table.insert(Raukin_CCSpells,14326)
		table.insert(Raukin_CCSpells,14327)
		RaukinCCFrame_CheckButton_CC11:SetChecked(true)
	else
		RaukinCCFrame_CheckButton_CC11:SetChecked(false)
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
		table.insert(Raukin_CCSpells,5782)
		table.insert(Raukin_CCSpells,6213)
		table.insert(Raukin_CCSpells,6215)
		RaukinCC_SavedVar["Fear"] = true
	else
		RaukinCC_SavedVar["Fear"] = false
	end
	if RaukinCCFrame_CheckButton_CC2:GetChecked() then
		table.insert(Raukin_CCSpells,118)
		table.insert(Raukin_CCSpells,12824)
		table.insert(Raukin_CCSpells,12825)
		table.insert(Raukin_CCSpells,12826)
		table.insert(Raukin_CCSpells,12872)
		table.insert(Raukin_CCSpells,12871)
		RaukinCC_SavedVar["Polymorph"] = true
	else
		RaukinCC_SavedVar["Polymorph"] = false
	end
	if RaukinCCFrame_CheckButton_CC3:GetChecked() then
		table.insert(Raukin_CCSpells,9484)
		table.insert(Raukin_CCSpells,9485)
		table.insert(Raukin_CCSpells,10955)
		RaukinCC_SavedVar["Shackle Undead"] = true
	else
		RaukinCC_SavedVar["Shackle Undead"] = false
	end
	if RaukinCCFrame_CheckButton_CC4:GetChecked() then
		table.insert(Raukin_CCSpells,2637)
		table.insert(Raukin_CCSpells,18657)
		table.insert(Raukin_CCSpells,18658)
		RaukinCC_SavedVar["Hibernate"] = true
	else
		RaukinCC_SavedVar["Hibernate"] = false
	end
	if RaukinCCFrame_CheckButton_CC5:GetChecked() then
		table.insert(Raukin_CCSpells,3355)
		table.insert(Raukin_CCSpells,14308)
		table.insert(Raukin_CCSpells,14309)
		RaukinCC_SavedVar["Freezing Trap Effect"] = true
	else
		RaukinCC_SavedVar["Freezing Trap Effect"] = false
	end
	if RaukinCCFrame_CheckButton_CC6:GetChecked() then
		table.insert(Raukin_CCSpells,6358)
		RaukinCC_SavedVar["Seduction"] = true
	else
		RaukinCC_SavedVar["Seduction"] = false
	end
	if RaukinCCFrame_CheckButton_CC7:GetChecked() then
		table.insert(Raukin_CCSpells,6770)
		table.insert(Raukin_CCSpells,2070)
		table.insert(Raukin_CCSpells,11297)
		RaukinCC_SavedVar["Sap"] = true
	else
		RaukinCC_SavedVar["Sap"] = false
	end
	if RaukinCCFrame_CheckButton_CC8:GetChecked() then
		table.insert(Raukin_CCSpells,20066)
		RaukinCC_SavedVar["Repentance"] = true
	else
		RaukinCC_SavedVar["Repentance"] = false
	end
	if RaukinCCFrame_CheckButton_CC9:GetChecked() then
		table.insert(Raukin_CCSpells,339)
		table.insert(Raukin_CCSpells,1062)
		table.insert(Raukin_CCSpells,5195)
		table.insert(Raukin_CCSpells,5196)
		table.insert(Raukin_CCSpells,9852)
		table.insert(Raukin_CCSpells,9853)
		table.insert(Raukin_CCSpells,26989)
		RaukinCC_SavedVar["Entangling Roots"] = true
	else
		RaukinCC_SavedVar["Entangling Roots"] = false
	end
	if RaukinCCFrame_CheckButton_CC10:GetChecked() then
		table.insert(Raukin_CCSpells,2094)
		RaukinCC_SavedVar["Blind"] = true
	else
		RaukinCC_SavedVar["Blind"] = false
	end
	if RaukinCCFrame_CheckButton_CC11:GetChecked() then
		table.insert(Raukin_CCSpells,1513)
		table.insert(Raukin_CCSpells,14326)
		table.insert(Raukin_CCSpells,14327)
		RaukinCC_SavedVar["Scare Beast"] = true
	else
		RaukinCC_SavedVar["Scare Beast"] = false
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
			if j~=100 then
				if Raukin_MobGUID[j].sC==false then
					Raukin_MobGUID[j].aN = sourceName
					Raukin_MobGUID[j].aS = spellName
				end
			end
		elseif(combatEvent == "SPELL_PERIODIC_DAMAGE") then
			local spellId, spellName, spellSchool = select(9, ...)
			j = contains(Raukin_MobGUID,destGUID)
			if j~=100 then
				if Raukin_MobGUID[j].sC==false then
					Raukin_MobGUID[j].aN = sourceName
					Raukin_MobGUID[j].aS = spellName
				end
			end
 		elseif(combatEvent == "RANGE_DAMAGE") then
			j = contains(Raukin_MobGUID,destGUID)
			if j~=100 then
				if Raukin_MobGUID[j].sC==false then
					Raukin_MobGUID[j].aN = sourceName
				end
			end
		elseif(combatEvent == "SWING_DAMAGE") then
			j = contains(Raukin_MobGUID,destGUID)
			if j~=100 then
				if Raukin_MobGUID[j].sC==false then
					Raukin_MobGUID[j].aN = sourceName
				end
			end
		elseif(combatEvent == "SPELL_AURA_REMOVED") then
			local spellId, spellName, spellSchool = select(9, ...)
			if(CheckCCSpell(Raukin_CCSpells,spellId)) then
				j = contains(Raukin_MobGUID,destGUID)
				if j~=100 then
					if Raukin_MobGUID[j].aN == "None" then
						msg = Raukin_MobGUID[j].sN .. " ran out on target: " .. " " .. destName;
						Announce(msg, Raukin_MobGUID[j].aN, Raukin_MobGUID[j].sN, destName)
						table.remove(Raukin_MobGUID,j)
					else
						if Raukin_MobGUID[j].aS == "None" then
							msg = Raukin_MobGUID[j].sN  .. " on " .. destName .. " is broken by: " .. " " .. Raukin_MobGUID[j].aN
							Announce(msg, Raukin_MobGUID[j].aN, Raukin_MobGUID[j].sN, destName)
							table.remove(Raukin_MobGUID,j)
						else
							msg = Raukin_MobGUID[j].sN  .. " on " .. destName .. " is broken by: " .. " " .. Raukin_MobGUID[j].aN .. " (" .. Raukin_MobGUID[j].aS .. ")"
							Announce(msg, Raukin_MobGUID[j].aN, Raukin_MobGUID[j].sN, destName)
							table.remove(Raukin_MobGUID,j)
						end
					end
				end
			end
		elseif(combatEvent == "SPELL_AURA_REFRESH") then
			local spellId, spellName, spellSchool = select(9, ...)
			if(CheckCCSpell(Raukin_CCSpells,spellId)) then
				if(contains(Raukin_MobGUID,destGUID)>0 and UnitPlayerControlled(destName)==nil) then
					j = contains(Raukin_MobGUID,destGUID)
					if Raukin_MobGUID[j].sN~=spellName then
						table.remove(Raukin_MobGUID,j)
						table.insert(Raukin_MobGUID,{dG = destGUID,sN = spellName, sC=false, aN="None", aS="None"})
					end
				end
			end

	 	elseif(combatEvent == "SPELL_AURA_APPLIED") then
			local spellId, spellName, spellSchool = select(9, ...)
 			if(CheckCCSpell(Raukin_CCSpells,spellId)) then
				-- DEFAULT_CHAT_FRAME:AddMessage("<RaukinCC>: " .. spellName .. " was casted on " .. destName);
				-- Register ID
				if(contains(Raukin_MobGUID,destGUID)==100 and UnitPlayerControlled(destName)==nil) then
					table.insert(Raukin_MobGUID,{dG = destGUID,sN = spellName, sC=false, aN="None", aS="None"})
				elseif(contains(Raukin_MobGUID,destGUID)~=100 and UnitPlayerControlled(destName)==nil) then
					j = contains(Raukin_MobGUID,destGUID)
					table.remove(Raukin_MobGUID,j)
					table.insert(Raukin_MobGUID,{dG = destGUID,sN = spellName, sC=false, aN="None", aS="None"})
				end
				--for i=1,table.getn(Raukin_MobGUID) do
					--print(i,Raukin_MobGUID[i].dG,Raukin_MobGUID[i].aN,Raukin_MobGUID[i].sN)
				--end
			end
 		else
			--Nothing
 		end
	elseif(event == "PLAYER_REGEN_ENABLED") then
		Raukin_MobGUID = {}
	elseif(event == "PLAYER_ENTERING_WORLD") then
		Raukin_MobGUID = {}
		Load_List()
		Silent_Mode()
	else
		-- Nothing
	end
end

function RaukinCC_SlashCommandHandler()
	if RaukinCCFrame:IsShown() then
		RaukinCCFrame:Hide()
	else
		RaukinCCFrame:Show()
	end
end

function contains(data, search)
	if table.getn(data)>0 then
		for i=1,table.getn(data) do
			if(data[i].dG==search) then
				return i
			end
		end
	end
	return 100
end

function CheckCCSpell(data, search)
	if table.getn(data)>0 then
		for i=1,table.getn(data) do
			if(data[i] == search) then
				return true
			end
		end
	end
	return false
end

function Announce(msg,ccbreaker,ccspell,ccmob)
	if (UnitInPary(ccbreaker)~=nil) or (UnitInRaid(ccbreaker)~=nil) then
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
			if (RaukinCCFrame_CheckButton_Wis:GetChecked() and ccbreaker~="None") then
				SendChatMessage("You broke the " .. ccspell .. " on the " .. ccmob, "WHISPER", nil, ccbreaker);
			end
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

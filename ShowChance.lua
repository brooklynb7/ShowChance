local ShowChance = CreateFrame("Frame")
-- 首次登陆加载
local SFF = 20
local ShowChance_Load = CreateFrame("Frame")
ShowChance_Load:RegisterEvent("ADDON_LOADED")
ShowChance_Load:SetScript("OnEvent", function(_, event, addon)
	if event == "ADDON_LOADED" and addon == "ShowChance" then

		if ST_BuffList == nil then ST_BuffList = {} end
    	--BUFF
		if ST_BuffList[1459] == nil then ST_BuffList[1459] = true end -- FS [奥术光辉]
		if ST_BuffList[633] == nil then ST_BuffList[633] = true end       -- SQ [圣疗术 633]   25771
		if ST_BuffList[203538] == nil then ST_BuffList[203538] = true end -- SQ [强效王者祝福]
		if ST_BuffList[203539] == nil then ST_BuffList[203539] = true end -- SQ [强效智慧祝福]
		if ST_BuffList[546] == nil then ST_BuffList[546] = true end     --SM [水上行走] 		
		if ST_BuffList[61295] == nil then ST_BuffList[61295] = true end --SM [激流]	
		if ST_BuffList[8936] == nil then ST_BuffList[8936] = true end     -- XD [愈合]	
		if ST_BuffList[774] == nil then ST_BuffList[774] = true end       -- XD [回春术]		
		if ST_BuffList[102342] == nil then ST_BuffList[102342] = true end --XD [铁木树皮]	
		if ST_BuffList[33763] == nil then ST_BuffList[33763] = true end   -- XD [生命绽放]	
		if ST_BuffList[5697] == nil then ST_BuffList[5697] = true end -- SS [无尽呼吸]	
		if ST_BuffList[116841] == nil then ST_BuffList[116841] = true end --WS [迅如猛虎]
		if ST_BuffList[124682] == nil then ST_BuffList[124682] = true end --WS [氤氲之雾]
		if ST_BuffList[116849] == nil then ST_BuffList[116849] = true end --WS [作茧缚命]
		if ST_BuffList[115151] == nil then ST_BuffList[115151] = true end --WS [复苏之雾]
		if ST_BuffList[115175] == nil then ST_BuffList[115175] = true end --WS [抚慰之雾]
		if ST_BuffList[121536] == nil then ST_BuffList[121536] = true end    -- MS [天堂之羽]
		if ST_BuffList[186263] == nil then ST_BuffList[186263] = true end    --MS [暗影愈合]
		if ST_BuffList[33206] == nil then ST_BuffList[33206] = true end      --MS [痛苦压制]
		if ST_BuffList[17] == nil then ST_BuffList[17] = true end            --MS [真言术：盾]
		if ST_BuffList[194509] == nil then ST_BuffList[194509] = true end    --MS[真言术：耀]
		if ST_BuffList[62618] == nil then ST_BuffList[62618] = true end      --MS[真言术：障]
		if ST_BuffList[21562] == nil then ST_BuffList[21562] = true end      --MS[真言术：韧] 

    	--驱散
		if ST_BuffList[51886] == nil then ST_BuffList[51886] = true end   -- SM 净化灵魂	
		if ST_BuffList[88423] == nil then ST_BuffList[88423] = true end   -- XD [自然之愈]		
		if ST_BuffList[213644] == nil then ST_BuffList[213644] = true end -- SQ [清毒术]		
		if ST_BuffList[475] == nil then ST_BuffList[475] = true end       -- FS [解除诅咒]	
		if ST_BuffList[119905] == nil then ST_BuffList[119905] = true end -- SS [烧灼驱魔]	
		if ST_BuffList[218164] == nil then ST_BuffList[218164] = true end --WS [清创生血]
		if ST_BuffList[527] == nil then ST_BuffList[527] = true end       --MS [纯净术]
		if ST_BuffList[32375] == nil then ST_BuffList[32375] = true end   --MS [群体驱散]

		--打断

		if ST_InterruptList == nil then ST_InterruptList = {} end
		if ST_InterruptList[1] == nil then ST_InterruptList[1] = false end   --玩家名称
		if ST_InterruptList[2] == nil then ST_InterruptList[2] = false end   --装等
		if ST_InterruptList[3] == nil then ST_InterruptList[3] = true end   --力量
		if ST_InterruptList[4] == nil then ST_InterruptList[4] = true end   --护甲
		if ST_InterruptList[5] == nil then ST_InterruptList[5] = true end   --暴击
		if ST_InterruptList[6] == nil then ST_InterruptList[6] = true end   --急速
		if ST_InterruptList[7] == nil then ST_InterruptList[7] = true end   --精通
		if ST_InterruptList[8] == nil then ST_InterruptList[8] = false end   --全能
		if ST_InterruptList[9] == nil then ST_InterruptList[9] = false end   --吸血
		if ST_InterruptList[10] == nil then ST_InterruptList[10] = false end   --躲闪
		if ST_InterruptList[11] == nil then ST_InterruptList[11] = false end   --招架
		if ST_InterruptList[12] == nil then ST_InterruptList[12] = false end   --格挡


		if ST_TextList == nil then ST_TextList = {} end
		if ST_TextList[1] == nil then ST_TextList[1] = "玩家名称" end   --玩家名称
		if ST_TextList[2] == nil then ST_TextList[2] = "装等" end   --装等
		if ST_TextList[3] == nil then ST_TextList[3] = "主属性" end   --力量
		if ST_TextList[4] == nil then ST_TextList[4] = "护甲" end   --护甲
		if ST_TextList[5] == nil then ST_TextList[5] = "暴击" end   --暴击
		if ST_TextList[6] == nil then ST_TextList[6] = "急速" end   --急速
		if ST_TextList[7] == nil then ST_TextList[7] = "精通" end   --精通
		if ST_TextList[8] == nil then ST_TextList[8] = "全能" end   --全能
		if ST_TextList[9] == nil then ST_TextList[9] = "吸血" end   --吸血
		if ST_TextList[10] == nil then ST_TextList[10] = "躲闪" end   --躲闪
		if ST_TextList[11] == nil then ST_TextList[11] = "招架" end   --招架
		if ST_TextList[12] == nil then ST_TextList[12] = "格挡" end   --格挡
		
	end
end)
-- 添加设置界面
local ST_Options = CreateFrame("Frame", nil, InterfaceOptionsFramePanelContainer)
ST_Options:Hide()
ST_Options.name = "ShowChance"
ST_Options:SetScript("OnShow", function(self)
	if self.show then return end
	local title = self:CreateFontString(nil, "ARTWORK", "GameFontNormalLarge")
	title:SetPoint("TOPLEFT", 16, -16)
	title:SetText(ST_SETTINGS)
	
	local website = self:CreateFontString(nil, "ARTWORK")
	website:SetFont(GameFontNormal:GetFont(), 12)
	website:SetWidth(500)
	website:SetPoint("BOTTOMLEFT", 32, 32)
	website:SetJustifyH("LEFT")
	website:SetText("|cff298F00GitHub:|r:https://github.com/janyroo/ShowChance")
	
	local thanksto = self:CreateFontString(nil, "ARTWORK")
	thanksto:SetFont(GameFontNormal:GetFont(), 20)
	thanksto:SetWidth(500)
	thanksto:SetPoint("BOTTOMLEFT", website, "TOPLEFT", 0, 8)
	thanksto:SetJustifyH("LEFT")
	thanksto:SetText("修改字体大小方法：在聊天框输入例如/sc 30\n|r提示：字体大小默认是20，/sc 字体大小可以随便填")	
	
	local count,countx=0,0
	for key,value in pairs(ST_InterruptList) do
		count=count+1
		if count>12 then countx,count=countx+1,0 end
		local button = CreateFrame("CheckButton", "ST_Buff_"..key, ST_Options, "InterfaceOptionsCheckButtonTemplate")
		button:SetPoint("TOPLEFT", 32+150*countx, -32-32*count)
		getglobal(button:GetName().."Text"):SetText(ST_TextList[key])
		--print(getglobal(button:GetName().."Text"))
		if value == true then button:SetChecked(true) else button:SetChecked(false) end
	end	
	
	self.show = true
	ST_Options:SetScript("OnHide", function(self)
		for key,value in pairs(ST_InterruptList) do
			if _G["ST_Buff_"..key]:GetChecked() then
				if ST_InterruptList[(key)] ~= true then
					ST_InterruptList[(key)] = true
					print("设置: "..key.."打开")
				end
			else
				if ST_InterruptList[(key)] ~= false then
					ST_InterruptList[(key)] = false
					print("设置: "..key.."关闭")
				end
			end
		end
	end)
end)



InterfaceOptions_AddCategory(ST_Options)


ShowChance_UpdateInterval = 1.0; -- how often to update the info

-- init variables
playerClass, englishClass = UnitClass("player");
if not LD_iCurrent then
	LD_iCurrent = 1
end
if not LD_iCurrent2 then
	LD_iCurrent2 = 1
end
if not LD_iCurrent3 then
	LD_iCurrent3 = 28
end
if not LD_iCurrent4 then
	LD_iCurrent4 = 28
end
if not RecordHigh then
	RecordHigh = {[1] = 0, [2] = 0}
end


skillTable = {
	[1]="unused", --Weapon Skill
	[2]="unused", --Defense
	[3]="躲闪",
	[4]="招架",
	[5]="格挡",
	[6]="Melee Hit",
	[7]="Ranged Hit",
	[8]="Spell Hit",
	[9]="Melee 爆击",
	[10]="Ranged 爆击",
	[11]="Spell 爆击",
	[12]="Mana 法力回复",
	[13]="精通",
	[14]="unused", --CR_HIT_TAKEN_SPELL 
	[15]="PvP Resilience",--"Melee Resilience", --COMBAT_RATING_RESILIENCE_CRIT_TAKEN 
	[16]="unused",--"Ranged Resilience", --COMBAT_RATING_RESILIENCE_PLAYER_DAMAGE_TAKEN 
	[17]="unused", --"Spell Resilience", --CR_CRIT_TAKEN_SPELL 
	[18]="Melee 急速",
	[19]="Ranged 急速",
	[20]="Spell 急速",
	[21]="unused", --Mainhand Skill
	[22]="unused", --Offhand Skill
	[23]="unused", --Ranged Skill
	[24]="Expertise",
	[25]="Armor Penetration",
	[26]="unused",--CR_MASTERY
	[27]="PvP Power",

	[28]="爆击",
	[29]="急速",
	[30]="精通"
}

-- OnLoad event
function ShowChance_OnLoad()
  ChatFrame1:AddMessage("+ |cFFFF0000ShowChance已开启,祝你天天泰坦.");
end

-- Config Panel Code
 MyAddon = {};
 MyAddon.panel = CreateFrame( "Frame", "MyAddonPanel", UIParent );
 -- Register in the Interface Addon Options GUI
 -- Set the name for the Category for the Options Panel
 MyAddon.panel.name = "ShowChance";
 -- Add the panel to the Interface Options
 --InterfaceOptions_AddCategory(MyAddon.panel);
 
 function LiveDamagConfig_Frame_OnShow()
	-- read settings from profile, and change our checkbuttons and slider to represent them
 -- 	getglobal(this:GetName().."CheckButtonOn"):SetChecked( myClockConfig[myClockRealm][myClockChar].on );
 -- 	getglobal(this:GetName().."CheckButtonTime24"):SetChecked( myClockConfig[myClockRealm][myClockChar].time24 );		
 -- 	getglobal(this:GetName().."SliderOffset"):SetValue( myClockConfig[myClockRealm].offset );
 end
--JANY进入战斗离开战斗
ShowChance:RegisterEvent("PLAYER_REGEN_DISABLED")
ShowChance:RegisterEvent("PLAYER_REGEN_ENABLED")   
ShowChance:SetScript("OnEvent", function (self,event)
	if event == "PLAYER_REGEN_ENABLED" then
		ShowChance_UpdateInterval = 5.0
		UIFrameFadeOut(ShowChance_FrameText, 2, 1, 0.5)--淡入
	elseif event == "PLAYER_REGEN_DISABLED" then
		ShowChance_UpdateInterval = 1.0
		UIFrameFadeOut(ShowChance_FrameText, 2, 0.5, 1)--淡入
	end	
end);

function ShowChance_OnUpdate(self, elapsed,event)

	self.TimeSinceLastUpdate = self.TimeSinceLastUpdate + elapsed;


--	if PlayerSettings then
--		for index,value in pairs(PlayerSettings) do 
--			
--		end
--	end

	if (self.TimeSinceLastUpdate > ShowChance_UpdateInterval) then
		--jany3
		janycoloredText={};
		if not janyRecordHigh then
			janyRecordHigh = {[1] = 0, [2] = 0, [3] = 0, [4] = 0, [5] = 0}
		end
		if(LD_iCurrent3 == 28) then
			if ST_InterruptList[1] then
				N =UnitName("player").."\n|r"
			else
				N =""
			end
			
			if ST_InterruptList[2] then
				IL_C = {GetAverageItemLevel()}
				IL = "物品等级 "..string.format("%.1f", IL_C[2]).."\n|r"		--	物品等级
			else
				IL = ""
			end	

			if ST_InterruptList[3] then	
				S_C = UnitStat("player",1)							-- 力量
				AG_C = UnitStat("player",2)							-- 敏捷
				IN_C = UnitStat("player",4)							-- 智力
				if S_C > AG_C and S_C > IN_C then
					if (S_C> janyRecordHigh[1]) then
						janyRecordHigh[1] = S_C;
						janycoloredText[1] = "|cFF00FF00";
					elseif (S_C< janyRecordHigh[1]) then
						janyRecordHigh[1] = S_C;
						janycoloredText[1] = "|cFFFF0000";
					else
						janyRecordHigh[1] = S_C;
						janycoloredText[1] = "|cFFFFFFFF";
					end
					S = "力量 "..janycoloredText[1]..S_C.."\n|r"
				elseif AG_C > S_C and AG_C > IN_C then
					if (AG_C> janyRecordHigh[1]) then
						janyRecordHigh[1] = AG_C;
						janycoloredText[1] = "|cFF00FF00";
					elseif (AG_C< janyRecordHigh[1]) then
						janyRecordHigh[1] = AG_C;
						janycoloredText[1] = "|cFFFF0000";
					else
						janyRecordHigh[1] = AG_C;
						janycoloredText[1] = "|cFFFFFFFF";
					end
					S = "敏捷 "..janycoloredText[1]..AG_C.."\n|r"
				elseif IN_C > S_C and IN_C > AG_C then
					if (IN_C> janyRecordHigh[1]) then
						janyRecordHigh[1] = IN_C;
						janycoloredText[1] = "|cFF00FF00";
					elseif (IN_C< janyRecordHigh[1]) then
						janyRecordHigh[1] = IN_C;
						janycoloredText[1] = "|cFFFF0000";
					else
						janyRecordHigh[1] = IN_C;
						janycoloredText[1] = "|cFFFFFFFF";
					end
					S = "智力 "..janycoloredText[1]..IN_C.."\n|r"
				end
			else
				S = ""
			end
			if ST_InterruptList[4] then	
				A_C = {UnitArmor("player")}
				if (A_C[2]> janyRecordHigh[2]) then
					janyRecordHigh[2] = A_C[2];
					janycoloredText[2] = "|cFF00FF00";
				elseif (A_C[2]< janyRecordHigh[2]) then
					janyRecordHigh[2] = A_C[2];
					janycoloredText[2] = "|cFFFF0000";
				else
					janyRecordHigh[2] = A_C[2];
					janycoloredText[2] = "|cFFFFFFFF";
				end
				A = "护甲 "..janycoloredText[2]..A_C[2].."\n|r"
			else
				A = ""
			end
			

			if ST_InterruptList[5] then 
				if (GetCritChance()> janyRecordHigh[3]) then
					janyRecordHigh[3] = GetCritChance();
					janycoloredText[3] = "|cFF00FF00";
				elseif (GetCritChance()< janyRecordHigh[3]) then
					janyRecordHigh[3] = GetCritChance();
					janycoloredText[3] = "|cFFFF0000";
				else
					janyRecordHigh[3] = GetCritChance();
					janycoloredText[3] = "|cFFFFFFFF";
				end
				CC = "暴击 "..janycoloredText[3]..string.format("%.1f", GetCritChance()).."%\n|r" 
			else
				CC =""
			end

			if ST_InterruptList[6] then
				if (GetHaste()> janyRecordHigh[4]) then
					janyRecordHigh[4] = GetHaste();
					janycoloredText[4] = "|cFF00FF00";
				elseif (GetHaste()< janyRecordHigh[4]) then
					janyRecordHigh[4] = GetHaste();
					janycoloredText[4] = "|cFFFF0000";
				else
					janyRecordHigh[4] = GetHaste();
					janycoloredText[4] = "|cFFFFFFFF";
				end
				H = "急速 "..janycoloredText[4]..string.format("%.1f", GetHaste()).."%\n|r" --	 急速
			else
				H = ""
			end
			if ST_InterruptList[7] then
				if (GetMasteryEffect()> janyRecordHigh[5]) then
					janyRecordHigh[5] = GetMasteryEffect();
					janycoloredText[5] = "|cFF00FF00";
				elseif (GetMasteryEffect()< janyRecordHigh[5]) then
					janyRecordHigh[5] = GetMasteryEffect();
					janycoloredText[5] = "|cFFFF0000";
				else
					janyRecordHigh[5] = GetMasteryEffect();
					janycoloredText[5] = "|cFFFFFFFF";
				end
				M = "精通 "..janycoloredText[5]..string.format("%.1f", GetMasteryEffect()).."%\n|r" --	 精通
			else
				M = ""
			end
				
			if ST_InterruptList[8] then
				V  = "全能 |cFFFFFFFF"..string.format("%.1f", GetCombatRatingBonus(29)).."%\n|r"			-- 全能
			else
				V = ""
			end
			if ST_InterruptList[9] then
				LS  = "吸血 |cFFFFFFFF"..string.format("%.1f", GetCombatRatingBonus(17)).."%\n|r"			-- 吸血	
			else
				LS =""
			end
			if ST_InterruptList[10] then
				DC = "躲闪 |cFFFFFFFF"..string.format("%.1f", GetDodgeChance()).."%\n|r"		--	躲闪
			else
				DC = ""
			end
			if ST_InterruptList[11] then
				PC = "招架 |cFFFFFFFF"..string.format("%.1f", GetParryChance()).."%\n|r"		--	招架
			else
				PC =""
			end

			if ST_InterruptList[12] then
				BC = "格挡 |cFFFFFFFF"..string.format("%.1f", GetBlockChance()).."%"			-- 格挡	
			else
				BC = ""
			end
			--print(N..IL..S..A..CC..H..M..V..LS..DC..PC..BC)
		end		

	
		-- get the data
		if(LD_iCurrent2 == 1) then
			classtype = "caster";
			line1text = GetSpellBonusDamage(3);
		else
			classtype = "melee";
			base, posBuff, negBuff = UnitAttackPower("player");

			iAttackPower = base + posBuff;
			line1text = iAttackPower;
		end
		if(LD_iCurrent == 9) then
			line2text = numberToPercent(GetCritChance());--爆击
		elseif(LD_iCurrent == 10) then
			line2text = numberToPercent(GetRangedCritChance());
		elseif(LD_iCurrent == 11) then
			line2text = numberToPercent(GetSpellCritChance(3));
		elseif(LD_iCurrent == 12) then
			base, casting = GetManaRegen();
			line2text = floor( (base * 5)  + .5 );
		elseif(LD_iCurrent == 13) then
			line2text = round(GetMastery(), 2);
		elseif(LD_iCurrent == 24) then
			expertise, offhandExpertise = GetExpertise();
			line2text = expertise;
		else
			line2text = GetCombatRating(LD_iCurrent);
		end
--/script ChatFrame1:AddMessage(GetCombatRating(12)
		
		-- format the text for output
		if (classtype == "melee") then
			line1label = "力量: ";
			iRH = 2;
		else
			line1label = "智力: ";
			iRH = 1;
		end

		coloredText = {};
		if (line1text > RecordHigh[iRH]) then

			RecordHigh[iRH] = line1text;
			newRecordMessage = "+ |cFFFF0000ShowChance :: |rNew Highest "..line1label.." |cFFFF7F50"..line1text;
			--ChatFrame1:AddMessage(newRecordMessage);--力晕有新高时
			coloredText[1] = "|cFFFF7F50";
		else

			coloredText[1] = "";
			--DEBUG--ChatFrame1:AddMessage("line1text: "..line1text..", RecordHigh[1]: "..RecordHigh[1]);
		end
		
		line1forOutput = line1label..coloredText[1]..comma_value(line1text);

		
		-- actual output
		--ShowChance_FrameText:SetText(line1forOutput.."\n|r"..skillTable[LD_iCurrent]..": "..comma_value(line2text).."\n|r"..skillTable[LD_iCurrent3]..": "..line3text.."%");

		
		ShowChance_FrameText:SetJustifyH("LEFT")
		ShowChance_FrameText:SetFont(GameFontNormal:GetFont(), SFF)
		ShowChance_FrameText:SetText(N..IL..S..A..CC..H..M..V..LS..DC..PC..BC);
		-- reset update counter
		self.TimeSinceLastUpdate = 0;
	end --end if updating

end--end ShowChance_OnUpdate()

function numberToPercent(x)
	return format("%.2f%%", x);
end

function ShowChance_flip1()
	if(LD_iCurrent < 27) then
		LD_iCurrent = LD_iCurrent + 1;
		if(skillTable[LD_iCurrent] == "unused") then
			while(skillTable[LD_iCurrent] == "unused") do
				LD_iCurrent = LD_iCurrent + 1;
			end
		end
	else
		LD_iCurrent = 3;
	end
end

function ShowChance_flip2()
	if(LD_iCurrent2 == 2) then
		LD_iCurrent2 = 1;
	else
		LD_iCurrent2 = 2;
	end
end
function ShowChance_flip3()

end


function SetInterval(val)
	ShowChance_UpdateInterval = val / 1000;
end


function showHighScore()--显示高分
	if(LD_iCurrent2 == 1) then
		recordText = "最高法术力量: ";
		iRH = 1;
	else
		recordText = "最高攻击力: ";
		iRH = 2;
	end
	highRecordMessage = "+ |cFFFF0000ShowChance :: |r"..recordText.." |cFFFF7F50"..comma_value(RecordHigh[iRH]);
	ChatFrame1:AddMessage(highRecordMessage);
end

SLASH_ShowChance1, SLASH_ShowChance1 = "/sc", "/ShowChance";
SlashCmdList["ShowChance"] = function(msg, editBox)
--	InterfaceOptionsFrame_OpenToCategory("ShowChance");
	--showHighScore();
		hendlers(msg)
end

function hendlers(msg, ... )--命令行
	msg=msg:lower()
	local command, rest = msg:match("^(%S*)%s*(.-)$")
	if command == msg then
		SFF = msg
		ShowChance_FrameText:SetFont(GameFontNormal:GetFont(), SFF)
	end
end
---============================================================
-- rounds a number to the nearest decimal places
--
function round(val, decimal)
  if (decimal) then
    return math.floor( (val * 10^decimal) + 0.5) / (10^decimal)
  else
    return math.floor(val+0.5)
  end
end

-- add comma to separate thousands
-- 
function comma_value(amount)
  local formatted = amount
  while true do  
    formatted, k = string.gsub(formatted, "^(-?%d+)(%d%d%d)", '%1,%2')
    if (k==0) then
      break
    end
  end
  return formatted
end


UIFrameFadeOut(ShowChance_FrameText, 1, 0.2, 0.8)


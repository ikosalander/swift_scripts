-- Auteur SkyDrogz --

lastMapId = 97261085
AUTO_DELETE = {}
OPEN_BAGS = true
GATHER = {  }

MIN_MONSTERS = 1
MAX_MONSTERS = 8
function move()
return
	{
	--on part de la banque--
	{map ="147254", path="havenbag"},
	--on prend zap astrub--
	{map = "162791424", path = "zaap(84674563)"},
	{map ="84674563", path="top"},
	{map ="84674562", path="top"},
	{map ="84674561", path="right"},
	{map ="84675073", path="top"},
	{map ="84675072", path="top"},
	{map ="84675329", path="right"},
	{map ="84675841", path="right"},
	{map ="84676353", path="right"},
	{map ="84676865", path="right"},
	--on rentre dans la mine astrub Hable--
	{map ="84677377", door="358"},
	{map ="102236673", path="263"},
	--on se remet dans la boucle--
	{map ="102237697", path="137"},
	-- Farm mine --
	{map = "9,-23", custom = mineHable, gather = true},
	{map = "5,19", custom = mineHeral, gather = true},
	{map = "-3,9", custom = mineIstairameur, gather = true},
	{map = "-25,45", custom = grotteHative, gather = true},
	{map = "-22,32", custom = mineEbbernar, gather = true},
	{map = "-2,-5", custom = mineAstirite, gather = true},
	{map = "97257999", custom = mineAstirite,fight = true,gather = true},
	
	{map = "-23,21", custom = mineHipouce, gather = true},
	{map = "-24,22", custom = mineHipouce, gather = true},
	{map = "-25,22", custom = mineHipouce, gather = true},
	{map = "-2,4", custom = mineAuderie, gather = true},
	{map = "0,-3", custom = mineYjupe, gather = true},
	{map = "-26,22", custom = mineVolcan, gather = true},
	-- On combat --
	{map ="97255965" , forcefight = true},
	{map ="97261085" ,custom = mineur},
	}
end
-- Grotte Hative --
function grotteHative()
	if lastMapId == 97261085 and map:currentMapId()== 178785290 then
		lastMapId = map:currentMapId()
		map:door(530)
	end
	if lastMapId == 178785290 and map:currentMapId()== 178784266 then
		lastMapId = map:currentMapId()
		map:door(114)
	end
	if lastMapId == 178784266 and map:currentMapId()== 178785290 then
		npc:npc(830,3)
		npc:reply(-1)
		npc:reply(-1)
	end
end
-- mine Astirite --
function mineAstirite()	
	if lastMapId == 97261085 and map:currentMapId()== 97256975 then
		lastMapId = map:currentMapId()
		map:moveToCell(323)
	end
	if lastMapId == 97256975 and map:currentMapId()== 97257999 then
		lastMapId = map:currentMapId()
		map:moveToCell(247)
	end
	if lastMapId == 97257999 and map:currentMapId()== 97259023 then
		lastMapId = map:currentMapId()
		map:moveToCell(451)
	end
	if lastMapId == 97259023 and map:currentMapId()== 97257999 then
		lastMapId = map:currentMapId()
		map:moveToCell(268)
	end
	if lastMapId == 97257999 and map:currentMapId()== 97260047 then
		lastMapId = map:currentMapId()
		map:moveToCell(379)
	end
	if lastMapId == 97260047 and map:currentMapId()== 97261071 then
		lastMapId = map:currentMapId()
		map:moveToCell(248)
	end
	if lastMapId == 97261071 and map:currentMapId()== 97260047 then
		lastMapId = map:currentMapId()
		map:moveToCell(432)
	end
	if lastMapId == 97260047 and map:currentMapId()== 97257999 then
		lastMapId = map:currentMapId()
		map:moveToCell(403)
	end
	if lastMapId == 97257999 and map:currentMapId()== 97256975 then
		npc:npc(830,3)
		npc:reply(-1)
		npc:reply(-1)
	end
end
-- mine Ebbernar -- 
function mineEbbernar()
	if lastMapId == 97261085 and map:currentMapId()== 29622275 then
		lastMapId = map:currentMapId()
		map:moveToCell(450)
	end
	if lastMapId == 29622275 and map:currentMapId()== 29622272 then
		lastMapId = map:currentMapId()
		map:moveToCell(450)
	end
	if lastMapId == 29622272 and map:currentMapId()== 29622531 then
		lastMapId = map:currentMapId()
		map:moveToCell(180)
	end
	if lastMapId == 29622531 and map:currentMapId()== 29622272 then
		lastMapId = map:currentMapId()
		map:moveToCell(180)
	end
	if lastMapId == 29622272 and map:currentMapId()== 29622275 then
		npc:npc(830,3)
		npc:reply(-1)
		npc:reply(-1)
	end
end
-- mine Ebbernar Bank --
function mineEbbernarBank()
	if lastMapId == 97261085 and map:currentMapId()== 29622275 then
		lastMapId = map:currentMapId()
		map:moveToCell(450)
	end
	if lastMapId == 29622275 and map:currentMapId()== 29622272 then
		lastMapId = map:currentMapId()
		map:moveToCell(450)
	end
	if lastMapId == 29622272 and map:currentMapId()== 29622531 then
		lastMapId = map:currentMapId()
		map:moveToCell(180)
	end
	if lastMapId == 29622531 and map:currentMapId()== 29622272 then
		lastMapId = map:currentMapId()
		map:moveToCell(180)
	end
	if lastMapId == 29622272 and map:currentMapId()== 29622275 then
		npc:npc(830,3)
		npc:reply(-1)
		npc:reply(-1)
	end
end 
-- mine Auderie -- 
function mineAuderie ()	
	if lastMapId == 97261085 and map:currentMapId()== 97261069 then
		lastMapId = map:currentMapId()
		map:moveToCell(348)
	end
	if lastMapId == 97261069 and map:currentMapId()== 97260045 then
		lastMapId = map:currentMapId()
		map:moveToCell(291)
	end
	if lastMapId == 97260045 and map:currentMapId()== 97256973 then
		lastMapId = map:currentMapId()
		map:moveToCell(157)
	end
	if lastMapId == 97256973 and map:currentMapId()== 97255949 then
		lastMapId = map:currentMapId()
		map:moveToCell(376)
	end
	if lastMapId == 97255949 and map:currentMapId()== 97256973 then
		lastMapId = map:currentMapId()
		map:moveToCell(122)
	end
	if lastMapId == 97256973 and map:currentMapId()== 97257997 then
		lastMapId = map:currentMapId()
		map:moveToCell(235)
	end
	if lastMapId == 97257997 and map:currentMapId()== 97259021 then
		lastMapId = map:currentMapId()
		map:moveToCell(323)
	end
	if lastMapId == 97259021 and map:currentMapId()== 97257997 then
		lastMapId = map:currentMapId()
		map:moveToCell(451)
	end
	if lastMapId == 97257997 and map:currentMapId()== 97256973 then
		lastMapId = map:currentMapId()
		map:moveToCell(537)
	end
	if lastMapId == 97256973 and map:currentMapId()== 97260045 then
		lastMapId = map:currentMapId()
		map:moveToCell(254)
	end
	if lastMapId == 97260045 and map:currentMapId()== 97261069 then
		npc:npc(830,3)
		npc:reply(-1)
		npc:reply(-1)
	end
end
-- mine Hable --
function mineHable()
	if lastMapId == 97261085 and map:currentMapId()== 102238721 then
		lastMapId = map:currentMapId()
		map:moveToCell(306)
	end
	if lastMapId == 102238721   and map:currentMapId() == 102239745  then
		lastMapId = map:currentMapId()
		map:moveToCell (361)
	end
	if lastMapId == 102239745   and map:currentMapId() == 102236675  then
		lastMapId = map:currentMapId()
		map:moveToCell(534)
	end
	if lastMapId == 102236675   and map:currentMapId() ==  102239745   then
		lastMapId = map:currentMapId()
		map:moveToCell(519)
	end
	if lastMapId == 102239745   and map:currentMapId() ==  102238721  then
		lastMapId = map:currentMapId()
		map:moveToCell(548)
	end
	if lastMapId == 102238721   and map:currentMapId() == 102237697  then
		lastMapId = map:currentMapId()
		map:moveToCell(137)
	end
	if lastMapId == 102237697   and map:currentMapId() == 102238721 then
		npc:npc(830,3)
		npc:reply(-1)
		npc:reply(-1)
	else
		lastMapId = map:currentMapId()
		map:moveToCell(306)
	end
end
-- mine Heral --
function mineHeral ()
	if lastMapId == 97261085 and map:currentMapId()== 97261059 then
		lastMapId = map:currentMapId()
		map:moveToCell(417)
	end
	if lastMapId == 97261059 and map:currentMapId()== 97260033 then
		lastMapId = map:currentMapId()
		map:moveToCell(405)
	end
	if lastMapId == 97260033 and map:currentMapId()== 97261057 then
		lastMapId = map:currentMapId()
		map:moveToCell(421)
	end
	if lastMapId == 97261057 and map:currentMapId()== 97259011 then
		lastMapId = map:currentMapId()
		map:moveToCell(276)
	end
	if lastMapId == 97259011 and map:currentMapId()== 97261057 then
		lastMapId = map:currentMapId()
		map:moveToCell(487)
	end
	if lastMapId == 97261057 and map:currentMapId()== 97257987 then
		lastMapId = map:currentMapId()
		map:moveToCell(492)
	end
	if lastMapId == 97257987 and map:currentMapId()== 97260035 then
		lastMapId = map:currentMapId()
		map:moveToCell(288)
	end
	if lastMapId == 97260035 and map:currentMapId()== 97257987 then
		lastMapId = map:currentMapId()
		map:moveToCell(249)
	end
	if lastMapId == 97257987 and map:currentMapId()== 97256963 then
		lastMapId = map:currentMapId()
		map:moveToCell(172)
	end
	if lastMapId == 97256963 and map:currentMapId()== 97255939 then
		lastMapId = map:currentMapId()
		map:moveToCell(478)
	end
	if lastMapId == 97255939 and map:currentMapId()== 97261057 then
		lastMapId = map:currentMapId()
		map:moveToCell(227)
	end
	if lastMapId == 97261057 and map:currentMapId()== 97260033 then
		lastMapId = map:currentMapId()
		map:moveToCell(183)
	end
	if lastMapId == 97261057 and map:currentMapId()== 97260033 then
		lastMapId = map:currentMapId()
		map:moveToCell(183)
	end
	if lastMapId == 97260033 and map:currentMapId()== 97261059 then
		npc:npc(830,3)
		npc:reply(-1)
		npc:reply(-1)
	end
end
-- mine Istairameur --
function mineIstairameur()
	if lastMapId == 97261085 and map:currentMapId() == 97259013 then
		lastMapId = map:currentMapId()
		map:moveToCell(276)
	end
	if lastMapId == 97259013 and map:currentMapId() == 97256967 then
		lastMapId = map:currentMapId()
		map:moveToCell(194)
	end
	if lastMapId == 97256967 and map:currentMapId() == 97260039 then
		lastMapId = map:currentMapId()
		map:moveToCell(262)
	end
	if lastMapId == 97259013 and map:currentMapId() == 97256967 then
		lastMapId = map:currentMapId()
		map:moveToCell(194)
	end
	if lastMapId == 97260039 and map:currentMapId() == 97257993 then
		lastMapId = map:currentMapId()
		map:moveToCell(122)
	end
	if lastMapId == 97257993 and map:currentMapId() == 97261065 then
		lastMapId = map:currentMapId()
		map:moveToCell(236)
	end
	if lastMapId == 97261065 and map:currentMapId() == 97259019 then
		lastMapId = map:currentMapId()
		map:moveToCell(276)
	end
	if lastMapId == 97259019 and map:currentMapId() == 97260043 then
		lastMapId = map:currentMapId()
		map:moveToCell(451)
	end
	if lastMapId == 97260043 and map:currentMapId() == 97259019 then
		lastMapId = map:currentMapId()
		map:moveToCell(438)
	end
	if lastMapId == 97259019 and map:currentMapId() == 97261065 then
		lastMapId = map:currentMapId()
		map:moveToCell(213)
	end
	if lastMapId == 97261065 and map:currentMapId() == 97255947 then
		lastMapId = map:currentMapId()
		map:moveToCell(199)
	end
	if lastMapId == 97255947 and map:currentMapId() == 97256971 then
		lastMapId = map:currentMapId()
		map:moveToCell(234)
	end
	if lastMapId == 97256971 and map:currentMapId() == 97261067 then
		lastMapId = map:currentMapId()
		map:moveToCell(521)
	end
	if lastMapId == 97261067 and map:currentMapId() == 97256971 then
		lastMapId = map:currentMapId()
		map:moveToCell(239)
	end
	if lastMapId == 97256971 and map:currentMapId() == 97257995 then
		lastMapId = map:currentMapId()
		map:moveToCell(374)
	end
	if lastMapId == 97257995 and map:currentMapId() == 97256971 then
		lastMapId = map:currentMapId()
		map:moveToCell(503)
	end
	if lastMapId == 97256971 and map:currentMapId() == 97255947 then
		lastMapId = map:currentMapId()
		map:moveToCell(500)
	end
	if lastMapId == 97255947 and map:currentMapId() == 97261065 then
		lastMapId = map:currentMapId()
		map:moveToCell(479)
	end
	if lastMapId == 97261065 and map:currentMapId() == 97257993 then
		lastMapId = map:currentMapId()
		map:moveToCell(537)
	end
	if lastMapId == 97257993  and map:currentMapId() == 97260039 then
		lastMapId = map:currentMapId()
		map:moveToCell(241)
	end
	if lastMapId == 97260039 and map:currentMapId() == 97261063 then
		lastMapId = map:currentMapId()
		map:moveToCell(331)
	end
	if lastMapId == 97261063 and map:currentMapId() == 97259017 then
		lastMapId = map:currentMapId()
		map:moveToCell(436)
	end
	if lastMapId == 97259017 and map:currentMapId() == 97261063 then
		lastMapId = map:currentMapId()
		map:moveToCell(296)
	end
	if lastMapId == 97261063 and map:currentMapId() == 97255945 then
		lastMapId = map:currentMapId()
		map:moveToCell(332)
	end
	if lastMapId == 97255945 and map:currentMapId() == 97260041 then
		lastMapId = map:currentMapId()
		map:moveToCell(354)
	end

	if lastMapId == 97260041 and map:currentMapId() == 97255945 then
		lastMapId = map:currentMapId()
		map:moveToCell(213)
	end
	if lastMapId == 97255945 and map:currentMapId() == 97256969 then
		lastMapId = map:currentMapId()
		map:moveToCell(401)
	end
	if lastMapId == 97256969 and map:currentMapId() == 97255945 then
		lastMapId = map:currentMapId()
		map:moveToCell(416)
	end
	if lastMapId == 97255945 and map:currentMapId() == 97261063 then
		lastMapId = map:currentMapId()
		map:moveToCell(459)
	end
	if lastMapId == 97261063 and map:currentMapId() == 97260039 then
		lastMapId = map:currentMapId()
		map:moveToCell(451)
	end
	if lastMapId == 97260039 and map:currentMapId() == 97256967 then
		lastMapId = map:currentMapId()
		map:moveToCell(518)
	end
	if lastMapId == 97256967 and map:currentMapId() == 97259013 then
		lastMapId = map:currentMapId()
		lastMapId = map:currentMapId()
		map:moveToCell(258)
	end
	if lastMapId == 97259013 and map:currentMapId() == 97260037 then
		lastMapId = map:currentMapId()
		map:moveToCell(303)
	end
	if lastMapId == 97260037 and map:currentMapId() == 97257991 then
		lastMapId = map:currentMapId()
		map:moveToCell(464)
	end
	if lastMapId == 97257991 and map:currentMapId() == 97260037 then
		lastMapId = map:currentMapId()
		map:moveToCell(352)
	end
	if lastMapId == 97260037 and map:currentMapId() == 97261061 then
		lastMapId = map:currentMapId()
		map:moveToCell(290)
	end
	if lastMapId == 97261061 and map:currentMapId() == 97259015 then
		lastMapId = map:currentMapId()
		map:moveToCell(451)
	end
	if lastMapId == 97259015 and map:currentMapId() == 97261061 then
		lastMapId = map:currentMapId()
		map:moveToCell(284)
	end
	if lastMapId == 97261061 and map:currentMapId() == 97255943 then
		lastMapId = map:currentMapId()
		map:moveToCell(403)
	end
	if lastMapId == 97255943 and map:currentMapId() == 97261061 then
		lastMapId = map:currentMapId()
		map:moveToCell(458)
	end
	if lastMapId == 97261061 and map:currentMapId() == 97260037 then
		lastMapId = map:currentMapId()
		map:moveToCell(430)
	end
	if lastMapId == 97260037 and map:currentMapId() == 97259013 then
		lastMapId = map:currentMapId()
			npc:npc(830,3)
			npc:reply(-1)
			npc:reply(-1)
	end
end
-- mine Hipouce -- 
function mineHipouce ()
	if lastMapId == 97261085 and map:currentMapId()== 178784260 then 
		lastMapId = map:currentMapId()
		map:door(421)
	end
	if lastMapId == 178784260 and map:currentMapId()== 178783236 then
		lastMapId = map:currentMapId()
		map:door(309)
	end	
	if lastMapId == 178782214 and map:currentMapId()== 178783236 then
		lastMapId = map:currentMapId()
		map:door(555)
	end
	
	if lastMapId == 178783236 and map:currentMapId()== 178783232 then
		lastMapId = map:currentMapId()
		map:door(204)
	end
	if lastMapId == 178783232 and map:currentMapId()== 178784256 then
		lastMapId = map:currentMapId()
		map:door(505)
	end
	--
	if lastMapId == 178784256 and map:currentMapId()== 178783232 then
		lastMapId = map:currentMapId()
		map:door(403)
	end
	if lastMapId == 178783232 and map:currentMapId()== 178783234 then
		lastMapId = map:currentMapId()
		map:door(281)
	end
	if lastMapId == 178783234 and map:currentMapId()== 178782210 then
		lastMapId = map:currentMapId()
		map:door(185)
	end
	if lastMapId == 178782210 and map:currentMapId()== 178782208 then
		lastMapId = map:currentMapId()
		map:door(138)
	end
	if lastMapId == 178782208 and map:currentMapId()== 178783232 then
		lastMapId = map:currentMapId()
		map:door(200)
	end
	if lastMapId == 178783232 and map:currentMapId()== 178783236 then
		lastMapId = map:currentMapId()
		map:door(138)
	end
	if lastMapId == 178783236 and map:currentMapId()== 178784260 then
		npc:npc(830,3)
		npc:reply(-1)
		npc:reply(-1)
	end
end
-- mine volcan --
function mineVolcan ()
	if lastMapId == 178783236 and map:currentMapId()== 178782214 then
		lastMapId = map:currentMapId()
		map:door(150)
	end
end
-- mine Yjupe --
function mineYjupe ()
	if lastMapId == 97261085 and map:currentMapId()== 97255955 then
		npc:npc(830,3)
		npc:reply(-1)
		npc:reply(-1)
		-- lastMapId = map:currentMapId()
		--map:door(512)
	end
	if lastMapId == 97255955 and map:currentMapId()== 97256979 then
		lastMapId = map:currentMapId()
		map:door(248)
	end
	if lastMapId == 97256979 and map:currentMapId()== 97258003 then
		lastMapId = map:currentMapId()
		map:door(228)
	end
	if lastMapId == 97258003 and map:currentMapId()== 97259027 then
		lastMapId = map:currentMapId()
		map:door(194)
	end
	if lastMapId == 97259027 and map:currentMapId()== 97260051 then
		lastMapId = map:currentMapId()
		map:door(423)
	end
	if lastMapId == 97260051 and map:currentMapId()== 97259027 then
		lastMapId = map:currentMapId()
		map:door(267)
	end
	if lastMapId == 97259027 and map:currentMapId()== 97261075 then
		lastMapId = map:currentMapId()
		map:door(498)
	end
	if lastMapId == 97261075 and map:currentMapId()== 97259027 then
		lastMapId = map:currentMapId()
		map:door(515)
	end
	if lastMapId == 97259027 and map:currentMapId()== 97259003 then
		lastMapId = map:currentMapId()
		map:door(479)
	end
	if lastMapId == 97259003 and map:currentMapId()== 97256979 then
		lastMapId = map:currentMapId()
		map:door(297)
	end
	if lastMapId == 97256979 and map:currentMapId()== 97255955 then
		npc:npc(830,3)
		npc:reply(-1)
		npc:reply(-1)
		npc:reply(-1)
	end
end
-- On parleur au mineur ---
function mineur()
		lastMapId = 97261085
		npc:npc(830,3)
		npc:reply(-1)
		npc:reply(-1)
end
-- on fight --
-- Bank --
function bank()
return
	{
		--Grotte Hative--
		{map = "178785290", path = "havenbag"},
		{map = "178784266", path = "havenbag"},
		--mine Astirite--
		{map = "97261071", path = "havenbag"},
		{map = "97260047", path = "havenbag"},
		{map = "97259023", path = "havenbag"},
		{map = "97257999", path = "havenbag"},
		{map = "97256975", path = "havenbag"},
		--mine Auderie--
		{map = "97261069", path = "havenbag"},
		{map = "97260045", path = "havenbag"},
		{map = "97256973", path = "havenbag"},
		{map = "97255949", path = "havenbag"},
		{map = "97259021", path = "havenbag"},
		{map = "97257997", path = "havenbag"},
		--mine Ebbernar--
		{map = "-22,32", custom = mineEbbernarBank},
		--mine Hable--
		{map = "102237697", path = "havenbag"},
		{map = "102238721", path = "havenbag"},
		{map = "102239745", path = "havenbag"},
		{map = "102236675", path = "havenbag"},
		--mine Herale--
		{map = "97261059", path = "havenbag"},
		{map = "97260033", path = "havenbag"},
		{map = "97261057", path = "havenbag"},
		{map = "97255939", path = "havenbag"},
		{map = "97256963", path = "havenbag"},
		{map = "97257987", path = "havenbag"},
		{map = "97260035", path = "havenbag"},
		{map = "97259011", path = "havenbag"},
		--mine Hipouce--
		{map = "178784260", path = "havenbag"},
		{map = "178783236", path = "havenbag"},
		{map = "178783232", path = "havenbag"},
		{map = "178784256", path = "havenbag"},
		{map = "178783234", path = "havenbag"},
		{map = "178782210", path = "havenbag"},
		{map = "178782208", path = "havenbag"},
		-- mine volcan --
		{map = "178782214", path = "havenbag"},
		--mine istairameur--
		{map = "97255943", path = "havenbag"},
		{map = "97261061", path = "havenbag"},
		{map = "97260037", path = "havenbag"},
		{map = "97259013", path = "havenbag"},
		{map = "97256967", path = "havenbag"},
		{map = "97257991", path = "havenbag"},
		{map = "97259015", path = "havenbag"},
		{map = "97256969", path = "havenbag"},
		{map = "97255945", path = "havenbag"},
		{map = "97261063", path = "havenbag"},
		{map = "97260039", path = "havenbag"},
		{map = "9725799", path = "havenbag"},
		{map = "97259017", path = "havenbag"},
		{map = "97260041", path = "havenbag"},
		{map = "97257995", path = "havenbag"},
		{map = "97256971", path = "havenbag"},
		{map = "97255947", path = "havenbag"},
		{map = "97261065", path = "havenbag"},
		{map = "97261067", path = "havenbag"},
		{map = "97259019", path = "havenbag"},
		{map = "97260043", path = "havenbag"},
		--mine Yjupe--
		{map = "97255955", path = "havenbag"},
		{map = "97256979", path = "havenbag"},
		{map = "97261075", path = "havenbag"},
		{map = "97259027", path = "havenbag"},
		{map = "97258003", path = "havenbag"},
		{map = "97260051", path = "havenbag"},
		-- On combat --
		{map ="97255965" , forcefight = true},
		{map ="97261085" ,custom = mineur},
		--dans havenbag--
		{map = "162791424", path = "zaap(147768)"},
		--dans bonta--
		{map = "147768", path ="zaapi(147254)"},
		--map exterieur bank--
		{map = "147254", door = "383"},
		--dans bank--
		{map = "2885641", npcBank = true, path = "424"},
	}
end


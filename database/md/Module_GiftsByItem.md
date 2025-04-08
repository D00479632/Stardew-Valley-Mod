From Stardew Valley Wiki

## Description

This module takes a comma-separated list of villager names and transforms it into a bullet-separated list of villager icons + links to villager pages.

This module performs tasks that were formerly performed by arrays (sorting, translating, and formatting) in Template:GiftsByItem.

This module can be copy/pasted into all languages without alteration.

Please report any problems or issues with the module on the discussion page for Template:GiftsByItem.

* * *

```
local p = {}
local lang = string.upper(mw.getContentLanguage().code)	

--ts = translate & sort
function p.ts(frame)
    local villagerlist = frame.args[1]

    if villagerlist ~= nil then
	
		local vtable = {}
        local villagers = mw.text.split(villagerlist, ",", true)
        for i = 1, #villagers do
            local v = mw.text.trim(villagers[i])
            if v ~= "" then
                table.insert(vtable, v)
            end
        end
		
		--remove duplicate entries
		local dupes = {}
		local villagertable = {}
		for i = 1, #vtable do
		   if not dupes[vtable[i]] then
			  table.insert(villagertable, vtable[i])
			  dupes[vtable[i]] = true
		   end
		end
	
		--sort in English for JA & ZH, as the old template did
		table.sort(villagertable)

		if lang == "DE" then
			for k,v in pairs(villagertable) do
				if v == "Dwarf" then villagertable[k] = "Zwerg" end
				if v == "Wizard" then villagertable[k] = "Zauberer" end
			end
		elseif lang == "ES" then
			for k,v in pairs(villagertable) do
				if v == "Dwarf" then villagertable[k] = "Enano" end
				if v == "Wizard" then villagertable[k] = "Rasmodius" end
			end
		elseif lang == "FR" then
			for k,v in pairs(villagertable) do
				if v == "Dwarf" then villagertable[k] = "Nain" end
				if v == "Wizard" then villagertable[k] = "Sorcier" end
				if v == "Robin" then villagertable[k] = "Robine" end
				--In order to sort entries added as Léo, we have to
				--convert to English, then sort, then convert back.
				if v == "Léo" then villagertable[k] = "Leo" end
				--skip Léo until after the language-specific sort
			end
		elseif lang == "IT" then
			for k,v in pairs(villagertable) do	
				if v == "Dwarf" then villagertable[k] = "Nano" end
				if v == "Wizard" then villagertable[k] = "Mago" end
			end
		elseif lang == "JA" then
			for k,v in pairs(villagertable) do
				if v == "Alex" then villagertable[k] = "アレックス" end
				if v == "Elliott" then villagertable[k] = "エリオット" end
				if v == "Harvey" then villagertable[k] = "ハーヴィー" end
				if v == "Sam" then villagertable[k] = "サム" end
				if v == "Sebastian" then villagertable[k] = "セバスチャン" end
				if v == "Shane" then villagertable[k] = "シェーン" end
				if v == "Abigail" then villagertable[k] = "アビゲイル" end
				if v == "Emily" then villagertable[k] = "エミリー" end
				if v == "Haley" then villagertable[k] = "ヘイリー" end
				if v == "Leah" then villagertable[k] = "リア" end
				if v == "Maru" then villagertable[k] = "マル" end
				if v == "Penny" then villagertable[k] = "ペニー" end
				if v == "Caroline" then villagertable[k] = "キャロライン" end
				if v == "Clint" then villagertable[k] = "クリント" end
				if v == "Demetrius" then villagertable[k] = "ディメトリウス" end
				if v == "Dwarf" then villagertable[k] = "ドワーフ" end
				if v == "Evelyn" then villagertable[k] = "エブリン" end
				if v == "George" then villagertable[k] = "ジョージ" end
				if v == "Gus" then villagertable[k] = "ガス" end
				if v == "Jas" then villagertable[k] = "ジャス" end
				if v == "Jodi" then villagertable[k] = "ジョディ" end
				if v == "Kent" then villagertable[k] = "ケント" end
				if v == "Krobus" then villagertable[k] = "クロバス" end
				if v == "Leo" then villagertable[k] = "レオ" end
				if v == "Lewis" then villagertable[k] = "ルイス" end
				if v == "Linus" then villagertable[k] = "ライナス" end
				if v == "Marnie" then villagertable[k] = "マーニー" end
				if v == "Pam" then villagertable[k] = "パム" end
				if v == "Pierre" then villagertable[k] = "ピエール" end
				if v == "Robin" then villagertable[k] = "ロビン" end
				if v == "Sandy" then villagertable[k] = "サンディ" end
				if v == "Vincent" then villagertable[k] = "ヴィンセント" end
				if v == "Willy" then villagertable[k] = "ウィリー" end
				if v == "Wizard" then villagertable[k] = "魔術師" end          
			end	    
		elseif lang == "KO" then
			for k,v in pairs(villagertable) do
				if v == "Alex" then villagertable[k] = "알렉스" end
				if v == "Elliott" then villagertable[k] = "엘리엇" end
				if v == "Harvey" then villagertable[k] = "하비" end
				if v == "Sam" then villagertable[k] = "샘" end
				if v == "Sebastian" then villagertable[k] = "세바스찬" end
				if v == "Shane" then villagertable[k] = "셰인" end
				if v == "Abigail" then villagertable[k] = "애비게일" end
				if v == "Emily" then villagertable[k] = "에밀리" end
				if v == "Haley" then villagertable[k] = "헤일리" end
				if v == "Leah" then villagertable[k] = "레아" end
				if v == "Maru" then villagertable[k] = "마루" end
				if v == "Penny" then villagertable[k] = "페니" end
				if v == "Caroline" then villagertable[k] = "캐롤라인" end
				if v == "Clint" then villagertable[k] = "클린트" end
				if v == "Demetrius" then villagertable[k] = "드미트리우스" end
				if v == "Dwarf" then villagertable[k] = "드워프" end
				if v == "Evelyn" then villagertable[k] = "에블린" end
				if v == "George" then villagertable[k] = "조지" end
				if v == "Gus" then villagertable[k] = "거스" end
				if v == "Jas" then villagertable[k] = "재스" end
				if v == "Jodi" then villagertable[k] = "조디" end
				if v == "Kent" then villagertable[k] = "켄트" end
				if v == "Krobus" then villagertable[k] = "크로버스" end
				if v == "Leo" then villagertable[k] = "레오" end
				if v == "Lewis" then villagertable[k] = "루이스" end
				if v == "Linus" then villagertable[k] = "라이너스" end
				if v == "Marnie" then villagertable[k] = "마니" end
				if v == "Pam" then villagertable[k] = "팸" end
				if v == "Pierre" then villagertable[k] = "피에르" end
				if v == "Robin" then villagertable[k] = "로빈" end
				if v == "Sandy" then villagertable[k] = "샌디" end
				if v == "Vincent" then villagertable[k] = "빈센트" end
				if v == "Willy" then villagertable[k] = "윌리" end
				if v == "Wizard" then villagertable[k] = "마법사" end              
			end
		elseif lang == "HU" then
			for k,v in pairs(villagertable) do
				if v == "Dwarf" then villagertable[k] = "Törpe" end
				if v == "Wizard" then villagertable[k] = "Varázsló" end
			end
		elseif lang == "PT" then
			for k,v in pairs(villagertable) do
				if v == "Dwarf" then villagertable[k] = "Anão" end
				if v == "Wizard" then villagertable[k] = "Feiticeiro" end
			end	    
		elseif lang == "RU" then
			for k,v in pairs(villagertable) do
				if v == "Alex" then villagertable[k] = "Алекс" end
				if v == "Elliott" then villagertable[k] = "Эллиот" end
				if v == "Harvey" then villagertable[k] = "Харви" end
				if v == "Sam" then villagertable[k] = "Сэм" end
				if v == "Sebastian" then villagertable[k] = "Себастиан" end
				if v == "Shane" then villagertable[k] = "Шейн" end
				if v == "Abigail" then villagertable[k] = "Абигейл" end
				if v == "Emily" then villagertable[k] = "Эмили" end
				if v == "Haley" then villagertable[k] = "Хэйли" end
				if v == "Leah" then villagertable[k] = "Лея" end
				if v == "Maru" then villagertable[k] = "Мару" end
				if v == "Penny" then villagertable[k] = "Пенни" end
				if v == "Caroline" then villagertable[k] = "Кэролайн" end
				if v == "Clint" then villagertable[k] = "Клинт" end
				if v == "Demetrius" then villagertable[k] = "Деметриус" end
				if v == "Dwarf" then villagertable[k] = "Дварф" end
				if v == "Evelyn" then villagertable[k] = "Эвелин" end
				if v == "George" then villagertable[k] = "Джордж" end
				if v == "Gus" then villagertable[k] = "Гас" end
				if v == "Jas" then villagertable[k] = "Джас" end
				if v == "Jodi" then villagertable[k] = "Джоди" end
				if v == "Kent" then villagertable[k] = "Кент" end
				if v == "Krobus" then villagertable[k] = "Кробус" end
				if v == "Leo" then villagertable[k] = "Лео" end
				if v == "Lewis" then villagertable[k] = "Льюис" end
				if v == "Linus" then villagertable[k] = "Линус" end
				if v == "Marnie" then villagertable[k] = "Марни" end
				if v == "Pam" then villagertable[k] = "Пэм" end
				if v == "Pierre" then villagertable[k] = "Пьер" end
				if v == "Robin" then villagertable[k] = "Робин" end
				if v == "Sandy" then villagertable[k] = "Сэнди" end
				if v == "Vincent" then villagertable[k] = "Винсент" end
				if v == "Willy" then villagertable[k] = "Вилли" end
				if v == "Wizard" then villagertable[k] = "Волшебник" end
			end
		elseif lang == "TR" then
			for k,v in pairs(villagertable) do
				if v == "Dwarf" then villagertable[k] = "Cüce" end
				if v == "Wizard" then villagertable[k] = "Büyücü" end
			end	    
		elseif lang == "ZH" then
			for k,v in pairs(villagertable) do
				if v == "Alex" then villagertable[k] = "亚历克斯" end
				if v == "Elliott" then villagertable[k] = "艾利欧特" end
				if v == "Harvey" then villagertable[k] = "哈维" end
				if v == "Sam" then villagertable[k] = "山姆" end
				if v == "Sebastian" then villagertable[k] = "塞巴斯蒂安" end
				if v == "Shane" then villagertable[k] = "谢恩" end
				if v == "Abigail" then villagertable[k] = "阿比盖尔" end
				if v == "Emily" then villagertable[k] = "艾米丽" end
				if v == "Haley" then villagertable[k] = "海莉" end
				if v == "Leah" then villagertable[k] = "莉亚" end
				if v == "Maru" then villagertable[k] = "玛鲁" end
				if v == "Penny" then villagertable[k] = "潘妮" end
				if v == "Caroline" then villagertable[k] = "卡洛琳" end
				if v == "Clint" then villagertable[k] = "克林特" end
				if v == "Demetrius" then villagertable[k] = "德米特里厄斯" end
				if v == "Dwarf" then villagertable[k] = "矮人" end
				if v == "Evelyn" then villagertable[k] = "艾芙琳" end
				if v == "George" then villagertable[k] = "乔治" end
				if v == "Gus" then villagertable[k] = "格斯" end
				if v == "Jas" then villagertable[k] = "贾斯" end
				if v == "Jodi" then villagertable[k] = "乔迪" end
				if v == "Kent" then villagertable[k] = "肯特" end
				if v == "Krobus" then villagertable[k] = "科罗布斯" end
				if v == "Leo" then villagertable[k] = "雷欧" end
				if v == "Lewis" then villagertable[k] = "刘易斯" end
				if v == "Linus" then villagertable[k] = "莱纳斯" end
				if v == "Marnie" then villagertable[k] = "玛妮" end
				if v == "Pam" then villagertable[k] = "潘姆" end
				if v == "Pierre" then villagertable[k] = "皮埃尔" end
				if v == "Robin" then villagertable[k] = "罗宾" end
				if v == "Sandy" then villagertable[k] = "桑迪" end
				if v == "Vincent" then villagertable[k] = "文森特" end
				if v == "Willy" then villagertable[k] = "威利" end
				if v == "Wizard" then villagertable[k] = "法师" end
			end
		end
		
		if ((lang ~= "JA") and (lang ~= "ZH")) then
			table.sort(villagertable)
		end

		--put the table "villagertable" back into a string blob
		--table.concat( table, sep, i, j ) DOES NOT WORK
		villagerlist = ""
		for i = 1, (#villagertable-1) do
			villagerlist = villagerlist .. '<span class="no-wrap">[[File:' .. villagertable[i] .. ' Icon.png|32px|link=' .. villagertable[i] .. ']]&nbsp;[[' .. villagertable[i] .. ']]</span> • '
		end
		--We don't want a trailing bullet at the end of the list
		villagerlist = villagerlist .. '<span class="no-wrap">[[File:' .. villagertable[#villagertable] .. ' Icon.png|32px|link=' .. villagertable[#villagertable] .. ']]&nbsp;[[' .. villagertable[#villagertable] .. ']]</span>'


		--Now that we've sorted by the native language, 
		--fix icons whose names are all in English
		--Also add the é to Leo for French
		--so I don't have to write an entire substitution table for accented chars
		if lang == "DE" then
			villagerlist = string.gsub(villagerlist, "Zwerg Icon", "Dwarf Icon")
			villagerlist = string.gsub(villagerlist, "Zauberer Icon", "Wizard Icon")
		elseif lang == "ES" then	
			villagerlist = string.gsub(villagerlist, "Enano Icon", "Dwarf Icon")
			villagerlist = string.gsub(villagerlist, "Rasmodius Icon", "Wizard Icon")	
		elseif lang == "FR" then	
			villagerlist = string.gsub(villagerlist, "Nain Icon", "Dwarf Icon")
			villagerlist = string.gsub(villagerlist, "Sorcier Icon", "Wizard Icon")
			villagerlist = string.gsub(villagerlist, "Robine Icon", "Robin Icon")
			--This is hacky, but it works
			villagerlist = string.gsub(villagerlist, "Leo", "Léo")
			villagerlist = string.gsub(villagerlist, "Léo Icon", "Leo Icon")	
		elseif lang == "IT" then
			villagerlist = string.gsub(villagerlist, "Nano Icon", "Dwarf Icon")
			villagerlist = string.gsub(villagerlist, "Mago Icon", "Wizard Icon")
		elseif lang == "JA" then
			villagerlist = string.gsub(villagerlist, "アレックス Icon", "Alex Icon")
			villagerlist = string.gsub(villagerlist, "エリオット Icon", "Elliott Icon")
			villagerlist = string.gsub(villagerlist, "ハーヴィー Icon", "Harvey Icon")
			villagerlist = string.gsub(villagerlist, "サム Icon", "Sam Icon")
			villagerlist = string.gsub(villagerlist, "セバスチャン Icon", "Sebastian Icon")
			villagerlist = string.gsub(villagerlist, "シェーン Icon", " Shane Icon")
			villagerlist = string.gsub(villagerlist, "アビゲイル Icon", "Abigail Icon")
			villagerlist = string.gsub(villagerlist, "エミリー Icon", "Emily Icon")
			villagerlist = string.gsub(villagerlist, "ヘイリー Icon", "Haley Icon")
			villagerlist = string.gsub(villagerlist, "リア Icon", "Leah Icon")
			villagerlist = string.gsub(villagerlist, "マル Icon", "Maru Icon")
			villagerlist = string.gsub(villagerlist, "ペニー Icon", "Penny Icon")
			villagerlist = string.gsub(villagerlist, "キャロライン Icon", "Caroline Icon")
			villagerlist = string.gsub(villagerlist, "クリント Icon", "Clint Icon")
			villagerlist = string.gsub(villagerlist, "ディメトリウス Icon", "Demetrius Icon")
			villagerlist = string.gsub(villagerlist, "ドワーフ Icon", "Dwarf Icon")
			villagerlist = string.gsub(villagerlist, "エブリン Icon", "Evelyn Icon")
			villagerlist = string.gsub(villagerlist, "ジョージ Icon", "George Icon")
			villagerlist = string.gsub(villagerlist, "ガス Icon", "Gus Icon")
			villagerlist = string.gsub(villagerlist, "ジャス Icon", "Jas Icon")
			villagerlist = string.gsub(villagerlist, "ジョディ Icon", "Jodi Icon")
			villagerlist = string.gsub(villagerlist, "ケント Icon", "Kent Icon")
			villagerlist = string.gsub(villagerlist, "クロバス Icon", "Krobus Icon")
			villagerlist = string.gsub(villagerlist, "レオ Icon", "Leo Icon")
			villagerlist = string.gsub(villagerlist, "ルイス Icon", "Lewis Icon")
			villagerlist = string.gsub(villagerlist, "ライナス Icon", "Linus Icon")
			villagerlist = string.gsub(villagerlist, "マーニー Icon", "Marnie Icon")
			villagerlist = string.gsub(villagerlist, "パム Icon", "Pam Icon")
			villagerlist = string.gsub(villagerlist, "ピエール Icon", "Pierre Icon")
			villagerlist = string.gsub(villagerlist, "ロビン Icon", "Robin Icon")
			villagerlist = string.gsub(villagerlist, "サンディ Icon", "Sandy Icon")
			villagerlist = string.gsub(villagerlist, "ヴィンセント Icon", "Vincent Icon")
			villagerlist = string.gsub(villagerlist, "ウィリー Icon", "Willy Icon")
			villagerlist = string.gsub(villagerlist, "魔術師 Icon", "Wizard Icon")
		elseif lang == "KO" then
			villagerlist = string.gsub(villagerlist, "알렉스 Icon", "Alex Icon")
			villagerlist = string.gsub(villagerlist, "엘리엇 Icon", "Elliott Icon")
			villagerlist = string.gsub(villagerlist, "하비 Icon", "Harvey Icon")
			villagerlist = string.gsub(villagerlist, "샘 Icon", "Sam Icon")
			villagerlist = string.gsub(villagerlist, "세바스찬 Icon", "Sebastian Icon")
			villagerlist = string.gsub(villagerlist, "셰인 Icon", " Shane Icon")
			villagerlist = string.gsub(villagerlist, "애비게일 Icon", "Abigail Icon")
			villagerlist = string.gsub(villagerlist, "에밀리 Icon", "Emily Icon")
			villagerlist = string.gsub(villagerlist, "헤일리 Icon", "Haley Icon")
			villagerlist = string.gsub(villagerlist, "레아 Icon", "Leah Icon")
			villagerlist = string.gsub(villagerlist, "마루 Icon", "Maru Icon")
			villagerlist = string.gsub(villagerlist, "페니 Icon", "Penny Icon")
			villagerlist = string.gsub(villagerlist, "캐롤라인 Icon", "Caroline Icon")
			villagerlist = string.gsub(villagerlist, "클린트 Icon", "Clint Icon")
			villagerlist = string.gsub(villagerlist, "드미트리우스 Icon", "Demetrius Icon")
			villagerlist = string.gsub(villagerlist, "드워프 Icon", "Dwarf Icon")
			villagerlist = string.gsub(villagerlist, "에블린 Icon", "Evelyn Icon")
			villagerlist = string.gsub(villagerlist, "조지 Icon", "George Icon")
			villagerlist = string.gsub(villagerlist, "거스 Icon", "Gus Icon")
			villagerlist = string.gsub(villagerlist, "재스 Icon", "Jas Icon")
			villagerlist = string.gsub(villagerlist, "조디 Icon", "Jodi Icon")
			villagerlist = string.gsub(villagerlist, "켄트 Icon", "Kent Icon")
			villagerlist = string.gsub(villagerlist, "크로버스 Icon", "Krobus Icon")
			villagerlist = string.gsub(villagerlist, "레오 Icon", "Leo Icon")
			villagerlist = string.gsub(villagerlist, "루이스 Icon", "Lewis Icon")
			villagerlist = string.gsub(villagerlist, "라이너스 Icon", "Linus Icon")
			villagerlist = string.gsub(villagerlist, "마니 Icon", "Marnie Icon")
			villagerlist = string.gsub(villagerlist, "팸 Icon", "Pam Icon")
			villagerlist = string.gsub(villagerlist, "피에르 Icon", "Pierre Icon")
			villagerlist = string.gsub(villagerlist, "로빈 Icon", "Robin Icon")
			villagerlist = string.gsub(villagerlist, "샌디 Icon", "Sandy Icon")
			villagerlist = string.gsub(villagerlist, "빈센트 Icon", "Vincent Icon")
			villagerlist = string.gsub(villagerlist, "윌리 Icon", "Willy Icon")
			villagerlist = string.gsub(villagerlist, "마법사 Icon", "Wizard Icon")
		elseif lang == "HU" then
			villagerlist = string.gsub(villagerlist, "Törpe Icon", "Dwarf Icon")
			villagerlist = string.gsub(villagerlist, "Varázsló Icon", "Wizard Icon")
		elseif lang == "PT" then
			villagerlist = string.gsub(villagerlist, "Anão Icon", "Dwarf Icon")
			villagerlist = string.gsub(villagerlist, "Feiticeiro Icon", "Wizard Icon")	
		elseif lang == "RU" then
			villagerlist = string.gsub(villagerlist, "Алекс Icon", "Alex Icon")
			villagerlist = string.gsub(villagerlist, "Эллиот Icon", "Elliott Icon")
			villagerlist = string.gsub(villagerlist, "Харви Icon", "Harvey Icon")
			villagerlist = string.gsub(villagerlist, "Сэм Icon", "Sam Icon")
			villagerlist = string.gsub(villagerlist, "Себастиан Icon", "Sebastian Icon")
			villagerlist = string.gsub(villagerlist, "Шейн Icon", " Shane Icon")
			villagerlist = string.gsub(villagerlist, "Абигейл Icon", "Abigail Icon")
			villagerlist = string.gsub(villagerlist, "Эмили Icon", "Emily Icon")
			villagerlist = string.gsub(villagerlist, "Хэйли Icon", "Haley Icon")
			villagerlist = string.gsub(villagerlist, "Лея Icon", "Leah Icon")
			villagerlist = string.gsub(villagerlist, "Мару Icon", "Maru Icon")
			villagerlist = string.gsub(villagerlist, "Пенни Icon", "Penny Icon")
			villagerlist = string.gsub(villagerlist, "Кэролайн Icon", "Caroline Icon")
			villagerlist = string.gsub(villagerlist, "Клинт Icon", "Clint Icon")
			villagerlist = string.gsub(villagerlist, "Деметриус Icon", "Demetrius Icon")
			villagerlist = string.gsub(villagerlist, "Дварф Icon", "Dwarf Icon")
			villagerlist = string.gsub(villagerlist, "Эвелин Icon", "Evelyn Icon")
			villagerlist = string.gsub(villagerlist, "Джордж Icon", "George Icon")
			villagerlist = string.gsub(villagerlist, "Гас Icon", "Gus Icon")
			villagerlist = string.gsub(villagerlist, "Джас Icon", "Jas Icon")
			villagerlist = string.gsub(villagerlist, "Джоди Icon", "Jodi Icon")
			villagerlist = string.gsub(villagerlist, "Кент Icon", "Kent Icon")
			villagerlist = string.gsub(villagerlist, "Кробус Icon", "Krobus Icon")
			villagerlist = string.gsub(villagerlist, "Лео Icon", "Leo Icon")
			villagerlist = string.gsub(villagerlist, "Льюис Icon", "Lewis Icon")
			villagerlist = string.gsub(villagerlist, "Линус Icon", "Linus Icon")
			villagerlist = string.gsub(villagerlist, "Марни Icon", "Marnie Icon")
			villagerlist = string.gsub(villagerlist, "Пэм Icon", "Pam Icon")
			villagerlist = string.gsub(villagerlist, "Пьер Icon", "Pierre Icon")
			villagerlist = string.gsub(villagerlist, "Робин Icon", "Robin Icon")
			villagerlist = string.gsub(villagerlist, "Сэнди Icon", "Sandy Icon")
			villagerlist = string.gsub(villagerlist, "Винсент Icon", "Vincent Icon")
			villagerlist = string.gsub(villagerlist, "Вилли Icon", "Willy Icon")
			villagerlist = string.gsub(villagerlist, "Волшебник Icon", "Wizard Icon")	
		elseif lang == "TR" then
			villagerlist = string.gsub(villagerlist, "Cüce Icon", "Dwarf Icon")
			villagerlist = string.gsub(villagerlist, "Büyücü Icon", "Wizard Icon")	
		elseif lang == "ZH" then
			villagerlist = string.gsub(villagerlist, "亚历克斯 Icon", "Alex Icon")
			villagerlist = string.gsub(villagerlist, "艾利欧特 Icon", "Elliott Icon")
			villagerlist = string.gsub(villagerlist, "哈维 Icon", "Harvey Icon")
			villagerlist = string.gsub(villagerlist, "山姆 Icon", "Sam Icon")
			villagerlist = string.gsub(villagerlist, "塞巴斯蒂安 Icon", "Sebastian Icon")
			villagerlist = string.gsub(villagerlist, "谢恩 Icon", " Shane Icon")
			villagerlist = string.gsub(villagerlist, "阿比盖尔 Icon", "Abigail Icon")
			villagerlist = string.gsub(villagerlist, "艾米丽 Icon", "Emily Icon")
			villagerlist = string.gsub(villagerlist, "海莉 Icon", "Haley Icon")
			villagerlist = string.gsub(villagerlist, "莉亚 Icon", "Leah Icon")
			villagerlist = string.gsub(villagerlist, "玛鲁 Icon", "Maru Icon")
			villagerlist = string.gsub(villagerlist, "潘妮 Icon", "Penny Icon")
			villagerlist = string.gsub(villagerlist, "卡洛琳 Icon", "Caroline Icon")
			villagerlist = string.gsub(villagerlist, "克林特 Icon", "Clint Icon")
			villagerlist = string.gsub(villagerlist, "德米特里厄斯 Icon", "Demetrius Icon")
			villagerlist = string.gsub(villagerlist, "矮人 Icon", "Dwarf Icon")
			villagerlist = string.gsub(villagerlist, "艾芙琳 Icon", "Evelyn Icon")
			villagerlist = string.gsub(villagerlist, "乔治 Icon", "George Icon")
			villagerlist = string.gsub(villagerlist, "格斯 Icon", "Gus Icon")
			villagerlist = string.gsub(villagerlist, "贾斯 Icon", "Jas Icon")
			villagerlist = string.gsub(villagerlist, "乔迪 Icon", "Jodi Icon")
			villagerlist = string.gsub(villagerlist, "肯特 Icon", "Kent Icon")
			villagerlist = string.gsub(villagerlist, "科罗布斯 Icon", "Krobus Icon")
			villagerlist = string.gsub(villagerlist, "雷欧 Icon", "Leo Icon")
			villagerlist = string.gsub(villagerlist, "刘易斯 Icon", "Lewis Icon")
			villagerlist = string.gsub(villagerlist, "莱纳斯 Icon", "Linus Icon")
			villagerlist = string.gsub(villagerlist, "玛妮 Icon", "Marnie Icon")
			villagerlist = string.gsub(villagerlist, "潘姆 Icon", "Pam Icon")
			villagerlist = string.gsub(villagerlist, "皮埃尔 Icon", "Pierre Icon")
			villagerlist = string.gsub(villagerlist, "罗宾 Icon", "Robin Icon")
			villagerlist = string.gsub(villagerlist, "桑迪 Icon", "Sandy Icon")
			villagerlist = string.gsub(villagerlist, "文森特 Icon", "Vincent Icon")
			villagerlist = string.gsub(villagerlist, "威利 Icon", "Willy Icon")
			villagerlist = string.gsub(villagerlist, "法师 Icon", "Wizard Icon")
		end

		return villagerlist
    end --if villagerlist == nil, then do nothing but return p
end --end function p.ts()

return p
```

Retrieved from "https://stardewvalleywiki.com/mediawiki/index.php?title=Module:GiftsByItem&amp;oldid=145538"

Category:

- Modules
From Stardew Valley Wiki

## Description

This module calculates the sell price(s) for a sellable item. It can return a raw, unformatted number to be used as the data-sort-value in a table, or a number formatted appropriately for the language where it's used, including the letter(s) / character(s) for "gold", as used in the game.

This module performs some tasks that were formerly performed by arrays in Template:Qualityprice. The parameters this module requires are explained in the documentation for Template:Qualityprice.

This module can be copy/pasted into all languages without alteration.

Please report any problems or issues with the module on the discussion page for Template:Qualityprice.

* * *

```
--Assumes baseprice is always an integer
--Adds the language-appropriate letters/characters for 'gold'

local p = {}

--csp = calculate sell price
function p.csp(frame)
	local item = string.lower(frame.args.im)
	local baseprice = tonumber(frame.args.bp)
	local quality = tonumber(frame.args.q)
	local profmult = tonumber(frame.args.pm)
	local toFormatOrNotToFormat = string.lower(frame.args.fm)

	if ((baseprice == nil) or (baseprice == 0)) then return 0 end

	local qualitymult, artisanprice

	if (profmult == nil) or (item == "coffee") or (item == "oil") then profmult = 1 end

	if (quality == 1) then qualitymult = 1.25
	elseif (quality == 2) then qualitymult = 1.5
	elseif (quality == 4) then qualitymult = 2
	else qualitymult = 1
	end

	--Calculate some artisan goods prices from base ingredient price
	--These are needed for data-sort-values on pages like Flowers, Fruit, Vegetables
	if (string.find(item, "wine") ~= nil) then
		artisanprice = (baseprice * 3)
	elseif (string.find(item, "juice") ~= nil) then
		artisanprice = math.floor(baseprice * 2.25)
	elseif ((string.find(item, "jelly")) or (string.find(item, "pickles")) ~= nil) then
		artisanprice = (50 + (baseprice * 2))
	elseif (string.find(item, "dried") ~= nil) then
		artisanprice = math.floor((baseprice * 7.5) + 25)
	elseif (item == "honey") then
		--This is a hack that works only because
		--no flower has a base sell price of 100
		if (baseprice ~= 100) then
			artisanprice = (100 + (baseprice * 2))
		else 
			artisanprice = 100
		end
	elseif (string.find(item, "aged roe") ~= nil) then
		artisanprice = (2 * (30 + math.floor(baseprice / 2)))
	elseif (string.find(item, "roe") ~= nil) then
		artisanprice = (30 + math.floor(baseprice / 2))
	--[[elseif (item == "pale ale") then artisanprice = 300
	elseif ((item == "beer") or (item == "mead")) then artisanprice = 200
	elseif (item == "green tea") then artisanprice = 100
	elseif (item == "caviar") then artisanprice = 500
	elseif (item == "cheese") then artisanprice = 230
	elseif (item == "goat cheese") then artisanprice = 400
	elseif (item == "cloth") then artisanprice = 470
	elseif (item == "mayonnaise") then artisanprice = 190
	elseif (item == "duck mayonnaise") then artisanprice = 375
	elseif (item == "void mayonnaise") then artisanprice = 275
	elseif (item == "dinosaur mayonnaise") then artisanprice = 800
	elseif (item == "truffle oil") then artisanprice = 1065
	]]
	else artisanprice = baseprice
	end

	local sum = math.floor(math.floor(profmult * 10 * math.floor(qualitymult * artisanprice)) / 10)

	if toFormatOrNotToFormat == "false" then return sum end

	local formattedSum = mw.language.getContentLanguage():formatNum(sum)
	local ulang = string.upper(mw.language.getContentLanguage():getCode())

	if ulang == "DE" then return formattedSum .. " G"
	elseif (ulang == "EN" or ulang == "JA" or ulang == "HU" or ulang == "TR") then
		return formattedSum .. "g"
	elseif ulang == "ES" then
		if (sum < 1000) then return formattedSum .. "o"
		elseif (sum < 10000) then
			local length = #(tostring(sum))
			local temp = string.sub(tostring(sum), -3)	
			return string.sub(tostring(sum), 1, (length-3)) .. "." .. temp .. "o"
		else
			local temp = {mw.ustring.gsub(tostring(formattedSum), "%s" , ".")} 
			return temp[1] .. "o"	
		end
	elseif ulang == "FR" then return formattedSum .. "po"
	elseif ulang == "IT" then return formattedSum .. "o"
	elseif ulang == "KO" then return formattedSum .. "골드"
	elseif ulang == "PT" then
		if ((sum < 2) and (sum > -2)) then
			return formattedSum .. " ouro"
		else return formattedSum .. " ouros"
		end
	elseif ulang == "RU" then return formattedSum .. " з."
	elseif ulang == "ZH" then return formattedSum .. "金"
	else return formattedSum
	end
end

return p
```

Retrieved from "https://stardewvalleywiki.com/mediawiki/index.php?title=Module:Calcsellprice&amp;oldid=174176"

Category:

- Modules
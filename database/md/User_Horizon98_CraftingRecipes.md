From Stardew Valley Wiki

&lt; User:Horizon98

```
local p = {}

function p.recipes()
	-- Get data and then formalize them. 
	-- Example: {[1]={["name"] = "Wood Fence", ["big_craftable"] = "false", ["translation"] = "Wood Fence",}}
	local data = mw.text.jsonDecode(mw.title.new('Horizon98/CraftingRecipes/Data.json', 'User'):getContent())
	for i = 1, #data, 1 do
		for key, value in pairs(data[i]) do
			local text_split = mw.text.split(value,"/")
			data[i] = {["name"]=key,["big_craftable"]=text_split[4]}
			if text_split[6] then
				data[i]["translation"] = text_split[6]
			else
				data[i]["translation"] = key
			end
		end
	end

	local row = 4
	local col = 10
	local next_col = 10
	
	local page_number = 0
	local page = {}
	local total_number = #data
	local current = 1
	
	local result = ''

	-- Each page is an circulation.
	while true do
		page_number = page_number + 1
		page[page_number] = ''
		
		-- Each row is an circulation.
		for r = 1, row, 1 do
			page[page_number] = page[page_number]..'\n|-'
			col = next_col
			next_col = 10
			-- Each col is an circulation.
			for c = 1, col, 1 do
				-- big_craftable determines how many rows takes in one cell (1 or 2 rows)
				if data[current]["big_craftable"] == "true" then
					-- If the next is a big_craftable object and it's the fourth row, occupies left cells and create a new page.
					if r == 4 then 
						for i = 1, col, 1 do
							page[page_number] = page[page_number]..'\n|'
						end
						break
					end
					-- Image and link
					page[page_number] = page[page_number]..
						'\n|rowspan=\"2\" valign=\"bottom\"|[[File:'..data[current]["name"]..'.png|center|link='..data[current]["translation"]..']]'
					next_col = next_col - 1
					current = current + 1
				else
					page[page_number] = page[page_number]..
						'\n|valign=\"bottom\"|[[File:'..data[current]["name"]..'.png|center|link='..data[current]["translation"]..']]'
					current = current + 1
				end
				
				-- Judge the end of data, and add an 1px-wide cell at the last of each row to avoid accident.
				if current > total_number then
					for c_temp = c + 1, col, 1 do
						page[page_number] = page[page_number]..'\n|'
					end
					break 
				end
			end
			
			-- Add an 1px-wide cell at the last of each row to avoid accident.
			page[page_number] = page[page_number]..
				'\n|class=\"w1\"|'
			
			-- Judge the end of data, and complete the next row. 
			if current > total_number then
				page[page_number] = page[page_number]..'\n|-'
				for c = 1, next_col, 1 do
					page[page_number] = page[page_number]..
						'\n|'
				end
				page[page_number] = page[page_number]..'\n|class=\"w1\"|'
				break
			end
			
		end
		page[page_number] = page[page_number]..'\n|}</div>{{clear}}'
		if current > total_number then break end
	end
	
	-- Output
	for i = 1, #page, 1 do
		local temp = ''..
			'\n<div class=\"outercraftingrecipediv\"><div class=\"innercraftingrecipediv\">'
		
		-- Select the background picture according to the page number.
		if i == 1 then
			temp = temp..'[[File:Crafting Menu Background 1.png|600px|link=]]</div>'
		elseif i == #page then
			temp = temp..'[[File:Crafting Menu Background 3.png|600px|link=]]</div>'
		else
			temp = temp..'[[File:Crafting Menu Background 2.png|600px|link=]]</div>'
		end

		page[i] = temp..
			'\n{| class=\"craftingrecipetable\"'..
			page[i]
		result = result..'<templatestyles src=\"User:Horizon98/CraftingRecipes/styles.css\" />'..page[i]
	end
	
	return result
end

return p
```

Retrieved from "https://stardewvalleywiki.com/mediawiki/index.php?title=User:Horizon98/CraftingRecipes&amp;oldid=120759"
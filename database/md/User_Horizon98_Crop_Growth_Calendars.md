From Stardew Valley Wiki

&lt; User:Horizon98

```
local p = {}
local private = {}

----------main function----------
function p.calendar(frame)
  -- input args
  local name = frame.args['name']
  local size = frame.args['size'] or 36
  local speedIncrease = frame.args['increase'] or 0
  local season = frame.args['season'] or nil
  local irrigation = frame.args['irrigation'] or nil
  local stageImage = frame.args['image1'] or name..' Stage'
  local cropImage = frame.args['image2'] or name
  
  local mode = frame.args['mode'] or nil
  local title = frame.args['title'] or nil
  
----------Dictionary----------
  Dictionary = {
    ['speedGro'] = 'Speed-Gro',
    ['deluxeSpeedGro'] = 'Deluxe Speed-Gro',
    ['hyperSpeedGro'] = 'Hyper Speed-Gro',
    ['agriculturist'] = 'Agriculturist',
    
    ['monday'] = 'Mon',
    ['tuesday'] = 'Tue',
    ['wednesday'] = 'Wed',
    ['thursday'] = 'Thu',
    ['friday'] = 'Fri',
    ['saturday'] = 'Sat',
    ['sunday'] = 'Sun',
    ['spring'] = 'Spring',
    ['summer'] = 'Summer',
    ['fall'] = 'Fall',
    ['winter'] = 'Winter',

    ['collapsibleTable1'] = 'Agriculturist and Speed-Gro Comparison',
    ['collapsibleTable1Unirrigated'] = 'Agriculturist and Speed-Gro Comparison - Unirrigated',
    ['collapsibleTable2Irrigated'] = 'Agriculturist and Speed-Gro Comparison - Irrigated',
    ['regular'] = 'Regular',
    ['note'] = '\'\'Note that the 10% table also applies to the [[Farming#Farming Skill|Agriculturist Profession]] without any fertilizer.\'\'',
    ['dayOne'] = ' 1',
    ['base'] = 'Base',
    ['irrigated'] = ' Irrigated',
    ['unirrigated'] = ' Unirrigated',
    ['ifPlantOn'] = ' (if planted on ',
    ['closeParen'] = ')'
  }
  
----------crops' data----------
  local data = {
    ["Parsnip"] = "1 1 1 1/spring/0/24/-1/0/false/false/false",
    ["Green Bean"] = "0 1 1 1 3 4/spring/1/188/3/0/false/true/false",
    ["Cauliflower"] = "1 2 4 4 1/spring/2/190/-1/0/false/false/false",
    ["Potato"] = "1 1 1 2 1/spring/3/192/-1/0/true 1 1 0 .2/false/false",
    ["Garlic"] = "1 1 1 1/spring/4/248/-1/0/false/false/false",
    ["Unmilled Rice"] = "1 2 2 3/spring/34/271/-1/1/true 1 1 10 .1/false/false",
    ["Taro Root"] = "1 2 3 4/summer/42/830/-1/0/false/false/false",
    ["Kale"] = "1 2 2 1/spring/5/250/-1/1/false/false/false",
    ["Rhubarb"] = "2 2 2 3 4/spring/6/252/-1/0/false/false/false",
    ["Strawberry"] = "1 1 2 2 2/spring/36/400/4/0/true 1 1 0 .02/false/false",
    ["Melon"] = "1 2 3 3 3/summer/7/254/-1/0/false/false/false",
    ["Tomato"] = "2 2 2 2 3/summer/8/256/4/0/true 1 1 0 .05/false/false",
    ["Blueberry"] = "1 3 3 4 2/summer/9/258/4/0/true 3 3 0 .02/false/false",
    ["Hot Pepper"] = "1 1 1 1 1/summer/10/260/3/0/true 1 1 0 .03/false/false",
    ["Wheat"] = "1 1 1 1/summer fall/11/262/-1/1/false/false/false",
    ["Radish"] = "2 1 2 1/summer/12/264/-1/0/false/false/false",
    ["Red Cabbage"] = "2 1 2 2 2/summer/13/266/-1/0/false/false/false",
    ["Starfruit"] = "2 3 2 3 3/summer/14/268/-1/0/false/false/false",
    ["Pineapple"] = "1 3 3 4 3/summer/43/832/7/0/false/false/false",
    ["Coffee Bean"] = "1 2 2 3 2/spring summer/40/433/2/0/true 4 4 0 .02/false/false",
    ["Cactus Fruit"] = "2 2 2 3 3/spring summer fall winter/41/90/3/0/false/false/false",
    ["Corn"] = "2 3 3 3 3/summer fall/15/270/4/0/false/false/false",
    ["Hops"] = "1 0 1 2 3 4/summer/37/304/1/0/false/true/false",
    ["Grape"] = "1 1 2 3 3/fall/38/398/3/0/false/true/false",
    ["Amaranth"] = "1 2 2 2/fall/39/300/-1/1/false/false/false",
    ["Eggplant"] = "1 1 1 1 1/fall/16/272/5/0/true 1 1 0 .002/false/false",
    ["Artichoke"] = "2 2 1 2 1/fall/17/274/-1/0/false/false/false",
    ["Pumpkin"] = "1 2 3 4 3/fall/18/276/-1/0/false/false/false",
    ["Bok Choy"] = "1 1 1 1/fall/19/278/-1/0/false/false/false",
    ["Yam"] = "1 3 3 3/fall/20/280/-1/0/false/false/false",
    ["Cranberries"] = "1 2 1 1 2/fall/21/282/5/0/true 2 2 0 .1/false/false",
    ["Beet"] = "1 1 2 2/fall/22/284/-1/0/false/false/false",
    ["Ancient Fruit"] = "2 7 7 7 5/spring summer fall/24/454/7/0/false/false/false",
    ["Tulip"] = "1 1 2 2/spring/26/591/-1/0/false/false/true 255 186 255 223 191 255 255 246 0 255 80 0 255 158 193",
    ["Blue Jazz"] = "1 2 2 2/spring/27/597/-1/0/false/false/true 35 127 255 109 131 255 112 207 255 191 228 255 94 121 255 40 150 255",
    ["Poppy"] = "1 2 2 2/summer/28/376/-1/0/false/false/true 255 0 0 254 254 254 255 170 0",
    ["Summer Spangle"] = "1 2 3 2/summer/29/593/-1/0/false/false/true 0 208 255 99 255 210 255 212 0 255 144 122 255 0 238 206 91 255",
    ["Sunflower"] = "1 2 3 2/summer fall/30/421/-1/0/false/false/false",
    ["Fairy Rose"] = "1 4 4 3/fall/31/595/-1/0/false/false/true 187 0 255 119 137 255 71 227 255 255 127 144 205 178 255 140 119 255",
    ["Sweet Gem Berry"] = "2 4 6 6 6/fall/32/417/-1/0/false/false/false",
    ["Wild Horseradish"] = "3 4/spring/23/16/-1/0/false/false/false",
    ["Spice Berry"] = "3 4/summer/23/396/-1/0/false/false/false",
    ["Common Mushroom"] = "3 4/fall/23/404/-1/0/false/false/false",
    ["Winter Root"] = "3 4/winter/23/412/-1/0/false/false/false",
    ["Fiber"] = "1 2 2 2/spring summer fall winter/44/771/-1/1/true 4 7 0 .01/false/false",
    ["Qi Fruit"] = "1 1 1 1/spring summer fall winter/47/889/-1/0/false/false/false",
    ["Wild Seeds"] = "3 4/spring/23/16/-1/0/false/false/false"
  }
  
  local cropData = mw.text.split(data[name],"/")
  local phaseDays = mw.text.split(cropData[1], " ")
  if not season then
    season = mw.text.split(cropData[2], " ")
  else
    season = mw.text.split(season, " ")
  end
  local regrowth = tonumber(cropData[5])
  
  -- When mode = 'base', only return base wikitable
  if mode == 'base' then
  	return p.month(name, size, phaseDays, regrowth, speedIncrease, season, '', stageImage, cropImage, title)
  end
 
----------cropCalendars begin (irrigation='yes')---------- 
  local cropCalendars = ''
  -- whether the crop can be irrigated or not
  if irrigation == 'yes' then
  	
  	-- Base form
    cropCalendars = cropCalendars..
     '<table><tr><td>'..
     p.month(name, '', phaseDays, regrowth, 0, season, 'no', stageImage, cropImage)..
     '</td><td>'..
     p.month(name, '', phaseDays, regrowth, 0, season, 'yes', stageImage, cropImage)..
     '</td></tr></table>'..
     
     -- Agriculturist and Speed-Gro Comparison - Unirrigated
     '<table class=\"wikitable mw-collapsible mw-collapsed\" id=\"roundedborder\" style="text-align:center;\">'..
     '<tr><th colspan=\"4\" style=\"min-width:450px; min-height:40px;\">'..Dictionary['collapsibleTable1Unirrigated']..'</th></tr>'..
     '<tr>'..
     '<th></th><th>[[File:Speed-Gro.png|24px|link=]] '..Dictionary['speedGro']..'</th>'..
     '<th>[[File:Deluxe Speed-Gro.png|24px|link=]] '..Dictionary['deluxeSpeedGro']..'</th>'..
     '<th>[[File:Hyper Speed-Gro.png|24px|link=]] '..Dictionary['hyperSpeedGro']..'</th>'..
     '</tr><tr>'..
     '<th rowspan=\"2\" style=\"max-width: 2em; padding: 0;\"><div style=\"transform:rotate(-90deg); white-space: nowrap;\">'..Dictionary['regular']..'</div></th>'..
     '<td style=\"background-color: transparent; border: 0;\">'..
     p.month(name, size, phaseDays, regrowth, 0.1, season, 'no', stageImage, cropImage)..'</td>'..
     '<td style=\"background-color: transparent; border: 0;\">'..
     p.month(name, size, phaseDays, regrowth, 0.25, season, 'no', stageImage, cropImage)..'</td>'..
     '<td style=\"background-color: transparent; border: 0;\">'..
     p.month(name, size, phaseDays, regrowth, 0.33, season, 'no', stageImage, cropImage)..'</td>'..
     '</tr>'..
     '<tr>'..
     '<td colspan=\"3\" style=\"background-color: transparent; padding: 0 0 0 8px; text-align: left; font-size: smaller; border: 0;\">*'..Dictionary['note']..'</td>'..
     '</tr>'..
     '<tr>'..
     '<th style=\"max-width: 2em; padding: 0;\"><div style=\"transform:rotate(-90deg); white-space: nowrap; margin-top: 84px;\">[[File:Agriculturist.png|24px|link=]] '..Dictionary['agriculturist']..'</div></th>'..
     '<td style=\"background-color: transparent; border: 0;\">'..
     p.month(name, size, phaseDays, regrowth, 0.2, season, 'no', stageImage, cropImage)..
     '</td>'..
     '<td style=\"background-color: transparent; border: 0;\">'..
     p.month(name, size, phaseDays, regrowth, 0.35, season, 'no', stageImage, cropImage)..
     '</td>'..
     '<td style=\"background-color: transparent; border: 0;\"|>'..
     p.month(name, size, phaseDays, regrowth, 0.43, season, 'no', stageImage, cropImage)..
     '</td>'..
     '</tr></table>'..
     
     -- Agriculturist and Speed-Gro Comparison - Irrigated
     '<table class=\"wikitable mw-collapsible mw-collapsed\" id=\"roundedborder\" style="text-align:center;\">'..
     '<tr><th colspan=\"4\" style=\"min-width:450px; min-height:40px;\">'..Dictionary['collapsibleTable2Irrigated']..'</th></tr>'..
     '<tr>'..
     '<th></th><th>[[File:Speed-Gro.png|24px|link=]] '..Dictionary['speedGro']..'</th>'..
     '<th>[[File:Deluxe Speed-Gro.png|24px|link=]] '..Dictionary['deluxeSpeedGro']..'</th>'..
     '<th>[[File:Hyper Speed-Gro.png|24px|link=]] '..Dictionary['hyperSpeedGro']..'</th>'..
     '</tr><tr>'..
     '<th rowspan=\"2\" style=\"max-width: 2em; padding: 0;\"><div style=\"transform:rotate(-90deg); white-space: nowrap;\">'..Dictionary['regular']..'</div></th>'..
     '<td style=\"background-color: transparent; border: 0;\">'..
     p.month(name, size, phaseDays, regrowth, 0.1, season, 'yes', stageImage, cropImage)..'</td>'..
     '<td style=\"background-color: transparent; border: 0;\">'..
     p.month(name, size, phaseDays, regrowth, 0.25, season, 'yes', stageImage, cropImage)..'</td>'..
     '<td style=\"background-color: transparent; border: 0;\">'..
     p.month(name, size, phaseDays, regrowth, 0.33, season, 'yes', stageImage, cropImage)..'</td>'..
     '</tr>'..
     '<tr>'..
     '<td colspan=\"3\" style=\"background-color: transparent; padding: 0 0 0 8px; text-align: left; font-size: smaller; border: 0;\">*'..Dictionary['note']..'</td>'..
     '</tr>'..
     '<tr>'..
     '<th style=\"max-width: 2em; padding: 0;\"><div style=\"transform:rotate(-90deg); white-space: nowrap; margin-top: 84px;\">[[File:Agriculturist.png|24px|link=]] '..Dictionary['agriculturist']..'</div></th>'..
     '<td style=\"background-color: transparent; border: 0;\">'..
     p.month(name, size, phaseDays, regrowth, 0.2, season, 'yes', stageImage, cropImage)..
     '</td>'..
     '<td style=\"background-color: transparent; border: 0;\">'..
     p.month(name, size, phaseDays, regrowth, 0.35, season, 'yes', stageImage, cropImage)..
     '</td>'..
     '<td style=\"background-color: transparent; border: 0;\"|>'..
     p.month(name, size, phaseDays, regrowth, 0.43, season, 'yes', stageImage, cropImage)..
     '</td>'..
     '</tr></table>'
    
----------cropCalendars begin (irrigation=default)----------
  -- Base form
  else
    cropCalendars = cropCalendars..
     p.month(name, '', phaseDays, regrowth, 0, season, '', stageImage, cropImage)..
     '<table class=\"wikitable mw-collapsible mw-collapsed\" id=\"roundedborder\" style="text-align:center;\">'..
     '<tr><th colspan=\"4\" style=\"min-width:450px; min-height:40px;\">'..Dictionary['collapsibleTable1']..'</th></tr>'..
     '<tr>'..
     '<th></th><th>[[File:Speed-Gro.png|24px|link=]] '..Dictionary['speedGro']..'</th>'..
     '<th>[[File:Deluxe Speed-Gro.png|24px|link=]] '..Dictionary['deluxeSpeedGro']..'</th>'..
     '<th>[[File:Hyper Speed-Gro.png|24px|link=]] '..Dictionary['hyperSpeedGro']..'</th>'..
     '</tr><tr>'..
     '<th rowspan=\"2\" style=\"max-width: 2em; padding: 0;\"><div style=\"transform:rotate(-90deg); white-space: nowrap;\">'..Dictionary['regular']..'</div></th>'..
     '<td style=\"background-color: transparent; border: 0;\">'..
     p.month(name, size, phaseDays, regrowth, 0.1, season, '', stageImage, cropImage)..'</td>'..
     '<td style=\"background-color: transparent; border: 0;\">'..
     p.month(name, size, phaseDays, regrowth, 0.25, season, '', stageImage, cropImage)..'</td>'..
     '<td style=\"background-color: transparent; border: 0;\">'..
     p.month(name, size, phaseDays, regrowth, 0.33, season, '', stageImage, cropImage)..'</td>'..
     '</tr>'..
     '<tr>'..
     '<td colspan=\"3\" style=\"background-color: transparent; padding: 0 0 0 8px; text-align: left; font-size: smaller; border: 0;\">*'..Dictionary['note']..'</td>'..
     '</tr>'..
     '<tr>'..
     '<th style=\"max-width: 2em; padding: 0;\"><div style=\"transform:rotate(-90deg); white-space: nowrap; margin-top: 84px;\">[[File:Agriculturist.png|24px|link=]] '..Dictionary['agriculturist']..'</div></th>'..
     '<td style=\"background-color: transparent; border: 0;\">'..
     p.month(name, size, phaseDays, regrowth, 0.2, season, '', stageImage, cropImage)..
     '</td>'..
     '<td style=\"background-color: transparent; border: 0;\">'..
     p.month(name, size, phaseDays, regrowth, 0.35, season, '', stageImage, cropImage)..
     '</td>'..
     '<td style=\"background-color: transparent; border: 0;\"|>'..
     p.month(name, size, phaseDays, regrowth, 0.43, season, '', stageImage, cropImage)..
     '</td>'..
     '</tr></table>'
  end
----------cropCalendars end---------- 

  return cropCalendars
end

----------return given crop's calendar (only one table each time)----------
function p.month(name, size, phaseDays, regrowth, speedIncrease, season, irrigation, stageImage, cropImage, ...)
  local phaseDays = private.copy(phaseDays)
  local season = private.copy(season)
  -- whether input title
  local title = ''
  if ... then
    title = ...
  end
  
  -- define sizeString used in image, e.g. sizeString = '|36px'
  -- define cellWidth used in wikitable
  local sizeString = ''
  local cellWidth = '48px'
  if size ~= '' then
    sizeString = '|'..size..'px'
    cellWidth = size..'px'
  end
  
  local totalDaysOfCropGrowth = 0
  -- only support 2 seasons because of layout. Display 1 season when crop can't regrow.
  if #season > 2 or regrowth == -1 then
  	season = season[1]
  end
  -- speedIncrease + 0.25 when irragated
  speedIncreaseInitial = speedIncrease
  if irrigation == 'yes' then
  	speedIncrease = speedIncrease + 0.25
  end
  
  -- transform string in phaseDays to number
  for i = 1, #phaseDays, 1 do
  	phaseDays[i] = tonumber(phaseDays[i])
  	totalDaysOfCropGrowth  = totalDaysOfCropGrowth + phaseDays[i]
  end
  local daysToRemove = math.ceil(totalDaysOfCropGrowth * speedIncrease)

  -- Unexpected result in C# when using floating-point arithmetic, see Talk:Crop Growth Calendars
  -- Only consider totalDaysOfCropGrowth <=28 and (speedIncrease = 0.1,0.2,0.25,0.35,0.45,0.5,0.6, 0.33,0.43,0.68)
  if speedIncrease == 0.1 then
    for key, value in pairs{10, 20} do
      if totalDaysOfCropGrowth == value then
        daysToRemove = daysToRemove + 1
        break
      end
    end
  elseif speedIncrease == 0.2 then
    for key, value in pairs{5, 10, 15, 20, 25} do
      if totalDaysOfCropGrowth == value then
        daysToRemove = daysToRemove + 1
        break
      end
    end
  elseif speedIncrease == 0.6 then
    for key, value in pairs{5, 10, 15, 20, 25} do
      if totalDaysOfCropGrowth == value then
        daysToRemove = daysToRemove + 1
        break
      end
    end
  end
  
  -- calculate phaseDays after speedIncrease
  local tries = 0
  -- special:misnamed crop images, e.g. Green Bean, Hops. 
  -- Delete the 0 cell before removing and add them back after removing
  local phaseZero = 0
  for i = 1, #phaseDays, 1 do
    if phaseDays[i] == 0 then
      phaseZero = i
      table.remove(phaseDays, i)
      break
    end
  end
  -- Calculate. ConcernApe's C# code doesn't consider phaseDay[i] = 0. 
  -- So the following code doesn't consider this situation, too.
  -- e.g. phaseDays = {1,1,2,3,3} (Grape), speedIncrease = 0.43.
  -- After removing, it becomes {1,-1,1,2,2}. Totalday is 1+1+2+2=6. And actually it is 6 days in  the game. 
  -- However, if speedIncrease = 0.43, it should be 5 days {1,0,0,2,2}
  while daysToRemove > 0 and tries < 3 do
    for i = 1, #phaseDays, 1 do
      if i > 1 or phaseDays[i] > 1 then
        phaseDays[i] = phaseDays[i] - 1
        daysToRemove = daysToRemove - 1
      end
      if daysToRemove <= 0 then break end
    end
    tries = tries + 1
  end
  -- Add back
  if phaseZero ~= 0 then
    table.insert(phaseDays, phaseZero, 0)
  end
  
  -- 2-month days picture
  local picList = {}
  local daysLeft  = 56
  local circulateOrNot = ''
  while daysLeft > 0 do
  	-- Crops which are reseeded should skip Day 1
  	if daysLeft < 56 and circulateOrNot ~= 'yes' then
      phaseDays[1] = phaseDays[1] - 1
      circulateOrNot = 'yes'
    end
  	for stage = 1, #phaseDays, 1 do
  	  for stageDay = 1, phaseDays[stage], 1 do
  	  	-- special: File:Hot_Pepper_Stage_4b.png
  	  	if name == 'Hot Pepper' and stage == 5 then
          table.insert(picList, '[[File:'..stageImage..' 4b.png'..sizeString..'|center|link=]]')
  	    else
  	      table.insert(picList, '[[File:'..stageImage..' '..stage..'.png'..sizeString..'|center|link=]]')
  	    end
  	    daysLeft = daysLeft - 1
  	    if daysLeft == 0 then break end
  	  end
  	  if daysLeft == 0 then break end
    end
    if daysLeft == 0 then break end
    table.insert(picList, '[[File:'..cropImage..'.png'..sizeString..'|center|link=]]')
  	daysLeft = daysLeft - 1
  	if daysLeft == 0 then break end
    if regrowth ~= -1 then
      local stageRegrowth = #phaseDays + 2
      while daysLeft > 0 do
        for regrowthDays = 1, regrowth - 1, 1 do
  	  	  -- special: File:Hot_Pepper_Stage_6.png
  	  	  if name == 'Hot Pepper' then
            table.insert(picList, '[[File:'..stageImage..' 6.png'..sizeString..'|center|link=]]')
          else
            table.insert(picList, '[[File:'..stageImage..' '..stageRegrowth..'.png'..sizeString..'|center|link=]]')
          end
          daysLeft = daysLeft - 1
          if daysLeft == 0 then break end
        end
        if daysLeft == 0 then break end
        table.insert(picList, '[[File:'..cropImage..'.png'..sizeString..'|center|link=]]')
        daysLeft = daysLeft - 1
      end
    end
  end
  
  -- table title relating to speedIncrease (10% and 0% are special)
  if title == '' then  
    if speedIncreaseInitial == 0.1 or speedIncreaseInitial == 0
    then
      if speedIncreaseInitial == 0 then
    	  title = title..Dictionary['base']
    	else
    	  title = '10%*'
      end
    else
    	title = tostring(speedIncreaseInitial * 100)..'%'
    end
  end
  
  -- irrigation
  if irrigation == 'yes' then
    title = title..Dictionary['irrigated']
  end
  if irrigation == 'no' then
    title = title..Dictionary['unirrigated']
  end
  
  -- wikitable's header row
  local wikitableTitle = ''..
   '<table class=\"wikitable\" id=\"roundedborder\" style="text-align:center;\">'..
   '<tr>'..
   '<th colspan=\"7\">'..title..'</th>'..
   '</tr>'
  
  -- calendar season 1
  local wikitable1 = ''..
   '<tr>'..
   '<th style=\"width: '..cellWidth..';\">'..Dictionary['monday']..'</th>'..
   '<th style=\"width: '..cellWidth..';\">'..Dictionary['tuesday']..'</th>'..
   '<th style=\"width: '..cellWidth..';\">'..Dictionary['wednesday']..'</th>'..
   '<th style=\"width: '..cellWidth..';\">'..Dictionary['thursday']..'</th>'..
   '<th style=\"width: '..cellWidth..';\">'..Dictionary['friday']..'</th>'..
   '<th style=\"width: '..cellWidth..';\">'..Dictionary['saturday']..'</th>'..
   '<th style=\"width: '..cellWidth..';\">'..Dictionary['sunday']..'</th>'
  -- crops images
  for i=1, 28, 1 do
  	-- another row
  	if math.fmod(i, 7) == 1 then
  		wikitable1 = wikitable1..'</tr><tr>'
  	end
    wikitable1 = wikitable1..'<td>'..picList[i]..'</td>'
  end
  wikitable1 = wikitable1..'</tr>'
  
  local wikitable2 = ''
  -- special:calendar season 2
  if #season == 2 then
    wikitable2 = wikitable2..
     '<tr>'..
     '<th style=\"width: '..cellWidth..';\">'..Dictionary['monday']..'</th>'..
     '<th style=\"width: '..cellWidth..';\">'..Dictionary['tuesday']..'</th>'..
     '<th style=\"width: '..cellWidth..';\">'..Dictionary['wednesday']..'</th>'..
     '<th style=\"width: '..cellWidth..';\">'..Dictionary['thursday']..'</th>'..
     '<th style=\"width: '..cellWidth..';\">'..Dictionary['friday']..'</th>'..
     '<th style=\"width: '..cellWidth..';\">'..Dictionary['saturday']..'</th>'..
     '<th style=\"width: '..cellWidth..';\">'..Dictionary['sunday']..'</th>'
      -- crops images
      for i=29, 56, 1 do
      	-- another row
        if math.fmod(i, 7) == 1 then
      		wikitable2 = wikitable2..'</tr><tr>'
      	end
        wikitable2 = wikitable2..'<td>'..picList[i]..'</td>'
      end
      wikitable2 = wikitable2..'</tr>'
    end
  
  local wikitable = ''
  -- 1 or 2 tables to output
  if #season == 2 then
    -- horizontal or vertical tables
    if speedIncrease == 0 then
      local wikitableTitle2 = ''..
       '<table class=\"wikitable\" id=\"roundedborder\" style="text-align:center;\">'..
       '<tr>'..
       '<th colspan=\"7\">'..Dictionary['base']..' - '..Dictionary[season[2]]..Dictionary['ifPlantOn']..
       Dictionary[season[1]]..Dictionary['dayOne']..Dictionary['closeParen']..'</th>'..
       '</tr>'
      wikitable = wikitable..'<table><tr><td>'..
       wikitableTitle..
       wikitable1..
       '</table></td><td>'..
       wikitableTitle2..
       wikitable2..
       '</table></td></tr></table>'
    else
      wikitable = wikitable..
       wikitableTitle..
       '<tr>'..
       '<th colspan=\"7\">'..Dictionary[season[1]]..'</th>'..
       '</tr>'..
       wikitable1..
       '<tr>'..
       '<th colspan=\"7\">'..Dictionary[season[2]]..'</th>'..
       '</tr>'..
       wikitable2..
       '</table>'
    end
  else
    wikitable = wikitable..wikitableTitle..wikitable1..'</table>'
  end
  return wikitable
end

----------clone tables----------
function private.copy(t)
  local t2 = {}
    for k,v in pairs(t) do
      t2[k] = v
    end
  return t2
end

return p
```

Retrieved from "https://stardewvalleywiki.com/mediawiki/index.php?title=User:Horizon98/Crop\_Growth\_Calendars&amp;oldid=120757"
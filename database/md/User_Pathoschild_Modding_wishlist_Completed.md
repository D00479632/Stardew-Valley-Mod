From Stardew Valley Wiki

&lt; User:Pathoschild‎ | Modding wishlist

This page lists changes requested by modders which were implemented in previous game versions.

## Contents

- 1 Current wishlist
- 2 Done in Stardew Valley 1.3.27
  
  - 2.1 Bug fixes
  - 2.2 Small changes
  - 2.3 Medium changes
  - 2.4 Refactoring
- 3 Done in Stardew Valley 1.3.28
  
  - 3.1 Small changes
- 4 Done in Stardew Valley 1.3.32
  
  - 4.1 Small changes
- 5 Done in Stardew Valley 1.4
  
  - 5.1 Bug fixes
  - 5.2 Small changes
  - 5.3 Medium changes
- 6 Done in Stardew Valley 1.4.4
  
  - 6.1 Bug fixes
- 7 Done in Stardew Valley 1.5
  
  - 7.1 Bug fixes
  - 7.2 Small changes
  - 7.3 Medium changes
- 8 Done in Stardew Valley 1.5.5
  
  - 8.1 Bug fixes
  - 8.2 Small changes
  - 8.3 Medium changes
  - 8.4 Refactoring
- 9 Done in Stardew Valley 1.5.6
  
  - 9.1 Bug fixes
  - 9.2 Small changes
- 10 Done in Stardew Valley 1.6 (upcoming)
  
  - 10.1 Small changes
  - 10.2 Medium changes
  - 10.3 Refactoring

## Current wishlist

See the current list of requested changes.

## Done in Stardew Valley 1.3.27

*See also Modding:Migrate to Stardew Valley 1.3.*

### Bug fixes

- ☑ Fix strange null handling with net fields (mostly fixed).
- ☑ Fix bee houses hardcoded to check `Farm` location, instead of their current location.
- ☑ On the load menu, clicking the 'back' button clicks the slot under it.
- ☑ `Object.getOne()` doesn't copy the 1.2+ fields: `name`, `DisplayName`, `preserve`, `preservedParentSheetIndex`, and `honeyType`.

### Small changes

- ☑ Include `Stardew Valley.pdb` in the release, so we get line numbers when a crash happens in game code.
- ☑ Add a `SerializableDictionary<string, string> CustomData` property to `SaveData`, for SMAPI mods to safely store data.
- ☑ Remove `Farmer` namespace (so we don't need to alias the `Farmer` class anymore).
- ☑ Make these `Game1` fields protected instead of private: `_debugStringBuilder`, `_fpsList`, `_fpsStopwatch`, `_fps`, `_newDayTask`, `_bgColor`, `screen`, `lightingBlend`, `drawFarmBuildings`, `drawHUD`, `drawDialogueBox`, `drawOverlays`, and `renderScreenBuffer`. That will let SMAPI override the draw loop without reflection calls.
- ☑ Make `LocalizedContentManager.languageCodeString` public. That will let SMAPI override the draw loop without reflection calls.
- ☑ Remove `LocalizedContentManager.LanguageOverride`; it's unused, and that way SMAPI won't need to handle it.
- ☑ Replace `ChatBox.enableCheats()` with a property.
- ☑ Make these methods/properties virtual:
  
  - ☑ `Item`:
    
    - ☑ `canStackWith`
    - ☑ `CompareTo`
  - ☑ LocalizedContentManager:
    
    - ☑ `CreateTemporary`
    - ☑ `Load(assetName, language)`
    - ☑ `LoadBase`
    - ☑ `CreateTemporary`
    - ☑ `LoadString`
    - ☑ `LoadBaseString`
  - ☑ `Buildings/Building`:
    
    - ☑ `textureName`
    - ☑ `resetTexture`
    - ☑ `showUpgradeAnimation`
    - ☑ `getNameOfNextUpgrade`
    - ☑ `showDestroyedAnimation`
    - ☑ `updateInteriorWarps`
    - ☑ `drawInConstruction`
  - ☑ `Buildings/Stable`:
    
    - ☑ `grabHorse`
  - ☑ `Locations/FarmHouse`:
    
    - ☑ `showSpouseRoom`
    - ☑ `loadMapForUpgradeLevel`
    - ☑ `setMapForUpgradeLevel`
    - ☑ `loadSpouseRoom`
  - ☑ `Menus/ChatBox`:
    
    - ☑ `textboxEnter`
    - ☑ `runCommand` (and mark it protected)
    - ☑ `addInfoMessage`
    - ☑ `globalInfoMessage`
    - ☑ `addErrorMessage`
    - ☑ `listPlayers`
    - ☑ `showHelp`
    - ☑ `setText`
    - ☑ `messageColor` (and mark it protected)
    - ☑ `receiveChatMessage`
    - ☑ `addMessage`
  - ☑ `Menus/IClickableMenu`:
    
    - ☑ `receiveRightClick` (currently abstract)
  - ☑ `Network/NetAudioCueManager`:
    
    - ☑ `Update`
  - ☑ `Objects/Chest`:
    
    - ☑ `grabItemFromChest`
    - ☑ `addItem`
    - ☑ `grabItemFromInventory`
    - ☑ `isEmpty`
    - ☑ `clearNulls`
    - ☑ `draw` (last overload)
  - ☑ `Objects/Object:`
    
    - ☑ `cutWeed`
    - ☑ `isAnimalProduct`
    - ☑ `canBeShipped`
    - ☑ `rot`
    - ☑ `isForage`
    - ☑ `initializeLightSource`
    - ☑ `consumeRecipe`
    - ☑ `performUseAction`
    - ☑ `grabItemFromAutoGrabber`
    - ☑ `farmerAdjacentAction`
    - ☑ `addWorkingAnimation`
    - ☑ `drawAsProp`
    - ☑ `sellToStorePrice`
  - ☑ `Projectiles/Projectile`:
    
    - ☑ `update`
  - ☑ `TV`
- ☐ Make `Farmer.friendships` internal to avoid confusion (replaced with `friendshipData`) (would require significant changes to how the class is serialised).
- ☐ Include `Stardew Valley.xml` in the release (if available), so we get code documentation (no code documentation available).

### Medium changes

- ☑ Add `Game1.hooks` to let SMAPI intercept some core game logic.
- ☑ Add `Game1.input`, which centralises `Keyboard.GetState()`, `Mouse.GetState()`, and `GamePad.GetState()`.
- ☑ Add a `GameLocation.IsGreenhouse` property, set it to true for the greenhouse, and use it anywhere the game checks `.Name.Equals("Greenhouse")`. That will let mods add custom indoor locations where crops can grow.
- ☑ Change `GameLocation.updateSeasonalTilesheets` to enable custom seasonal tilesheets.
- ☑ Instead of hardcoding non-social NPCs in `new SocialMenu(...)`, add a virtual `npc.CanSocialise` field.
- ☑ Integrate SMAPI's `SDate` features into the new `WorldDate` (like comparison operators and `DayOfWeek`).
- ☑ Add events to `NetList` for item added/removed/replaced (similar to the ones `NetDictionary` has). SMAPI will use them to watch for changes in some collections (like player inventory).

### Refactoring

- ☑ Change static `Multiplayer` class into a `Game1.multiplayer` field so SMAPI can override it, and make its methods non-static and virtual.
- ☑ Use interfaces instead of concrete types to let SMAPI/mods override them:
  
  - ☑ `Farmer`:
    
    - ☑ `IList<Buff> buffs`
    - ☑ `IList<OutgoingMessage> messageQueue`
  - ☑ `Game1`:
    
    - ☑ `NetBase<IWorldState> netWorldState` (create interface)
    - ☑ `IGameServer GameServer` (create interface)
    - ☑ `ISoundBank soundBank` (create interface with thin wrapper around `SoundBank`)
    - ☑ `IList<GameLocation> locations`
    - ☑ `IList<Item> itemsToShip`
    - ☑ `IList<IClickableMenu> onScreenMenus`
    - ☑ `IList<DelayedAction> delayedActions`
    - ☑ `IDictionary<int, string> objectInformation`
    - ☑ `IDictionary<int, string> bigCraftablesInformation`
    - ☑ `IDictionary<string, string> NPCGiftTastes`
- ☑ Use Game1.CreateContentManager consistently.
- ☑ Internal changes to `CoopMenu` so SMAPI can hook into it.
- ☑ Replace `obj.getType() == type` with `obj is type` to support mod subclasses in various places.
- ☐ Update the bundled Mono to the latest version (declined, too big a change).
- ☐ Include a full (non-stripped) bundled Mono, to avoid issues with mod code (declined, too big a change).

## Done in Stardew Valley 1.3.28

*See also Modding:Migrate to Stardew Valley 1.3.*

### Small changes

- ☑ When creating honey, set `preservedParentSheetIndex` to the flower's item ID.
- ☑ Make `LoadGameMenu`'s inner classes `public`.
- ☑ Change `ItemGrabMenu.sourceItem` to `public readonly object context`, and track non-objects too. Suggested values:
  
  - `Chest` instance when opening a chest (like current `sourceItem`);
  - auto-grabber / `Mill` / `JunimoHut` instance when viewing their output;
  - `AdventureGuild` / `LibraryMuseum` / `JunimoNoteMenu` / `FishingRod` instance for their rewards;
  - `Farm.shippingBin` for the shipping bin;
  - `Item` instance if opened by a method like `addItemByMenuIfNecessary`;
  - `null` if not applicable.
- ☑ Change `GameLocation.IsGreenhouse` to a `{ get; set; }` property, and set it in the location constructor instead.
- ☑ When logging an exception, use `Console.WriteLine(exception.ToString())` instead of `Console.WriteLine(exception.GetType())` + `Console.WriteLine(exception.Message)` + `Console.WriteLine(exception.StackTrace)`. This will let SMAPI detect exception messages more easily.
- ☑ Make these methods virtual:
  
  - ☑ `Character`:
    
    - ☑ `checkForFootstep`
  - ☑ `Locations\DecoratableLocation`:
    
    - ☑ `isTileOnWall`
    - ☑ `setFloors`
    - ☑ `setWallpapers`
    - ☑ `getFloorAt`
    - ☑ `getWallForRoomAt`
    - ☑ `setFloor`
    - ☑ `getWalls` (and make it non-static)
    - ☑ `getFloors` (and make it non-static)

## Done in Stardew Valley 1.3.32

*See also Modding:Migrate to Stardew Valley 1.3.*

### Small changes

- ☑ Tweak accessibility modifiers:
  
  class changes `Multiplayer`
  
  - Make field protected: `disconnectingFarmers`.
  
  `Network/NetBufferReadStream`,  
  `Network/NetBufferWriteStream`
  
  - Make classes public.
  
  `Network/LidgrenServer`
  
  - Make fields protected: `peers` and `server`.
  - Make methods protected virtual: `sendMessage(NetConnection, OutgoingMessage)` and `parseDataMessageFromClient`.
  
  `SDKs/GalaxyNetClient`
  
  - make fields protected: `client`.
  - make methods protected virtual: `onReceiveConnection`, `onReceiveMessage`, `onReceiveDisconnect`, and `onReceiveError`.
  
  `SDKs/GalaxyNetServer`
  
  - make class public.
  - make fields protected: `server` and `peers`.
  - make methods protected virtual: `onReceiveConnection`, `onReceiveMessage`, `onReceiveDisconnect`, `onReceiveError`, and `sendMessage(GalaxyID, OutgoingMessage)`.
- ☑ Changes to use `IsGreenhouse`:
  
  location changes `Crop.newDay`
  
  ```
  // from:
  if (... || !this.seasonsToGrowIn.Contains(Game1.currentSeason) || ...)
  
  // to: 
  if (... || (!environment.IsGreenhouse && !this.seasonsToGrowIn.Contains(Game1.currentSeason)) || ...)
  ```
  
  `HoeDirt.canPlantThisSeedHere`
  
  ```
  // from:
  if (!Game1.currentLocation.IsOutdoors || crop.seasonsToGrowIn.Contains(Game1.currentSeason))
  
  // to:
  if (!Game1.currentLocation.IsOutdoors || Game1.currentLocation.IsGreenhouse || crop.seasonsToGrowIn.Contains(Game1.currentSeason))
  ```
  
  `HoeDirt.plant`
  
  ```
  // from:
  if (!who.currentLocation.isFarm && who.currentLocation.IsOutdoors)
  
  // to: 
  if (!who.currentLocation.isFarm && !who.currentLocation.IsGreenhouse && who.currentLocation.IsOutdoors)
  ```
  
  ```
  // from:
  if (!who.currentLocation.isOutdoors || crop.seasonsToGrowIn.Contains(Game1.currentSeason))
  
  // to:
  if (!who.currentLocation.isOutdoors || who.currentLocation.IsGreenhouse || crop.seasonsToGrowIn.Contains(Game1.currentSeason))
  ```

## Done in Stardew Valley 1.4

*See also Modding:Migrate to Stardew Valley 1.4.*

### Bug fixes

- When a fence is placed, its `maxHealth` is assigned to the same `NetFloat` instance as `health`. This causes the max health to deteriorate over time until the game is reloaded. (To fix it, `this.maxHealth = this.health` should become `this.maxHealth.Value = this.health.Value`.)
- Fix crash when wearing the Jukebox Ring (only obtainable via mods) in the mines.
- Fix `MineShaft` checking character count instead of monster count, which causes issues like ladders not spawning if a horse is present.

### Small changes

- ☑ Add the game version to the save file. (That enables game/mod migrations when loading a save from an older game version.)
- ☑ Change `Utility.getAllCharacters(List<T>)` to also return the list, to simplify usage.
- ☑ Tweak accessibility modifiers:
  
  class changes `InteriorDoor`  
  `InteriorDoorDictionary`
  
  - make classes public.
  
  `NPC`
  
  - make fields public: `scheduleTimeToTry`, `NO_TRY`.
  - make methods public: `getTextureName` (also it probably doesn't need to handle the rival anymore).
  
  `Locations/GameLocation`
  
  - make fields public: `interiorDoors`.
  - make methods public: `reloadMap`, `updateWarps`.
  
  `Menus/GameMenu`
  
  - make fields public: `tabs`, `pages`.
  
  `Menus/ShopMenu`
  
  - make fields public: `forSale`, `categoriesToSellHere`, `itemPriceAndStock`, `hoverPrice`, `heldItem`, `hoveredItem`, `currency`, `currentItemIndex`.
  
  `Menus/TitleMenu`
  
  - make fields public: `birds`, `cloudsTexture`, `titleButtonsTexture`.
  
  `Minigames/AbigailGame`
  
  - make class public;
  - make fields public: `storeItems`, `abigailPortraitDuration`, `quit`, `died`, `targetMonster`;
  - make all `CowboyMonster`, `Dracula`, and `Outlaw` fields public.
  
  `Objects/Fence`
  
  - make fields public: `fenceTexture`.
  
  `SDKs/GalaxyNetClient`
  
  - make field protected: `client`.
  
  `TerrainFeatures/Bush`
  
  - make fields public: `texture`.
  
  `TerrainFeatures/Tree`
  
  - make fields public: `texture`.
- ☑ Changes to use `IsGreenhouse`:
  
  location changes `FruitTree.dayUpdate`
  
  ```
  // from:
  if (... && (!Game1.currentSeason.Equals("winter") || Game1.currentLocation.name.Value.ToLower().Contains("greenhouse")))
  
  // to: 
  if (... && (!Game1.IsWinter || Game1.currentLocation.IsGreenhouse))
  ```
  
  ```
  // from:
  if (... || environment.name.Value.ToLower().Contains("greenhouse"))
  
  // to:
  if (... || environment.IsGreenhouse)
  </source>
  <syntaxhighlight lang="c#">
  // from:
  if (environment.name.Value.ToLower().Contains("greenhouse"))
  
  // to:
  if (environment.IsGreenhouse)
  ```
  
  `FruitTree.performUseAction`
  
  ```
  // from:
  if (... || Game1.currentLocation.name.Value.ToLower().Contains("greenhouse")))
  
  // to: 
  if (... || Game1.currentLocation.IsGreenhouse))
  ```
  
  `Tree.dayUpdate`
  
  ```
  // from:
  if (!Game1.currentSeason.Equals("winter") || this.treeType == 6 || environment.Name.ToLower().Contains("greenhouse"))
  
  // to: 
  if (!Game1.IsWinter || this.treeType == 6 || environment.IsGreenhouse)
  ```
- ☑ Make methods virtual:
  
  class methods `Game1` `_draw`, `drawHUD`, `drawMouseCursor`, `drawOverlays`, `drawWeather`, `renderScreenBuffer`
- ☑ Remove unused content files:
  
  - `Characters/schedules/beforePathfinding/*`;
  - `Characters/schedules/newSchedules/*`;
  - `Characters/schedules/spring/*`.
- ☑ Remove unused code:
  
  - `TerrainFeatures/DiggableWall`;
  - `TerrainFeatures/TerrainFeatureFactory`.
- ☑ In `GameLocation.loadObjects`, split the door-finding logic into a separate `updateDoors` method for reuse.
- ☑ In `Farmhouse.loadSpouseRoom`, avoid `dictionary.Add` to fix a common crash when a mod has already added that property there.
- ☑ Remove confusing content folder fallback logic in `Game1.Initialize`, where the game looks for a hardcoded Windows path (and usually crashes with a confusing error) if the XACT folder isn't found.
- ☑ Load NPC schedules data through a helper function so it's easier to track down schedule load issues.

### Medium changes

- ☑ Change the beehouse logic to allow honey from any hoed-dirt flower, instead of the vanilla subset.
- ☑ Fix reharvestable crops always dropping the min number of items, instead of a random number between the min and max values. (Stardew Valley 1.4 also adjusts the crop data so the end result for vanilla crops matches the 1.3.36 behavior.)
- ☑ Add an `ICue` interface and change references to `Cue`. That would let SMAPI/mods take control of sounds and music, which is hard to do currently.
- ☑ Some XNB files have a separate display name field, but only in non-English. Using display names consistently regardless of language would let mods rename things without breaking keys:
  
  - ☑ `Data\BigCraftablesInformation`
  - ☑ `Data\ObjectInformation`
- ☑ Consolidate `Crop.harvest` logic so it's consistent between scythe and hand harvesting.
- ☑ Move the `Data\*` loading logic out of the `FarmAnimal` and `NPC` constructors into `reloadData()` methods (so animal/NPC data can be refreshed when the asset changes).
- ☑ Reload farm animal &amp; NPC data when the save is loaded, to fix inconsistency bugs and simplify mod changes to fields like an NPC's default location.

## Done in Stardew Valley 1.4.4

*See also Modding:Migrate to Stardew Valley 1.4.*

### Bug fixes

- ☑ `TrashBear.updateItemWanted` is hardcoded to assume `Data\CookingRecipes` field 2 is an item ID, but it can actually be an item ID and count like `272 5` (e.g. see `CraftingRecipe` constructor). That means it crashes if it randomly chooses a recipe with multiple outputs.

## Done in Stardew Valley 1.5

*See also Modding:Migrate to Stardew Valley 1.5.*

### Bug fixes

- ☑ The game handles `this.Window.ClientSizeChanged` unsafely in `Game1`, so the resize logic can run in the middle of a draw/update cycle and cause ObjectDisposedException crashes. For most players the crash is rare (if they avoid resizing the window while it's loading something), but a minority of players report constant crashes. Proposed fix: when the window resize event is called, set a flag and perform the resize logic on the next update tick instead.
- ☑ `ItemGrabMenu` exits immediately if it's opened for a chest in another location, unless it's given a null source chest.
- ☑ `Game1.warpFarmer` moves the player when they warp from any location marked `IsGreenhouse` to the farm; it should check `Name == "Greenhouse"` instead to allow for custom greenhouse locations.

### Small changes

- ☑ Add `chest.GetCapacity()` method to simplify modded chest sizes.
- ☑ Add a `modData` dictionary field on `Building`, `Character`, `GameLocation`, `Item`, and `TerrainFeature` to store arbitrary mod data that's read/written to the save file and synchronized in multiplayer.
- ☑ In festival maps, allow adding NPC spawns by editing the festival data file instead of patching the characters tilesheet (which is conflict-prone).
- ☑ Add a utility method like `Utility.ModifyTime(0600, 70) == 0710` to simplify common time math in mod (and game) code.
- ☑ Change the `WarpGreenhouse` action to use the farm warp position, instead of a hardcoded position.

<!--THE END-->

- ☑ Tweak accessibility modifiers:
  
  class changes `FarmAnimals\FarmAnimal`
  
  - make fields public: `isEating`.
  
  `Monsters\Bat`
  
  - make fields public: `cursedDoll`, `hauntedSkull`.
  
  `Menus\CollectionsPage`
  
  - make fields public: `currentPage`, `currentTab`, `secretNotesData`, `secretNoteImageTexture`.
  
  `Menus\CraftingPage`
  
  - make fields public: `pagesOfCraftingRecipes`, `_materialContainers`.
  
  `Menus\DialogueBox`
  
  - make fields public: `dialogues`, `characterDialoguesBrokenUp`, `responses`, `selectedResponse`, `characterDialogue`, `dialogueContinuedOnNextPage`, `dialogueFinished`.
  
  `Menus\LetterViewerMenu`
  
  - make fields public: `cookingOrCrafting`, `learnedRecipe`, `mailMessage`, `moneyIncluded`, `scale`, `whichBG`.
  - make methods public and virtual: `getTextColor`.
  
  `TerrainFeatures\Grass`
  
  - make fields public: `texture`.
  - make methods public: `textureName`.
  
  `AnimatedSprite`
  
  - make fields public: `spriteTexture`, `loadedTexture`, `endOfAnimationFunction`.
  
  `CraftingRecipe`
  
  - make fields public: `recipeList`, `itemToProduce`, `description`;
  - make methods virtual: `createItem`, `doesFarmerHaveIngredientsInInventory`, `drawMenuView`, `drawRecipeDescription`, `getCraftableCount`, `getCraftCountText`, `getNumberOfIngredients`.
  
  `GameLocation`
  
  - make fields public: `critters`.
  
  `HUDMessage`
  
  - make methods virtual: `draw`, `update`.

### Medium changes

- ☑ Add support for specifying NPC gift tastes using item context tags instead of IDs.
- ☑ Add missing mod NPCs to the game for farmhands too, so they can be summoned in festivals.
- ☑ Map tilesheets exist in both `Content` and `Content/Maps`, but only the latter are used. Deleting the ones under `Content` would reduce confusion.
- ☑ Get the farmhouse and greenhouse locations from a map property, instead of static values in code. That would let map modders easily move it.

## Done in Stardew Valley 1.5.5

*See also Modding:Migrate to Stardew Valley 1.5.5.*

### Bug fixes

- ☑ `Object.getOne` doesn't copy the `owner` field, so it's not set correctly for most placed items.
- ☑ In `HoeDirt.seasonUpdate`, change `!this.isGreenhouseDirt.Value && base.currentLocation is not IslandLocation` to `!base.currentLocation.SeedsIgnoreSeasonsHere()` so fertilizer doesn't disappear in other locations that ignore seasons.
- ☑ Fix rain not watering tilled dirt outside the farm.
- ☑ Fix some sprites not rendered correctly at large Y tile coordinates (e.g. mailbox after Y=155).
- ☑ Fix warp tower on the island ignoring `WarpTotemEntry` farm property.
- ☑ Fix fishing menu crashing if the bobber bar is too big due to stacking every fishing buff.
- ☑ Fix farm shrine player interactions checking tile indexes instead of the `GrandpaShrineLocation` map property.
- ☑ Fix tile-based seat interactions having higher priority than action property checks.

### Small changes

- ☑ Add a `Data/LocationNames` asset or `Data/Festivals/*` field instead of hardcoding specific festival location names in `performTenMinuteClockUpdate` (search for `Game1.cs.2634`).
- ☑ Add a `TouchAction Warp` tile property which is identical `TouchAction MagicWarp`, but without the sound/visual effects (see [[.
- ☑ Add map properties `IsFarm T` and `IsGreenhouse T` to set the location's `IsFarm` and `IsGreenhouse` properties in `GameLocation.loadMap` (similar to the existing `Outdoors T`).
- ☑ Remove unused `BloomComponent`, `BloomSettings`, and all code which references them (this is broken and never enabled).
- ☑ Make the game assembly name (i.e. `Stardew Valley.exe` on Windows and `StardewValley.exe` on Linux/macOS) consistent to simplify crossplatform modding.
- ☑ Remove caching on the farmhouse `KitchenStandingLocation` property to simplify editing it.
- ☑ Include `Stardew Valley.xml` in the release build so we get code documentation.

<!--THE END-->

- ☑ NPCs check the player spouse or NPC relationships with a substring match. That causes issues for mods; e.g. Jas will show marriage dialogue for a custom Jasper NPC. More specifically:
  
  method proposed change `NPC.loadCurrentDialogue`
  
  ```
  old: Game1.player.spouse.Contains(base.Name)
  new: Game1.player.spouse == base.Name
  ```
  
  `NPC.performTenMinuteUpdate`
  
  ```
  old: !dispositions[base.Name].Split('/')[9].Contains(c.Name)
  new: !dispositions[base.Name].Split('/')[9].Split(' ').Contains(c.Name)
  ```
  
  `NPC.tryToReceiveActiveObject`
  
  ```
  old: !who.spouse.Contains(base.Name)
  new: who.spouse != base.Name
  ```
- ☑ Make methods virtual:
  
  class methods `BedFurniture` `GetBedSpot` `Boots` `loadDisplayFields`, `onEquip`, `onUnequip` `Clothing` `Dye`, `GetOtherData`, `LoadData` `Crop` `draw`, `drawInMenu`, `drawWithOffset`, `getRandomWildCropForSeason`, `getSourceRect`, `growCompletely`, `harvest`, `hitWithHoe`, `InferSeedIndex`, `isWildSeedCrop`, `newDay`, `ResetCropYield`, `ResetPhaseDays`, `updateDrawMath` `Fence` `CanRepairWithThisItem`, `GetRepairHealthAdjustment`, `loadFenceTexture`, `repair`, `toggleGate` `FishTankFurniture` `GetCapacityForCategory` `Furniture` `addLights`, `drawAtNonTileSpot`, `getDefaultBoundingBoxForType`, `getDefaultSourceRectForType`, `GetModifiedWallTilePosition`, `getScaleSize`, `GetSittingDirection`, `GetSittingPosition`, `getTilesWide`, `getTilesHigh`, `HasSittingFarmers`, `isGroundFurniture`, `IsSeatHere`, `IsSittingHere`, `loadDescription`, `lightSourceIdentifier`, `OnAdded`, `removeLights`, `rotate`, `setFireplace`, `updateDrawPosition`, `updateRotation` `FruitTree` `shake` `MeleeWeapon` `defaultKnockBackForThisType`, `DoDamage`, `getItemLevel`, `isScythe`, `RecalculateAppliedForges`, `drawDuringUse` `Object` `countsForShippedCollection`, `getPriceAfterMultipliers`, `getScale`, `isSapling` `StorageFurniture` `ShowShopMenu`, `SortItems`
  
  ### Medium changes
  
  - ☑ Move hardcoded scarecrow logic from `Farm.addCrows` into new `Object.IsScarecrow()` and `Object.GetRadiusForScarecrow()` methods.
  - ☑ Get the spouse room offset from `Data/NPCDispositions` a new `Data/spouseRooms` asset, instead of hardcoding it in `FarmHouse.loadSpouseRoom`.
  - ☑ Call `Game1.hooks.OnGameLocation_CheckAction` from overridden `checkAction` methods too, not only the base one.
  
  ### Refactoring
  
  - ☑ The farmhouse walls are hardcoded in `FarmHouse.getWalls`; moving those into a content file would make custom renovations and layouts much easier.
  - ☑ Make the game framework (i.e. XNA Framework on Windows and MonoGame on Linux/macOS) consistent to simplify crossplatform modding.
  
  ## Done in Stardew Valley 1.5.6
  
  ### Bug fixes
  
  - ☑ Fix crash in `GameLocation.getTileIndexAt(Point p, string layer)` if the layer is missing (which currently affects custom spouse rooms due to 1.5.5 adding a new layer).
  - ☑ Fix custom language time format's `HOURS_24_00` incorrectly wrapping at 12.
  - ☑ Fix custom spouse room stand positions ignored due to `ApplyMapOverride` creating layer with wrong size.
  
  ### Small changes
  
  - ☑ Fix `Stardew Valley.dll` no longer having a unique build number in the version after Stardew Valley 1.5.5.
  
  ## Done in Stardew Valley 1.6 (upcoming)
  
  *See also Modding:Migrate to Stardew Valley 1.6 for the full list of modding changes in 1.6.*
  
  ### Small changes
  
  - ☑ Change all remaining `internal class` and `private class` to `public class` to simplify mod access.
  - ☑ Change `Utility.isMale(name)` to check the NPC info instead of a hardcoded switch, so it works with custom NPCs.
  - ☑ Change `IslandLocation.DrawParallaxHorizon` to support custom sunset times that aren't on the hour, by using `Utility.CalculateMinutesBetweenTimes` instead of calculating the time manually.
  - ☑ Remove `Woods.stumps` and use the new `location.resourceClumps` field instead.
  - ☑ Tweak accessibility modifiers. (Stardew Valley 1.6 marks a large number of methods `virtual` and `public`/`protected`, too many to list here.)
  
  ### Medium changes
  
  - ☑ Some XNB files have a separate display name field, but only in non-English. Using display names consistently regardless of language would let mods rename things without breaking keys:
    
    - ☑ `Data\Boots`
    - ☑ `Data\Bundles`
    - ☑ `Data\CraftingRecipes`
    - ☑ `Data\CookingRecipes`
    - ☑ `Data\Furniture`
    - ☑ `Data\Weapons`
  - ☑ Remove hardcoded logic that ignores display names when playing in English (e.g. for NPC gift taste dialogues). That causes a bug where renamed NPCs still show their internal name in some places.
  
  ### Refactoring
  
  - ☑ Add unique item keys and allow custom spritesheets per item. This would eliminate the current complexities with adding custom items to Stardew Valley, make code much more readable, simplify troubleshooting mod errors, and make it possible to support any item type in cases like sending mail. See the detailed proposal doc.
  - ☑ Move shop inventories into a data asset so mods can easily change them (e.g. `"<shop id>": "item_id quantity_available [required_mail_flag]/..."`).

Retrieved from "https://stardewvalleywiki.com/mediawiki/index.php?title=User:Pathoschild/Modding\_wishlist/Completed&amp;oldid=147534"

Category:

- Modding
From Stardew Valley Wiki

**Trinkets** are equippable clothing items. Each one of them gives the Player unique benefits. They can be found after Combat Mastery is claimed. Most trinkets can be dropped by monsters, found in crates and barrels in the Mines, Skull Cavern, and Quarry Mine, or obtained in Skull Cavern treasure rooms. The Magic Hair Gel is the exception, as it can only be purchased from Alex's shop in the Desert Festival.

The player can obtain the same trinket multiple times. Trinkets do not stack. They can be sold at the Adventurer's Guild for data-sort-value="1000"&gt;1,000g each.

All Trinkets, with the exceptions of the Basilisk Paw and the Magic Hair Gel, can be re-forged on an Anvil. This randomizes their stats and costs 3 Iridium Bars per re-roll.

## Contents

- 1 Trinket List
- 2 Drop Chances
  
  - 2.1 Monsters
  - 2.2 Crates and Barrels
- 3 Bugs
- 4 References
- 5 History

## Trinket List

Image Name Re-Forged Stat Max Stat Description Source Sell Price Basilisk Paw N/A N/A You are immune to debuffs.

- Monster drops
- Crates and barrels
- Skull Cavern treasure rooms

data-sort-value="1000"&gt;1,000g Fairy Box Level 5 Summons a level X fairy companion that heals you in combat situations.

- Monster drops
- Crates and barrels
- Skull Cavern treasure rooms

data-sort-value="1000"&gt;1,000g Frog Egg Color N/A Summons a hungry frog companion.

- Monster drops
- Crates and barrels
- Skull Cavern treasure rooms

data-sort-value="1000"&gt;1,000g Golden Spur Duration 10 Seconds Critical strikes give you a speed boost for X seconds.

- Monster drops
- Crates and barrels
- Skull Cavern treasure rooms

data-sort-value="1000"&gt;1,000g Ice Rod Frequency;  
Duration 3 Seconds (*min*);  
4 Seconds Shoots an orb of ice every X seconds, freezing any enemies in its path for Y seconds.

- Monster drops
- Crates and barrels
- Skull Cavern treasure rooms

data-sort-value="1000"&gt;1,000g Magic Hair Gel N/A N/A Your hair shimmers with all the colors of a prismatic shard.

- Purchased from Alex's shop during the Desert Festival

data-sort-value="1000"&gt;1,000g Magic Quiver Type: (None), Perfect, Rapid, Heavy Varies by Type Shoots a magic arrow at nearby enemies every X seconds, dealing Y-Z damage.

- Monster drops
- Crates and barrels
- Skull Cavern treasure rooms

data-sort-value="1000"&gt;1,000g Parrot Egg Level 4 Summons a level X parrot companion, who grants you a Y chance to find gold coins when slaying monsters.

- Monster drops
- Crates and barrels
- Skull Cavern treasure rooms

data-sort-value="1000"&gt;1,000g

## Drop Chances

All trinkets, other than the Magic Hair Gel, have a ≈0.63% chance to be found in a Skull Cavern treasure chest.\[1] Calculations for the drop rates from monsters and containers are more complex and depend on several factors.\[2]

### Monsters

When slain, all monsters have a chance to drop a random trinket that is not the Magic Hair Gel. This is calculated as follows:

`chance = Min ( 0.4% + 0.001% × monster maxhealth + y, 2.5% ) + DailyLuck / 25.0 + LuckBuffs × 0.133%`\[3]

The value of y in the formula depends on the monster killed:

1. y = 0.2% if the monster is classified as a "Glider" (flying enemy) and its max health ≥ 150. This condition is applied to Iridium Bats, Bats (dangerous), Lava Bats (dangerous), Haunted Skulls, Haunted Skulls (dangerous), Cave Flies (dangerous), Carbon Ghosts, Putrid Ghosts, Squid Kids (dangerous), Bugs (dangerous), Armored Bugs (dangerous), Serpents, Royal Serpents, Magma Sprites, Magma Sparkers, Dwarvish Sentries, and Blue Squids.\[4]
2. y = -0.5% if the monster is classified as a "Leaper." This condition is only applied to Spiders.
3. y = 0 for all other monsters.

Note that the calculated chance for the first part of the formula ranges from 0.1% (Spider) to 1.65% (Royal Serpent with 18 tail segments), so forcing the maximum to be 2.5% has no effect.

Trinkets are not directly added to a monster's drop pool; they are spawned separately. This means that the Burglar's Ring and Monster Compendium do not affect the chance for or number of trinkets dropped.

### Crates and Barrels

Breakable containers in the Mines, Skull Cavern, and Quarry Mine have a chance to drop a random trinket that is not the Magic Hair Gel. This is calculated as follows:

`chance = ( 0.4% + DailyLuck / 25.0 + LuckBuffs × 0.133% ) × ( 1.0 + effectiveMineLevel * 0.001 ) × 0.8`

1. In the Mines, effectiveMineLevel = the level.
2. In the Skull Cavern, effectiveMineLevel = level + 120.
3. In the Quarry Mine, effectiveMineLevel = 5000.

The difficulty levels of the Mines and Skull Cavern do not affect the drop rates from containers in each location.

## Bugs

- Although trinkets can be gifted, they do not appear in the Gift Log.
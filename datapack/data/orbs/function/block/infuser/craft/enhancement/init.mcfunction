scoreboard players reset $enchants orbs.block.infuser.craft

execute store result score $enchants orbs.block.infuser.craft run data get storage orbs:block/infuser/craft inventory.slot2.components."minecraft:enchantments".levels
execute unless score $enchants orbs.block.infuser.craft matches 1.. run return -1

function orbs:block/infuser/craft/enhancement/parse/init
function orbs:block/infuser/craft/enhancement/filter/init

execute unless data storage orbs:block/infuser/craft enhancement.enchantments[] run return -1

execute store result score $size orbs.block.infuser.craft run data get storage orbs:block/infuser/craft enhancement.enchantments
scoreboard players remove $size orbs.block.infuser.craft 1
execute store result storage orbs:block/infuser/craft enhancement.pick.max int 1 run scoreboard players get $size orbs.block.infuser.craft

function orbs:block/infuser/craft/enhancement/pick/pick with storage orbs:block/infuser/craft enhancement.pick
function orbs:block/infuser/craft/enhancement/pick/get with storage orbs:block/infuser/craft enhancement.pick

data modify storage orbs:block/infuser/craft result set from storage orbs:block/infuser/craft inventory.slot2
function orbs:block/infuser/craft/enhancement/set with storage orbs:block/infuser/craft enhancement.enchantment

function orbs:block/infuser/craft/enhancement/calculate_xp

execute unless data storage orbs:block/infuser/craft result.components."minecraft:lore" run data modify storage orbs:block/infuser/craft result.components."minecraft:lore" set value []

function orbs:block/infuser/craft/enhancement/set_lore with storage orbs:block/infuser/craft result.components."minecraft:custom_data".orbs_result.cost

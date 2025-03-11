execute unless data storage orbs:block/infuser/craft inventory.slot2.components."minecraft:repair_cost" run return -1

data modify storage orbs:block/infuser/craft result set from storage orbs:block/infuser/craft inventory.slot2
function orbs:block/infuser/craft/potential/calculate_xp

data remove storage orbs:block/infuser/craft result.components."minecraft:repair_cost"

execute unless data storage orbs:block/infuser/craft result.components."minecraft:lore" run data modify storage orbs:block/infuser/craft result.components."minecraft:lore" set value []

function orbs:block/infuser/craft/potential/set_lore with storage orbs:block/infuser/craft macro
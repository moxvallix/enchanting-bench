execute unless data storage orbs:block/infuser/craft inventory.slot2.components."minecraft:repair_cost" run return -1
data modify storage orbs:block/infuser/craft result set from storage orbs:block/infuser/craft inventory.slot2
data remove storage orbs:block/infuser/craft result.components."minecraft:repair_cost"
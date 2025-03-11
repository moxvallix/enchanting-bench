data modify storage orbs:block/infuser/craft result set value {id: "minecraft:air"}
data remove storage orbs:block/infuser/craft backup
data modify storage orbs:block/infuser/craft cache set from entity @s data.cache

function orbs:block/infuser/craft/craft

execute unless data storage orbs:block/infuser/craft result{id: "minecraft:air"} run function orbs:block/infuser/craft/mark_output

data remove storage orbs:block/infuser/craft cache
data modify entity @s data.cache set from storage orbs:block/infuser/craft {}
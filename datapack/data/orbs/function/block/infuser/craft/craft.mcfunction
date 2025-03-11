# Return early if either input is missing
execute unless items block ~ ~ ~ container.11 *[custom_data~{orbs: {infuser: {type: "input"}}}] run return run data remove storage orbs:block/infuser/craft cache.result
execute unless items block ~ ~ ~ container.13 * run return run data remove storage orbs:block/infuser/craft cache.result

data modify storage orbs:block/infuser/craft inventory.slot1 set from block ~ ~ ~ Items[{Slot: 11b}]
data modify storage orbs:block/infuser/craft inventory.slot2 set from block ~ ~ ~ Items[{Slot: 13b}]

data remove storage orbs:block/infuser/craft inventory.slot1.Slot
data remove storage orbs:block/infuser/craft inventory.slot2.Slot

execute store success storage orbs:block/infuser/craft check.slot1 byte 1 run data modify storage orbs:block/infuser/craft cache.inventory.slot1 set from storage orbs:block/infuser/craft inventory.slot1
execute store success storage orbs:block/infuser/craft check.slot2 byte 1 run data modify storage orbs:block/infuser/craft cache.inventory.slot2 set from storage orbs:block/infuser/craft inventory.slot2

# Return early if the items match the cache (aka both checks fail)
execute if data storage orbs:block/infuser/craft check{slot1: false, slot2: false} unless data storage orbs:block/infuser/craft cache.result{id: "minecraft:air"} run return run data modify storage orbs:block/infuser/craft result set from storage orbs:block/infuser/craft cache.result

execute if data storage orbs:block/infuser/craft inventory.slot2.components."minecraft:lore"[] run data modify storage orbs:block/infuser/craft backup.lore set from storage orbs:block/infuser/craft inventory.slot2.components."minecraft:lore"

data modify storage orbs:block/infuser/craft callback set from storage orbs:block/infuser/craft inventory.slot1.components."minecraft:custom_data".orbs.infuser.callback
function orbs:block/infuser/craft/callback with storage orbs:block/infuser/craft
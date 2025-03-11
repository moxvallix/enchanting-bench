summon item ~ ~ ~ {Item: {id: "stone"}, Tags: ["orbs.temp_item"]}
data modify entity @n[type=item,tag=orbs.temp_item] Item set from storage orbs:block/infuser/tick/process_slots return[-1]
data remove storage orbs:block/infuser/tick/process_slots return[-1]
tag @n[type=item,tag=orbs.temp_item] remove orbs.temp_item

execute if data storage orbs:block/infuser/tick/process_slots return[] run function orbs:block/infuser/tick/process_slots/return_items
execute unless data storage orbs:block/infuser/tick/process_slots inventory.slot1 if data storage orbs:block/infuser/tick/process_slots current.components."minecraft:custom_data".orbs.infuser{type: "input"} run return run data modify storage orbs:block/infuser/tick/process_slots inventory.slot1 set from storage orbs:block/infuser/tick/process_slots current
execute unless data storage orbs:block/infuser/tick/process_slots inventory.slot2 run return run data modify storage orbs:block/infuser/tick/process_slots inventory.slot2 set from storage orbs:block/infuser/tick/process_slots current

data modify storage orbs:block/infuser/tick/process_slots return append from storage orbs:block/infuser/tick/process_slots current
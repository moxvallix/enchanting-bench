data remove storage orbs:block/infuser/tick/process_slots items
data remove storage orbs:block/infuser/tick/process_slots inventory
data remove storage orbs:block/infuser/tick/process_slots return

data modify storage orbs:block/infuser/tick/process_slots items set from block ~ ~ ~ Items

data modify storage orbs:block/infuser/tick/process_slots inventory.slot1 set from storage orbs:block/infuser/tick/process_slots items[{Slot: 11b}]
data remove storage orbs:block/infuser/tick/process_slots items[{Slot: 11b}]
data modify storage orbs:block/infuser/tick/process_slots inventory.slot2 set from storage orbs:block/infuser/tick/process_slots items[{Slot: 13b}]
data remove storage orbs:block/infuser/tick/process_slots items[{Slot: 13b}]

execute if data storage orbs:block/infuser/tick/process_slots items[{Slot: 15b}] run function orbs:block/infuser/tick/process_slots/return_output
data remove storage orbs:block/infuser/tick/process_slots items[{Slot: 15b}]

execute if data storage orbs:block/infuser/tick/process_slots items[] run function orbs:block/infuser/tick/process_slots/iterate

data modify storage orbs:block/infuser/tick/process_slots items[{Slot: 11b}] merge from storage orbs:block/infuser/tick/process_slots inventory.slot1
data modify storage orbs:block/infuser/tick/process_slots items[{Slot: 13b}] merge from storage orbs:block/infuser/tick/process_slots inventory.slot2
data modify storage orbs:block/infuser/tick/process_slots items[{Slot: 15b}] merge from storage orbs:block/infuser/tick/process_slots inventory.result

data modify block ~ ~ ~ Items set from storage orbs:block/infuser/tick/process_slots items

execute if data storage orbs:block/infuser/tick/process_slots return[] run function orbs:block/infuser/tick/process_slots/return_items
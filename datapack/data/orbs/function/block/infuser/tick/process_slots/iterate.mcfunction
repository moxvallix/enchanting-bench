data modify storage orbs:block/infuser/tick/process_slots current set from storage orbs:block/infuser/tick/process_slots items[-1]
data remove storage orbs:block/infuser/tick/process_slots current.Slot
data remove storage orbs:block/infuser/tick/process_slots items[-1]

function orbs:block/infuser/tick/process_slots/check

execute if data storage orbs:block/infuser/tick/process_slots items[] run function orbs:block/infuser/tick/process_slots/iterate
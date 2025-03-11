data remove storage orbs:block/infuser/check slot

execute if score $slot orbs.block.infuser.check matches 0..35 run return run function orbs:block/infuser/check/player_inventory/slot_name/container
execute if score $slot orbs.block.infuser.check matches -106 run return run data modify storage orbs:block/infuser/check slot set value {id: "weapon", value: "offhand"}
execute if score $slot orbs.block.infuser.check matches 100..103 run return run function orbs:block/infuser/check/player_inventory/slot_name/armor
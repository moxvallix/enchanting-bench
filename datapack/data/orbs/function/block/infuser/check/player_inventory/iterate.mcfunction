data modify storage orbs:block/infuser/check current set from storage orbs:block/infuser/check items[-1]
execute store result score $slot orbs.block.infuser.check run data get storage orbs:block/infuser/check current.Slot
data remove storage orbs:block/infuser/check current.Slot
data remove storage orbs:block/infuser/check items[-1]

data modify storage orbs:block/infuser/consume item set from storage orbs:block/infuser/check current
function orbs:block/infuser/consume/init

function orbs:block/infuser/check/player_inventory/slot_name/init
execute if data storage orbs:block/infuser/consume {success: true} run function orbs:block/infuser/check/player_inventory/success with storage orbs:block/infuser/check slot
execute if data storage orbs:block/infuser/consume {success: false} run function orbs:block/infuser/check/player_inventory/failure with storage orbs:block/infuser/check slot

execute if data storage orbs:block/infuser/check items[] run function orbs:block/infuser/check/player_inventory/iterate
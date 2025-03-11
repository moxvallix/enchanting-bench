# data modify storage orbs:block/infuser/consume item set from entity @s Item

# function orbs:block/infuser/consume/init

# execute if data storage orbs:block/infuser/consume {success: false} run return run kill @s

# data modify storage orbs:block/infuser/check process set from entity @s Item
# function orbs:block/infuser/check/process

# data modify entity @s Item set from storage orbs:block/infuser/check process

kill @s
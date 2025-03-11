# Mark the output as result, by giving the block pos. This will be used to verify the craft.
data modify storage orbs:block/infuser/craft pos set from entity @s Pos

execute store result storage orbs:block/infuser/craft result.components."minecraft:custom_data".orbs_result.block.x int 1 run data get storage orbs:block/infuser/craft pos[0]
execute store result storage orbs:block/infuser/craft result.components."minecraft:custom_data".orbs_result.block.y int 1 run data get storage orbs:block/infuser/craft pos[1]
execute store result storage orbs:block/infuser/craft result.components."minecraft:custom_data".orbs_result.block.z int 1 run data get storage orbs:block/infuser/craft pos[2]

data modify storage orbs:block/infuser/craft result.components."minecraft:custom_data".orbs_result.backup set from storage orbs:block/infuser/craft backup
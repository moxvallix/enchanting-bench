execute store result score $repair_cost orbs.block.infuser.craft run data get storage orbs:block/infuser/craft result.components."minecraft:repair_cost"

execute if score $repair_cost orbs.block.infuser.craft matches ..0 run data modify storage orbs:block/infuser/craft result.components."minecraft:custom_data".orbs_result.cost.levels set value 0
execute if score $repair_cost orbs.block.infuser.craft matches 1 run data modify storage orbs:block/infuser/craft result.components."minecraft:custom_data".orbs_result.cost.levels set value 1
execute if score $repair_cost orbs.block.infuser.craft matches 2 run data modify storage orbs:block/infuser/craft result.components."minecraft:custom_data".orbs_result.cost.levels set value 3
execute if score $repair_cost orbs.block.infuser.craft matches 3 run data modify storage orbs:block/infuser/craft result.components."minecraft:custom_data".orbs_result.cost.levels set value 7
execute if score $repair_cost orbs.block.infuser.craft matches 4 run data modify storage orbs:block/infuser/craft result.components."minecraft:custom_data".orbs_result.cost.levels set value 15
execute if score $repair_cost orbs.block.infuser.craft matches 5.. run data modify storage orbs:block/infuser/craft result.components."minecraft:custom_data".orbs_result.cost.levels set value 31

scoreboard players add $repair_cost orbs.block.infuser.craft 1
execute store result storage orbs:block/infuser/craft result.components."minecraft:repair_cost" int 1 run scoreboard players get $repair_cost orbs.block.infuser.craft
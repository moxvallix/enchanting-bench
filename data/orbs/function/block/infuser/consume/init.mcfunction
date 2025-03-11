data modify storage orbs:block/infuser/consume success set value false
data remove storage orbs:block/infuser/consume check

execute store result score $player_xp orbs.block.infuser.consume run xp query @s levels
execute store result score $required_xp orbs.block.infuser.consume run data get storage orbs:block/infuser/consume item.components."minecraft:custom_data".orbs_result.cost.levels

execute if score $player_xp orbs.block.infuser.consume < $required_xp orbs.block.infuser.consume run return run tellraw @s {"text": "You need more experience.", "color": "red"}
function orbs:block/infuser/consume/take_xp with storage orbs:block/infuser/consume item.components."minecraft:custom_data".orbs_result.cost

function orbs:block/infuser/consume/reposition with storage orbs:block/infuser/consume item.components."minecraft:custom_data".orbs_result.block

execute if data storage orbs:block/infuser/consume {check: false} run data modify storage orbs:block/infuser/consume success set value true
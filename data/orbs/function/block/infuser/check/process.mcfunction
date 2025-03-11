data remove storage orbs:block/infuser/check process.components."minecraft:lore"
execute if data storage orbs:block/infuser/check process.components."minecraft:custom_data".orbs_result.backup.lore run data modify storage orbs:block/infuser/check process.components."minecraft:lore" set from storage orbs:block/infuser/check process.components."minecraft:custom_data".orbs_result.backup.lore
data remove storage orbs:block/infuser/check process.components."minecraft:custom_data".orbs_result

execute store result score $size orbs.block.infuser run data get storage orbs:block/infuser/check process.components."minecraft:custom_data"
execute if score $size orbs.block.infuser matches ..0 run data remove storage orbs:block/infuser/check process.components."minecraft:custom_data"
execute store result score $slot1 orbs.block.infuser.consume run data get block ~ ~ ~ Items[{Slot: 11b}].count
execute if score $slot1 orbs.block.infuser.consume matches 2.. run execute store result block ~ ~ ~ Items[{Slot: 11b}].count int 1 run scoreboard players remove $slot1 orbs.block.infuser.consume 1
execute if score $slot1 orbs.block.infuser.consume matches ..1 run data remove block ~ ~ ~ Items[{Slot: 11b}]

execute store result score $slot2 orbs.block.infuser.consume run data get block ~ ~ ~ Items[{Slot: 13b}].count
execute if score $slot2 orbs.block.infuser.consume matches 2.. run execute store result block ~ ~ ~ Items[{Slot: 13b}].count int 1 run scoreboard players remove $slot2 orbs.block.infuser.consume 1
execute if score $slot2 orbs.block.infuser.consume matches ..1 run data remove block ~ ~ ~ Items[{Slot: 13b}]

data remove block ~ ~ ~ Items[{Slot: 15b}]
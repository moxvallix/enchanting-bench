execute store result score $current orbs.block.infuser.craft run data get storage orbs:block/infuser/craft enhancement.current.value
scoreboard players add $current orbs.block.infuser.craft 1
execute store result storage orbs:block/infuser/craft enhancement.current.value int 1 run scoreboard players get $current orbs.block.infuser.craft

return run function orbs:block/infuser/craft/enhancement/filter/enchant with storage orbs:block/infuser/craft enhancement.current
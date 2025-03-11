data modify storage orbs:block/infuser/craft enhancement.result append value {}
scoreboard players operation $range_end orbs.block.infuser.craft = $idx orbs.block.infuser.craft

execute store result storage orbs:block/infuser/craft enhancement.range.start int 1 run scoreboard players get $range_start orbs.block.infuser.craft
execute store result storage orbs:block/infuser/craft enhancement.range.end int 1 run scoreboard players get $range_end orbs.block.infuser.craft

function orbs:block/infuser/craft/enhancement/parse/parse_id/set_id with storage orbs:block/infuser/craft enhancement.range

data modify storage orbs:block/infuser/craft enhancement.next_state set value {id: "value", open: false}
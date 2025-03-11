scoreboard players operation $range_end orbs.block.infuser.craft = $idx orbs.block.infuser.craft

execute store result storage orbs:block/infuser/craft enhancement.range.start int 1 run scoreboard players get $range_start orbs.block.infuser.craft
execute store result storage orbs:block/infuser/craft enhancement.range.end int 1 run scoreboard players get $range_end orbs.block.infuser.craft

function orbs:block/infuser/craft/enhancement/parse/parse_value/set_temp with storage orbs:block/infuser/craft enhancement.range
function orbs:block/infuser/craft/enhancement/parse/parse_value/set_value with storage orbs:block/infuser/craft enhancement.temp

data modify storage orbs:block/infuser/craft enhancement.next_state set value {id: "id", open: false}
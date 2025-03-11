scoreboard players operation $range_start orbs.block.infuser.craft = $idx orbs.block.infuser.craft
scoreboard players add $range_start orbs.block.infuser.craft 1

data modify storage orbs:block/infuser/craft enhancement.next_state set value {id: "value", open: true}
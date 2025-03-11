function orbs:block/infuser/craft/enhancement/parse/to_string with storage orbs:block/infuser/craft inventory.slot2.components."minecraft:enchantments"

data modify storage orbs:block/infuser/craft enhancement.input set string storage orbs:block/infuser/craft enhancement.string 1
data modify storage orbs:block/infuser/craft enhancement.state set value {id: "id", open: false}
data modify storage orbs:block/infuser/craft enhancement.result set value []
data modify storage orbs:block/infuser/craft enhancement.open set value false


scoreboard players set $idx orbs.block.infuser.craft 1
scoreboard players set $range_start orbs.block.infuser.craft 0
scoreboard players set $range_end orbs.block.infuser.craft 0

function orbs:block/infuser/craft/enhancement/parse/iterate
data modify storage orbs:block/infuser/craft enhancement.current set string storage orbs:block/infuser/craft enhancement.input 0 1
data modify storage orbs:block/infuser/craft enhancement.input set string storage orbs:block/infuser/craft enhancement.input 1

execute if data storage orbs:block/infuser/craft enhancement.state{id: "id"} run function orbs:block/infuser/craft/enhancement/parse/parse_id/init
execute if data storage orbs:block/infuser/craft enhancement.state{id: "value"} run function orbs:block/infuser/craft/enhancement/parse/parse_value/init


execute if data storage orbs:block/infuser/craft enhancement.next_state run function orbs:block/infuser/craft/enhancement/parse/next
scoreboard players add $idx orbs.block.infuser.craft 1
execute unless data storage orbs:block/infuser/craft enhancement{input: ""} run function orbs:block/infuser/craft/enhancement/parse/iterate
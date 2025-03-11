execute if data entity @s data{closed: true} run function orbs:block/infuser/open

function orbs:block/infuser/tick/process_slots/init
function orbs:block/infuser/craft/init

execute if data storage orbs:block/infuser/craft {result: {id: "minecraft:air"}} run return run data remove block ~ ~ ~ Items[{Slot: 15b}]
data modify block ~ ~ ~ Items[{Slot: 15b}] merge from storage orbs:block/infuser/craft result
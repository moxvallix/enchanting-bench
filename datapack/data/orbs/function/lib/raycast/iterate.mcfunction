execute as ed32f3c0-18cb-4659-9ece-8e1aec1c5187 at @s run tp ^ ^ ^0.1

scoreboard players add $iter orbs.lib.raycast 1
execute if score $iter orbs.lib.raycast > $max orbs.lib.raycast run return -1
execute unless predicate orbs:lib/raycast/check run return -1

function orbs:lib/raycast/iterate
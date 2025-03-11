# Entity: ed32f3c0-18cb-4659-9ece-8e1aec1c5187

summon interaction ~ ~ ~ {width: 0.001f, height: 0.001f, UUID: [I; -315427904, 415975001, -1630630374, -333688441]}
execute at @s anchored eyes run tp ed32f3c0-18cb-4659-9ece-8e1aec1c5187 ^ ^ ^0.1 ~ ~

scoreboard players set $max orbs.lib.raycast 100
scoreboard players reset $iter orbs.lib.raycast

function orbs:lib/raycast/iterate

execute at ed32f3c0-18cb-4659-9ece-8e1aec1c5187 run function orbs:lib/raycast/callback with storage orbs:lib/raycast
kill ed32f3c0-18cb-4659-9ece-8e1aec1c5187
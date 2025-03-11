data modify entity @s data.closed set value false

summon interaction ~ ~-0.505 ~ {Tags:["orbs.block.infuser.interaction"], width: 1.1, height: 1.1}

stopsound @a[distance=..16] block block.barrel.open
playsound minecraft:entity.villager.work_librarian block @a[distance=..16] ~ ~ ~
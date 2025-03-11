execute if data entity @s data{closed: true} run return -1

data modify entity @s data.closed set value true
kill @n[type=interaction,tag=orbs.block.infuser.interaction]

stopsound @a[distance=..16] block block.barrel.close
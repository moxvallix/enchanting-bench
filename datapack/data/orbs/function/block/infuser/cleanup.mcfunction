kill @n[tag=orbs.block.infuser.display]
kill @n[tag=orbs.block.infuser.interaction,distance=..1]

kill @e[type=item,nbt={Item: {components: {"minecraft:custom_name": '{"extra":[{"color":"white","font":"orbs:gui","text":""},{"font":"orbs:space","text":""},{"font":"minecraft:default","translate":"orbs.block.infuser"}],"font":"orbs:space","text":""}'}, count: 1, id: "minecraft:barrel"}}]
loot spawn ~ ~ ~ loot orbs:block/infuser
kill @s
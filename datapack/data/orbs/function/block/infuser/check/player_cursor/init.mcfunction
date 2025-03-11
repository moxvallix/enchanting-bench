# Entity: ac1cdf2e-efe9-4155-ab36-e8006c5a4d4c

advancement revoke @s only orbs:block/infuser/player_cursor

summon armor_stand ~ -1000 ~ {UUID: [I; -1407394002, -269926059, -1422465024, 1817857356]}
item replace entity ac1cdf2e-efe9-4155-ab36-e8006c5a4d4c weapon.mainhand from entity @s player.cursor

data modify storage orbs:block/infuser/consume item set from entity ac1cdf2e-efe9-4155-ab36-e8006c5a4d4c HandItems[0]
function orbs:block/infuser/consume/init

execute if data storage orbs:block/infuser/consume {success: true} run function orbs:block/infuser/check/player_cursor/success
execute if data storage orbs:block/infuser/consume {success: false} run item replace entity @s player.cursor with air

kill ac1cdf2e-efe9-4155-ab36-e8006c5a4d4c
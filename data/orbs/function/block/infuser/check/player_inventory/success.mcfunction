# Entity: ac1cdf2e-efe9-4155-ab36-e8006c5a4d4c
summon armor_stand ~ -1000 ~ {UUID: [I; -1407394002, -269926059, -1422465024, 1817857356]}

data modify storage orbs:block/infuser/check process set from storage orbs:block/infuser/check current
function orbs:block/infuser/check/process

data modify entity ac1cdf2e-efe9-4155-ab36-e8006c5a4d4c HandItems[0] set from storage orbs:block/infuser/check process

$item replace entity @s $(id).$(value) from entity ac1cdf2e-efe9-4155-ab36-e8006c5a4d4c weapon.mainhand

kill ac1cdf2e-efe9-4155-ab36-e8006c5a4d4c
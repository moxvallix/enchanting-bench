advancement revoke @s only orbs:block/infuser/player_inventory

data modify storage orbs:block/infuser/check items set value []
data modify storage orbs:block/infuser/check items append from entity @s Inventory[{components: {"minecraft:custom_data": {orbs_result: {}}}}]

function orbs:block/infuser/check/player_inventory/iterate
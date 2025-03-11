function orbs:block/infuser/craft/init

execute store result storage orbs:block/infuser/consume check byte 1 run data modify storage orbs:block/infuser/craft result set from storage orbs:block/infuser/consume item

execute if data storage orbs:block/infuser/consume {check: false} run function orbs:block/infuser/consume/consume
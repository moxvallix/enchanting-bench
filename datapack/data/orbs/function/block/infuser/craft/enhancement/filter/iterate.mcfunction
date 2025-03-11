data modify storage orbs:block/infuser/craft enhancement.current set from storage orbs:block/infuser/craft enhancement.result[-1]
data remove storage orbs:block/infuser/craft enhancement.result[-1]

data modify entity 288b06c6-f178-4110-95ee-e51675203e27 HandItems[0] set from storage orbs:block/infuser/craft inventory.slot2
data remove entity 288b06c6-f178-4110-95ee-e51675203e27 HandItems[0].components."minecraft:enchantments"

execute if function orbs:block/infuser/craft/enhancement/filter/check run data modify storage orbs:block/infuser/craft enhancement.enchantments append from storage orbs:block/infuser/craft enhancement.current

execute if data storage orbs:block/infuser/craft enhancement.result[] run function orbs:block/infuser/craft/enhancement/filter/iterate
setblock ~ ~ ~ barrel

data modify block ~ ~ ~ Items set value []
data modify block ~ ~ ~ CustomName set value '[{"font": "orbs:space", "text": ""},{"font": "orbs:gui", "text": "", "color": "white"},{"font": "orbs:space", "text": ""},{"translate": "orbs.block.infuser", "font": "default"}]'

execute summon marker run function orbs:block/infuser/setup_marker
execute align xyz positioned ~ ~ ~ summon item_display run function orbs:block/infuser/setup_display
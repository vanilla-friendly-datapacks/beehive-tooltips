#######################################################################
# Author:  SirWindfield (https://github.com/SirWindfield)             #
# License: GNU GPLv3                                                  #
#                                                                     #
# If applicable, credit to other people's work is given in the readme #
#######################################################################

# Save the number of bees.
execute as @s store result score @s zt.beesInBlock if data entity @s Item.tag.BlockEntityTag.Bees[]

# Clear the old lore to remove potentially outdated information.
data remove entity @s Item.tag.display.Lore

# Apply bees tooltip.
execute as @s if score @s zt.beesInBlock matches 1 run data modify entity @s Item.tag.display.Lore set value ['{"text":"Bees: 1","color":"yellow","italic":"false"}']
execute as @s if score @s zt.beesInBlock matches 2 run data modify entity @s Item.tag.display.Lore set value ['{"text":"Bees: 2","color":"yellow","italic":"false"}']
execute as @s if score @s zt.beesInBlock matches 3 run data modify entity @s Item.tag.display.Lore set value ['{"text":"Bees: 3","color":"yellow","italic":"false"}']

# Used to add the next tooltip as well if bees are present.
execute as @s store result score @s zt.hasItemLore if data entity @s Item.tag.display.Lore[]

# Apply honey level tooltip.
execute as @s[nbt={Item: {tag: {BlockStateTag: {honey_level: "0"}}}}] if score @s zt.hasItemLore matches 1 run data modify entity @s Item.tag.display.Lore append value '{"text":"Honey Level: 0","color":"yellow","italic":"false"}'
execute as @s[nbt={Item: {tag: {BlockStateTag: {honey_level: "1"}}}}] run data modify entity @s Item.tag.display.Lore append value '{"text":"Honey Level: 1","color":"yellow","italic":"false"}'
execute as @s[nbt={Item: {tag: {BlockStateTag: {honey_level: "2"}}}}] run data modify entity @s Item.tag.display.Lore append value '{"text":"Honey Level: 2","color":"yellow","italic":"false"}'
execute as @s[nbt={Item: {tag: {BlockStateTag: {honey_level: "3"}}}}] run data modify entity @s Item.tag.display.Lore append value '{"text":"Honey Level: 3","color":"yellow","italic":"false"}'
execute as @s[nbt={Item: {tag: {BlockStateTag: {honey_level: "4"}}}}] run data modify entity @s Item.tag.display.Lore append value '{"text":"Honey Level: 4","color":"yellow","italic":"false"}'
execute as @s[nbt={Item: {tag: {BlockStateTag: {honey_level: "5"}}}}] run data modify entity @s Item.tag.display.Lore append value '{"text":"Honey Level: 5","color":"yellow","italic":"false"}'

tag @s add zt.beehiveWithTooltip

#######################################################################
# Author:  SirWindfield (https://github.com/SirWindfield)             #
# License: GNU GPLv3                                                  #
#                                                                     #
# If applicable, credit to other people's work is given in the readme #
#######################################################################

execute as @e[type=minecraft:item,tag=!zerotask.beehiveWithTooltip,nbt={Item: {id: "minecraft:bee_nest"}},tag=!global.ignore] run function zerotask:beehive_tooltips/private/add_tooltip
execute as @e[type=minecraft:item,tag=!zerotask.beehiveWithTooltip,nbt={Item: {id: "minecraft:beehive"}},tag=!global.ignore] run function zerotask:beehive_tooltips/private/add_tooltip

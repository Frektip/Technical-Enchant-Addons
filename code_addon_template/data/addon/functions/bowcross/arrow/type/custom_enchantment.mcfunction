##===============================ARROW TYPE FUNCTION===============================##
# This function will do several things when the arrow enchantment has been detected
#-----------------------------------------------------------------------------------#
# 1.- Add particles to the arrow (if you want)
#     - "execute if score #tslpm game.Opts matches 1 run" is in case you want to
#         support "Low performance Mode" gampley option, so players can disable the
#         arrow paticles if they want.
execute if score #tslpm game.Opts matches 1 run particle minecraft:electric_spark ~ ~ ~ 0 0 0 0.5 10
#-----------------------------------------------------------------------------------#
# 2.- Trigger the enchantment
#     - The arrow won't trigger the enchantment unless it lands. When it does that
#       we run the following commands:

# This one kills it's correspondent Area Effect Cloud, remember to change 
#  "arrow.tag_follow" tag to the same one for the enchantment you're trying to
#  implement
execute if entity @s[nbt={inGround:1b}] run kill @e[distance=..4,sort=nearest,limit=1,tag=arrow.tag_follow]

# This one will finally trigger the enchantment following this path:
execute if entity @s[nbt={inGround:1b}] run function addon:bowcross/unload/custom_enchantment

# This one kills the arrow when the arrow lands
execute if entity @s[nbt={inGround:1b}] run kill @s
#-----------------------------------------------------------------------------------#
# 3.- Tp the Are Effect Cloud
#     - While the arrow isn't in the ground, you need to tp it's correspondent Area
#       Effect Cloud. Remember to change "arrow.tag_follow" tag!
tp @e[distance=..4,sort=nearest,limit=1,tag=arrow.tag_follow] @s
##==================================================================================##


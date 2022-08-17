##===============================CLOUD TYPE FUNCTION===============================##
# This function will trigger at the nearest entity (presumably a hitted mob) the
#  enchantment unload command following this format:

execute as @e[type=!minecraft:area_effect_cloud,sort=nearest,limit=1] at @s run function addon:bowcross/unload/custom_enchantment

# After that, we kill this Area Effect Cloud

execute run kill @s

# Notice that you for this to work properly you also need to follow the instructions
#  from "addon:bowcross/arrow/type/custom_enchantment"
##=================================================================================##


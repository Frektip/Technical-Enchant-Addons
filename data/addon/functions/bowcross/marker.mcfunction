##===============================MARKER ARROW FUNCTION===============================##
#This function runs when the custom arrow hits a mob, in order to
# trigger the enchantment functionallity, you need to follow this format

execute if entity @s[tag=arrow.tag_follow] as @e[type=!marker,sort=nearest,limit=1] at @s run function addon:bowcross/unload/custom_enchantment

# - Agin "arrow.tag" is just an example that you need to change 
##===================================================================================##
##===============================CLOUD SELECT FUNCTION===============================##
# This function checks for an Area Effect Cloud with a custom tag
# - The following function runs when we detect that a custom enchanted arrow isn't
#   near, meaning that it possibly hit a mob:

execute if entity @s[tag=arrow.tag_follow] at @s unless entity @e[distance=..4,tag=tep.custom_arrow] run function addon:bowcross/cloud/type/custom_enchantment

# - Don't forget to change "arrow.tag_follow" to the tag of your custom enchantment
# - Don't change "tep.custom_arrow" tag!
# You need to add this command for every enchantment or enchantment level in your addon
##===================================================================================##


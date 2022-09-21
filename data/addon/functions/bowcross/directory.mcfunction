##===============================DIRECTORY ARROW FUNCTION===============================##
# - Custom bow and crossbow enchantments system need have some conditions to be meet first
#    before triggering the enchantment functionallity
# - If you modify "clear", "get_arrow", "offhand_arrow" functions correctly, this function
#    should run without problems
# - You need to follow this format:

execute if score @s your.scoreboard.name matches 1 if score #trigger addon.ench matches 1.. as @e[type=arrow,tag=tep.arrow_valid_owner,tag=!arrow.tag,distance=..6,sort=nearest] at @s run function addon:bowcross/load/custom_enchantment

# Don't forget to do this command for each bow/crossbow enchantment that you add
# Don't change the "tep.arrow_valid_owner" tag!!!
# #trigger addon.ench is an example, but this is necessary to use, because
# this prevents players from staking multiple custom enchantments at once
# You can set this scoreboard value in: "validate_arrow" function
# "arrow.tag" tag is just an example that you need to change for the enchantmet
#----------------------------------------------------------------------------------------#
#In case your enchantment has more than one level them you'll need to check this command
# per enchantment level like:

#execute if score @s [your scoreboard name] matches 2
#execute if score @s [your scoreboard name] matches 3
#execute if score @s [your scoreboard name] matches 4
##======================================================================================##

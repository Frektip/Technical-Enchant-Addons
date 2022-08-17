##===============================GET ARROW FUNCTION===============================##
# - Custom bow and crossbow enchantments system need an scoreboard, and store the
#    enchantment level in that specific scoreboard.
# - You need to follow this format:

execute store result score @s your.scoreboard.name run data get entity @s SelectedItem.tag.CustomEnchantments[{id:"Enchantment"}].lvl

# Don't forget to do this command for each bow/crossbow enchantment that you add
##================================================================================##


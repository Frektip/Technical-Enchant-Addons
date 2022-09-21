##===============================OFFHAND ARROW FUNCTION===============================##
# This function makes your bow/crossbow enchantment if the player use it in it's offhand
#  and PREVENT exploits
# - Custom bow and crossbow enchantments system need an scoreboard, and store the
#    enchantment level in that specific scoreboard.
# - You need to follow this format:

execute store result score @s your.scoreboard.name run data get entity @s Inventory[{Slot:-106b}].tag.CustomEnchantments[{id:"Enchantment"}].lvl

# Don't forget to do this command for each bow/crossbow enchantment that you add
##====================================================================================##

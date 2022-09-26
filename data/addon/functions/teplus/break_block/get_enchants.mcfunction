##===============================GET ENCHANTS FUNCTION===============================##
# This function is run ONLY if the player mined a block while using a custom enchanted
#   tool. We are running this function as that player.

# The first thing you should do is to reset a fake player with your addon enchantment
#   name in teplus.data scoreboard

scoreboard players set #addon_enchant teplus.data 0

# "#addon_enchant" is an example!!
# DON'T change "teplus.data 0"


# After that you can check if the player has your custom enchantment addon and store 
#   a value in your fake player. For this you can follow this format:

execute store success score #addon_enchant teplus.data run execute if data entity @s SelectedItem.tag.CustomEnchantments[{id:"Enchantment"}]

# Be sure to change it according to your enchantment addon id and fake player
# This example is ONLY if your enchantment is kept at one level !!!

#-------------------------------------------------------------------------------------#

# In case you want more precision over the enchantment level you can do:

execute store result score #addon_enchant teplus.data run data get entity @s SelectedItem.tag.CustomEnchantments[{id:"Enchantment"}].lvl

# The rest should be done in "addon:teplus/break_block/item_tag" function
##===================================================================================##
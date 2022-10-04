##===============================ITEM TAG ENCH FUNCTION===============================##
# This function is run once the game ensured the player mined a block with a custom
#   enchantment. We are running that function as "that" mined item

# Is better if you tag this item to keep track of it later following this format:
#-----------If the enchantment is kept at one level you may want to use-----------#
execute if score #addon_enchant teplus.data matches 1.. run tag @s add tepad.item_custom_tag
#---------------------------------------------------------------------------------#

#-----------If the enchantment has more than one level you may want to use-----------#
# Add a general tag, so you can organize better
execute if score #addon_enchant teplus.data matches 1.. run tag @s add tepad.item_custom_tag_general
# Add a tag according to the level value (to get the propper number in the fake player you
#  should have already do it in the function "addon:teplus/break_block/get_enchants")
execute if score #addon_enchant teplus.data matches 1 run tag @s add tepad.item_custom_tag1
execute if score #addon_enchant teplus.data matches 2 run tag @s add tepad.item_custom_tag2
execute if score #addon_enchant teplus.data matches 3 run tag @s add tepad.item_custom_tag3
execute if score #addon_enchant teplus.data matches 4 run tag @s add tepad.item_custom_tag4
#------------------------------------------------------------------------------------#

# "#addon_enchant" is an example!!
# "tepad.item_custom_tag" is an example!!

#-------------------------------------------------------------------#
#This function should run after TE+ base datapack, in case you want
# to check other conditions, such as if the item has mined with a 
# certain enchantment you can use check for the following tags:

# - teplus.item_fortune = fortune
# - teplus.item_silk = silk touch
# - teplus.item_smelt = auto smelt
# - teplus.item_minplus = mining+
# - teplus.item_veinmin = vein-miner
# - teplus.item_excav = excavator
# - teplus.item_chopp = chopping
# - teplus.item_timb = timber
# - teplus.item_scyt = scyther

# Using this tags can be helpful in case you want to make your addon
# enchantment compatible with TE+ enchantments
##====================================================================================##

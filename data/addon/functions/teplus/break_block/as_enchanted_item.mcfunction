##===============================ADDON AS ENCHANTED ITEM FUNCTION===============================##

#At this point this item is recognized as one mined by a player with
# some custom enchantment.
#You can work with the tags you create in "addon:teplus/break_block/item_tag_ench", you can work with that following this format:

execute if entity @s[tag=tepad.item_custom_tag] at @s run function addon:create_a_path

# "tepad.item_custom_tag" is an example!!

#Notice that this function is run as that item dropped when mining a block, and anything you do from this will be as that SINGLE item

#In case you want it to interact with another TE+ enchantment you
# should generate conditions in "addon:teplus/break_block/item_tag_ench"
##==============================================================================================##
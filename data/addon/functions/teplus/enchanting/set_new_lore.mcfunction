##===============================ADDON SET LORE FUNCTION===============================##
# This function will add the correct Lore to the item/book
# For this you mus't call at the "container.0" slot and use your
#  item modiffier path. 
# Make sure you edit correctly the Item moddifier

# For this, you need to check your enchantment with a data storage
#  following this format:

execute if data storage teplus:item_lore First[{id:"ENCHANTMENTID"}] run item modify entity @s container.0 addon:set_lore/enchantment

# - Change your enchantment .id
# - If your enchantment by default has 1 max level you need
#    to make it clear in "addon/functions/teplus/techanv/edit_lore/set_slingle_level"

##===========================================================================================##

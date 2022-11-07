##===============================ADDON SET ENCHANTMENTS FUNCTION===============================##
# This function will add the correct Lore to the item/book
# For this you mus't call at the "container.10" slot and use your
#  item modiffier path. 
# Make sure you edit correctly the Item moddifier

# For this, you need to check your enchantment with a data storage
#  following this format:

execute if data storage teplus:item_lore First[{id:"EnchantmentID"}] run item modify entity @s container.10 addon:set_lore/enchantment

# - Change your enchantment .id
# - If you add a custom Curse add your CurseID instead with the same format
# - If your enchantment by default has 1 max level you need
#    to make it clear in "addon/functions/teplus/techanv/edit_lore/set_slingle_level"

##===========================================================================================##

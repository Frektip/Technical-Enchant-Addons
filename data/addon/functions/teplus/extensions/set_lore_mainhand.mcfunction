##===============================ADDON SET LORE FOR CHESTS===============================##
# This function will add the correct Lore to the book when it generates
#  in a chest.
# For this you must call at the "weapon.mainhand" slot and use your
#  item modiffier path. 
# Make sure you edit correctly the Item moddifier

# For this, you need to check your enchantment with a data storage
#  following this format:

execute if data storage teplus:item_lore First[{id:"EnchantmentID"}] run item modify entity @s weapon.mainhand addon:set_lore/enchantment

# - Change your enchantment .id
# - don't forget to change your item modifier path
##=================================================================================##
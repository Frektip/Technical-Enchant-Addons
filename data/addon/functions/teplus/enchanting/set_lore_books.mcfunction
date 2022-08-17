##===============================ADDON SET LORE BOOK FUNCTION===============================##
# This function will add the Lore of your enchantment to the enchanted books. In order to add the "second Lore" line (the one that tells the
# item were the enchantment can be applyied to), we use "item modifiers".
# You can follow the reference format in the item modifiers folder
#  For this, you can FOLLOW THIS FORMAT:

#Use Item modifiers to Set the 2 lore strings at once
execute if data entity @s Item.tag.StoredCustomEnchantments[{id:"Enchantment"}] run item modify entity @s container.0 addon:add_lore_books/custom_ench

##===========================================================================================##
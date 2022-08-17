##=================================ITEM TYPE ITEM FUNCTION=================================##
# This function is the first step to merge your custom enchantment with an specific item
# Remember to rename this file to the item that you want your enchantment to be applyied to
#  such as "bow", "sword", "shield", etc...
# You need to follow this format:

execute if data storage teplus:tech_anvil.ui CurrentItems[{Slot:6b}].tag.StoredCustomEnchantments[{id:"Enchantment"}] run function addon:teplus/techanv/interaction/merge/item_with_book/custom_enchantment

# - Enchantment = your custom enchantment id
# - Don't forget to change the function path according to your namespace!

# You need to repeat this command for every enchantment that you add for this item.
##=========================================================================================##

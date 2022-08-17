##=================================ITEM TYPE BOOK FUNCTION=================================##
# This function is the first step to merge your custom enchantment with other custom
#  enchanted books. You need to follow this format:

execute if data storage teplus:tech_anvil.ui CurrentItems[{Slot:6b}].tag.StoredCustomEnchantments[{id:"Enchantment"}] run function addon:teplus/techanv/interaction/merge/enchanted_books/custom_enchatment

# - Enchantment = your custom enchantment id
# - Don't forget to change the function path according to your namespace!

# You need to repeat this command for every enchantment that you add
##=========================================================================================##

##=================================ITEM TYPE BOOK FUNCTION=================================##
# This function is the first step to merge your custom enchantment with other custom
#  enchanted books. You need to follow this format:

execute if data storage teplus:tech_anvil.ui CurrentItems[{Slot:6b}].tag.StoredCustomEnchantments[{id:"EnchantmentID"}] run function addon:teplus/techanv/interaction/merge/custom_enchantment

# - Enchantment = your custom enchantment id
# - Don't forget to change the function path according to your namespace!

# You need to repeat this command for every enchantment that you add
#---------------------------------------------------------------------------#
# To detect a custom curse addon
# Follow this format
execute if data storage teplus:tech_anvil.ui CurrentItems[{Slot:6b}].tag.StoredCustomCurse[{id:"CurseID"}] run function addon:teplus/techanv/interaction/merge/custom_curse

# Remember to change the Curse id with yours
##=========================================================================================##

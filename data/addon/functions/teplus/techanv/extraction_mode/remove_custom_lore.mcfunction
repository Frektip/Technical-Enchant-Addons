##===============================ADDON REMOVE CUSTOM LORE===============================##
# This function is to conserve not-related TE+ enchantment Lore from the input item.
# - You need to add this command format per each enchantment that you add in your addon:

execute if data entity @s Items[{Slot:10b}].tag.CustomEnchantments[{id:"Enchantment"}] run data remove storage teplus:item_lore ExtractLore[0]

# - Do not change "data remove storage teplus:item_lore ExtractLore[0]"
##=====================================================================================##

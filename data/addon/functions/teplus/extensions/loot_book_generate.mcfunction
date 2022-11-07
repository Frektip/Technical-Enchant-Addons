##===============================ADDON LOOT BOOK GENERATE===============================##
# This function will add the correct Lore to the book when it generates
#  from an enchanted mob.
# For this you mus't use the "teplus:item_lore First[{}]" data storage to check your
#  enchantment or curse ID and then call a loot-table with that enchantment following this format:

execute if data storage teplus:item_lore First[{id:"EnchantmentID"}] run loot spawn ~ ~ ~ loot addon:enchanted_book/enchantment

execute if data storage teplus:item_lore First[{id:"CurseID"}] run loot spawn ~ ~ ~ loot addon:enchanted_book/curse

# - Change your enchantment .id
# - Change the loot-table path for you needs
##=================================================================================##
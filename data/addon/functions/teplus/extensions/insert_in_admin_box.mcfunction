##===============================INSERT IN ADMIN BOX===============================##
# This function will add this enchantmet to the Admin Box when placed, for this is very
#  important that you add it correctly into the Register storage
# For this you must use the "teplus:item_lore First[{}]" data storage to check your
#  enchantment or curse ID and then call a loot-table with that enchantment following this format:

execute if data storage teplus:item_lore First[{id:"EnchantmentID"}] run loot insert ~ ~ ~ loot addon:enchanted_book/enchantment

execute if data storage teplus:item_lore First[{id:"CurseID"}] run loot insert ~ ~ ~ loot addon:enchanted_book/curse

# - Change your enchantment .id
# - Change the loot-table path for you needs
##=================================================================================##
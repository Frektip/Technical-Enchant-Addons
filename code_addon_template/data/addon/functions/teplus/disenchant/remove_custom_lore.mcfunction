##===============================ADDON REMOVE CUSTOM LORE===============================##
# - This function is run to preserve "Non-related" Custom Enchantment Lore
# FOLLOW THIS FORMAT:
# - Don't change the data storage path!!
execute if data entity @s Item.tag.CustomEnchantments[{id:"Enchantment"}] run data remove storage teplus:item_lore DienchLore[0]

# - You'll need to add this command per custom enchantment that you add
##======================================================================================##

##===============================ADDON EDIT LORE BOOKS FUNCTION===============================##
# This function will add the Lore of your enchantment to the output book from the Technical
#  Anvil. For this, you must follow this command:

data modify entity @s[nbt={Items:[{Slot:22b,tag:{StoredCustomEnchantments:[{id:"Enchantment",lvl:number}]}}]}] Items[{Slot:22b}].tag.display.Lore insert 0 value "{\"text\":\"Enchantment\",\"color\":\"gray\",\"italic\":false}"

# - Enchantment = your custom enchantment id
# - Enchantment = also your enchantment name in the Lore
# - number = enchantment level (1,2,3,4...)

# You need to repeat this command for every enchantment and enchantment level that you add
##============================================================================================##

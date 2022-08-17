##===============================ADDON SET LORE ITEMS FUNCTION===============================##
# This function will add the Lore of your enchantment to the item when this is enchanted using
#  the encchanting table set-up. For this, you must FOLLOW THIS FORMAT:

execute if entity @s[nbt={Item:{tag:{CustomEnchantments:[{id:"Enchantment",lvl:number}]}}}] run data modify entity @s Item.tag.display.Lore insert 0 value "{\"text\":\"Enchantment\",\"color\":\"gray\",\"italic\":false}"

# - Enchantment = your custom enchantment id
# - Enchantment = also your enchantment name in the Lore
# - number = enchantment level (1,2,3,4...)

# You need to repeat this command for every enchantment and enchantment level that you add
##===========================================================================================##

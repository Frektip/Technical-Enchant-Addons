##===============================ADDON CLEAN ITEMS STORAGE FUNCTION===============================##
#This function is runned in case the game decides to add enchantments again
# In this way, enchantments don't get duped!!
execute if data entity @s Item.tag.CustomEnchantments[{id:"Enchantment1"}] run data remove storage teplus:loot Temp[{id:"Enchantment1"}]

execute if data entity @s Item.tag.CustomEnchantments[{id:"Enchantment2"}] run data remove storage teplus:loot Temp[{id:"Enchantment2"}]

execute if data entity @s Item.tag.CustomEnchantments[{id:"Enchantment3"}] run data remove storage teplus:loot Temp[{id:"Enchantment3"}]

execute if data entity @s Item.tag.CustomEnchantments[{id:"Enchantment4"}] run data remove storage teplus:loot Temp[{id:"Enchantment4"}]

execute if data entity @s Item.tag.CustomEnchantments[{id:"Enchantment5"}] run data remove storage teplus:loot Temp[{id:"Enchantment5"}]

# etc...
##================================================================================================##
##===============================ADDON CLEAN BOOKS STORAGE FUNCTION===============================##

#This function is runned in case the game decides to add enchantments again
# In this way, enchantments don't get duped!!
# You MUST FOLLOW THIS FORMAT:
execute if data entity @s Item.tag.StoredCustomEnchantments[{id:"Enchantment1"}] run data remove storage teplus:loot Temp[{id:"Enchantment1"}]

execute if data entity @s Item.tag.StoredCustomEnchantments[{id:"Enchantment2"}] run data remove storage teplus:loot Temp[{id:"Enchantment2"}]

execute if data entity @s Item.tag.StoredCustomEnchantments[{id:"Enchantment3"}] run data remove storage teplus:loot Temp[{id:"Enchantment3"}]

# etc...
##================================================================================================##
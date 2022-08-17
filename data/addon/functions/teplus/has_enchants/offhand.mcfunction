##===============================ADDON OFFHAND FUNCTION===============================##
# IN CASE YOU NEED IT, this function detects when a player is holding a Custom Enchanted
#  item in its off hand slot.
# - You need to follow this function

execute as @s[nbt={Inventory:[{Slot:-106b,tag:{CustomEnchantments:[{id:"Enchantment",lvl:number}]}}]}] at @s run function addon:custom_enchantment/run

# You need to add this command per enchantment you add

# - Enchantment = your custom enchantment id
# - number = enchantment level (1,2,3,4...)

# Notice that the function path can change depending in your namespace and what are you
#  trying to do with your enchantment
##====================================================================================##


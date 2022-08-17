##===============================ADDON HELMET FUNCTION===============================##
# IN CASE YOU NEED IT, this function detects when a player is wearing Custom Enchanted
#  leggings.
# - You need to follow this function

execute as @s[nbt={Inventory:[{Slot:101b,tag:{CustomEnchantments:[{id:"Enchantment",lvl:number}]}}]}] run function addon:custom_enchantment/run

# You need to add this command per enchantment you add 

# - Enchantment = your custom enchantment id
# - number = enchantment level (1,2,3,4...)

# Notice that the function path can change depending in your namespace and what are you
#  trying to do with your enchantment
##===================================================================================##


##===============================ADDON CHESTPLATE FUNCTION===============================##
# IN CASE YOU NEED IT, this function detects when a player is wearing a Custom Enchanted
#  chestplate or elytra. It can be a Curse or a normal Enchantment
# - You need to follow this function

execute as @s[nbt={Inventory:[{Slot:102b,tag:{CustomEnchantments:[{id:"Enchantment"}]}}]}] run function addon:custom_enchantment/run

# You need to add this command per enchantment you add 

# - don't forget to change the Enchantment or Curse IDs


# Notice that the function path can change depending in your namespace and what are you
#  trying to do with your enchantment
##===================================================================================##


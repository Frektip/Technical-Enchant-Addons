##===============================ADDON OFFHAND FUNCTION===============================##
# IN CASE YOU NEED IT, this function detects when a player is holding a Custom Enchanted
#  item in its off hand slot. It can be a Curse or a normal Enchantment
# - You need to follow this function

execute as @s[nbt={Inventory:[{Slot:-106b,tag:{CustomEnchantments:[{id:"EnchantmentID"}]}}]}] at @s run function addon:custom_enchantment/run

execute as @s[nbt={Inventory:[{Slot:-106b,tag:{CustomCurse:[{id:"CurseID"}]}}]}] at @s run function addon:custom_enchantment/run

# You need to add this command per enchantment you add

# - don't forget to change the Enchantment or Curse IDs


# Notice that the function path can change depending in your namespace and what are you
#  trying to do with your enchantment
##====================================================================================##


##===============================ADDON SELECTED FUNCTION===============================##
# IN CASE YOU NEED IT, this function detects when a player is holding a Custom Enchanted
#  item in its main hand. It can be a Curse or a normal Enchantment
# - You need to follow this function

execute as @s[nbt={SelectedItem:{tag:{CustomEnchantments:[{id:"EnchantmentID"}]}}}] run function addon:custom_enchantment/run

execute as @s[nbt={SelectedItem:{tag:{CustomCurse:[{id:"CurseID"}]}}}] run function addon:custom_enchantment/run

# You need to add this command per enchantment you add 

# - don't forget to change the Enchantment or Curse IDs


# Notice that the function path can change depending in your namespace and what are you
#  trying to do with your enchantment
##=====================================================================================##


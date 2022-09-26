##===============================ADDON SELECTED FUNCTION===============================##
# IN CASE YOU NEED IT, this function detects when a player is holding a Custom Enchanted
#  item in its main hand.
# - You need to follow this function

execute as @s[nbt={SelectedItem:{tag:{CustomEnchantments:[{id:"Enchantment",lvl:number}]}}}] run function addon:custom_enchantment/run

# You need to add this command per enchantment you add 

# - Enchantment = your custom enchantment id
# - number = enchantment level (1,2,3,4...)

# Notice that the function path can change depending in your namespace and what are you
#  trying to do with your enchantment
#---------------------------------------------------------------------------------------#
# There is an special case if you're trying to add an enchantments that requires the 
#  player to mine a block with a certain custom enchantment.

# For that case you can use the TE+ built-in system to detect that using the following format:

execute as @s[nbt={SelectedItem:{tag:{CustomEnchantments:[{id:"Enchantment",lvl:number}]}}}] run function enchantplus:entity/player/when_breaking_block

# The function path: "enchantplus:entity/player/when_breaking_block" is the one that
#  will start a process to check the nearest mined item.
# However, to continue with this process you should check the functions:
# - addon:teplus/break_block/get_enchants
# - addon:teplus/break_block/item_tag
# - addon:teplus/break_block/as_enchanted_item
# Follow those steps correctly to create your addon
##=====================================================================================##


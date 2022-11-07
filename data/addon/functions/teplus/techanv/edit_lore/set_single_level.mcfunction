##===============================ADDON SET SINGLE LEVEL FUNCTION===============================##
# This function will prevent your enchantment to display "I" at level 1
#  in case your enchantment addon is maxed out at level 1 in first place

# For this, you need to check your enchantment with a data storage
#  and add 1 to an scoreboard following this format:

execute if data storage teplus:item_lore First[{id:"EnchantmentID"}] run scoreboard players add @s teplus.single 1

# - Change your enchantment .id
# - DON'T change the scoreboard objective

##===========================================================================================##
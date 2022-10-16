##===============================ADDON RARITY SET FUNCTION===============================##
# This function will recognize your enchantment accoreding to it's
#  rarity. Meaning that the charged bookshelf will display a particle
#  according to your enchantment addon!

# For this, you need to checj your enchantment with a data storage
#  following this format:

execute if data storage teplus:loot Rarity[{id:"Enchantment"}] run scoreboard players set #enchant.rarity teplus.data 0

# - Change your enchantment .id
# The number that you add for #enchant.rarity teplus.data will determine
# the rearity where:
#   1 = Low enchantment 
#   2 = Average enchantment 
#   3 = Strong enchantment 

##===========================================================================================##

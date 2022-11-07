##===============================ADDON CLEAR STORAGE FUNCTION===============================##
# This function will prevent this enchantment from getting duped in
# the book or item when it is enchanted. For this follow this format:

execute if data storage teplus:loot Current[{id:"ENCHANTMENTID"}] run data remove storage teplus:loot Temp[{id:"ENCHANTMENTID"}]

# - Change your enchantment .id
# - Don't change the storage paths
##===========================================================================================##


##===============================CHECK CONDITION===============================##
# if the enchanting tier score [according to enchantment rarity]
# -#teplus.rarity teplus.data 
#     1..=at least need a Tier 1 enchanting setup (low enchantment)
#     2..=at least need a Tier 2 enchanting setup (average enchantment)
#     3..=at least need a Tier 3 enchanting setup (strong enchantment)
##==============================================================================##

#SOME EXAMPLES
# IMPORTANT, set correctly the id and always keep in mind the level

execute if score #teplus.rarity teplus.data matches 2.. run data modify storage teplus:loot Enchantments append value {id:"Enchantment1",lvl:1}

execute if score #teplus.rarity teplus.data matches 3.. run data modify storage teplus:loot Enchantments append value {id:"Enchantment1",lvl:2}

execute if score #teplus.rarity teplus.data matches 1.. run data modify storage teplus:loot Enchantments append value {id:"Enchantment2",lvl:2}

execute if score #teplus.rarity teplus.data matches 3.. run data modify storage teplus:loot Enchantments append value {id:"Enchantment3",lvl:1}

execute if score #teplus.rarity teplus.data matches 2.. run data modify storage teplus:loot Enchantments append value {id:"Enchantment4",lvl:1}

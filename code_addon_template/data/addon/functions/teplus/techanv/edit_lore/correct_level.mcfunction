##===============================ADDON CORRECT LEVEL FUNCTION===============================##

#Remove low levels from the enchantments that have more than I enchantment level
#Example: Life+ has V levels, we need to remove lvl I, II, III and IV

#DON'T REMOVE the max level of the enchantment

#Follow this format:

execute if data storage teplus:item_lore {CurrentLore:['{"text":"Enchantment1 I","color":"gray","italic":false}']} unless data entity @s Items[{Slot:22b}].tag.CustomEnchantments[{id:"Enchantment1",lvl:1}] run data remove storage teplus:item_lore CurrentLore[0]
execute if data storage teplus:item_lore {CurrentLore:['{"text":"Enchantment1 II","color":"gray","italic":false}']} unless data entity @s Items[{Slot:22b}].tag.CustomEnchantments[{id:"Enchantment1",lvl:2}] run data remove storage teplus:item_lore CurrentLore[0]

execute if data storage teplus:item_lore {CurrentLore:['{"text":"Enchantment2 I","color":"gray","italic":false}']} unless data entity @s Items[{Slot:22b}].tag.CustomEnchantments[{id:"Enchantment2",lvl:1}] run data remove storage teplus:item_lore CurrentLore[0]
##==========================================================================================##

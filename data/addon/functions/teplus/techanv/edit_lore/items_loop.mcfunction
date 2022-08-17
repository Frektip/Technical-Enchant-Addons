##===============================ADDON ITEMS LOOP FUNCTION===============================##
# This function is to conserve not-related TE+ enchantment Lore
# - You need to add this command format per each enchantment that you add in your addon,
#   including levels. FOLLOW THIS FORMAT:

execute if data storage teplus:item_lore {CurrentLore:['{"text":"Enchantment","color":"gray","italic":false}']} run data remove storage teplus:item_lore CurrentLore[0]

# - You MUST write exactly the Lore of your enchantments, including color, and other formats
#   such as "text", "translate", "bold", "italic", etc..
# - If you don't write correctly your enchantments Lore, the whole system will break!!!

# - Do not change "data remove storage teplus:item_lore CurrentLore[0]"
##=======================================================================================##


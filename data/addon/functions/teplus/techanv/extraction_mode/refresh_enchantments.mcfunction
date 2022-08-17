##===============================ADDON REFRESH ENCHANTMENTS===============================##
# This function will update the Lore from the input item
# - You need to add this command format per each enchantment that you add in your addon,
#   including levels. FOLLOW THIS FORMAT:

execute unless data storage teplus:item_lore {ExtractLore:['{"text":"Enchantment","color":"gray","italic":false}']} run data modify entity @s[nbt={Items:[{Slot:10b,tag:{CustomEnchantments:[{id:"Enchantment",lvl:number}]}}]}] Items[{Slot:10b}].tag.display.Lore insert 0 value "{\"text\":\"Enchantment\",\"color\":\"gray\",\"italic\":false}"

# - You MUST write exactly the Lore of your enchantments, including color, and other formats
#   such as "text", "translate", "bold", "italic", etc..
# - If you don't write correctly your enchantments Lore, the whole system will break!!!
#--------------------------------------------------------------------------------------#
# How the hell the command works???
# There are 3 main parts in the command

##1.- execute unless data storage teplus:item_lore {ExtractLore:['{"text":"Enchantment","color":"gray","italic":false}']}

# This first part checks in the data storage if there is reamining Lore, this is to
# prevent the item getting duplicated enchantment Lore, so write correctly your
# enchantment Lore

##2.- data modify entity @s[nbt={Items:[{Slot:10b,tag:{CustomEnchantments:[{id:"Enchantment",lvl:number}]}}]}]

# This second part modify the Lore of the item if "conditions" are met. Those conditions
# are the enchantment id and it's level. This has to ve related with the enchantment and
# it's level from part 1

##3.- Items[{Slot:10b}].tag.display.Lore insert 0 value "{\"text\":\"Enchantment\",\"color\":\"gray\",\"italic\":false}"

# This third part put the enchantment Lore into the item, so write correctly the Lore
# according to your enchantment and it's level set in part 1 and 2
##========================================================================================##


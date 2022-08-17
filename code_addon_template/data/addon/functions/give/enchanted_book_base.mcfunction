##===============================ADDON GIVE FUNCTION===============================##
# I recommend to add this functions to make your life easier ;)
#  - This function will give you an enchanted book with the enchantment that you're
#     trying to add to your addon. 
#  - You will need to one of this type of functions per enchantment and enchantment
#    level (enchantments that has I, II, III, etc..)
#-----------------------------------------------------------------------------------#
# The format of the function is as it follows:

give @s minecraft:enchanted_book{StoredCustomEnchantments:[{id:"Enchantment",lvl:number}],display:{Lore:["{\"text\":\"Enchantment\",\"color\":\"gray\",\"italic\":false}","{\"text\":\"► Item/s\",\"color\":\"color\"}"]}}

# Don't forget to change:
#  - "Enchantment": to your enchantment id
#  - "number": to 1, 2, 3, etc... depending on the enchantment
#  - "Item/s": to show players on what item/s your enchantment can be applyied to
#  - "color": to [red=weapons], [yellow=tools], [blue=armor], [green=other]
# You can add more Lore strings in case the enchantment applyies to different items 
#-----------------------------------------------------------------------------------#
# Here is an example:

#give @s minecraft:enchanted_book{StoredCustomEnchantments:[{id:"Squash",lvl:4}],display:{Lore:["{\"text\":\"Squash IV\",\"color\":\"gray\",\"italic\":false}","{\"text\":\"► Sword-Crossbow\",\"color\":\"red\"}","{\"text\":\"► Axe\",\"color\":\"yellow\"}"]}}
##=================================================================================##

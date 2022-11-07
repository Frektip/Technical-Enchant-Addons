##===============================ADDON GIVE FUNCTION===============================##
# I recommend to add this functions to make your life easier ;)
#  - This function will give you an enchanted book with the enchantment that you're
#     trying to add to your addon. 
#  - It will randonly select between the min and max level from your enchantment
#    using a loot-table
#-----------------------------------------------------------------------------------#
# The format of the function is as it follows:

#Reset the storage (don't change this command)
data modify storage teplus:item_lore First set value []
#Set the enchantment at level 1 by default
data modify storage teplus:item_lore First set value [{id:"EnchantmentID",lvl:1}]
#Don't forget to change the enchantment ID or cuse ID


#Set a random level value from the max level limit scoreboard
#Prepare the random value
scoreboard players set $min random 1
execute store result score $max random run scoreboard players get #enchant/curseID teplus.maxlvl
function enchantplus:random_uniform

#Don't forget to change the "#enchant/curseID" fake player 

#----------------Don't Change----------------#
#Set the new level to the storage
execute store result storage teplus:item_lore First[0].lvl int 1 run scoreboard players get $out random

#Debug if the enchantment at level 1 doesn't display "I"
scoreboard players set @s teplus.single 0
function #technical_anvil:edit_lore/set_single_level

#Set the level number based on the score
execute store result score @s teplus.tmplvl run data get storage teplus:item_lore First[0].lvl
function technical_anvil:edit_lore/system/get_level
#--------------------------------------------#

#Put the correct lore based on the "First" storage
loot spawn ~ ~ ~ loot addon:enchanted_book/enchantment
#Don't forget to change the loot-table path


#Reset
scoreboard players reset @s teplus.single
scoreboard players reset @s teplus.tmplvl
##=================================================================================##

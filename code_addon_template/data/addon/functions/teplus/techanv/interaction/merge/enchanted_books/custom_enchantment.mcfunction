##===============================MERGE BOOK WITH BOOK FUNCTION===============================##
# This function will apply your custom enchantment to an enchanted book Output in the Technical
#  Anvil. For this, you have two options:
#---------------------------------------------------------------------------------------------#
## 1.- If your enchantment has only one level
# Follow this command format:

execute unless data storage teplus:tech_anvil.ui ResultItem.tag.StoredCustomEnchantments[{id:"Enchantment"}] run data modify storage teplus:tech_anvil.ui ResultItem.tag.StoredCustomEnchantments append value {id:"Enchantment",lvl:1}

# - Enchantment = your custom enchantment id

# After that you need to add this tag using this function
tag @s add CEnchApply
#---------------------------------------------------------------------------------------------#
## 2.- If your enchantment has more than one level
# If we combine two same enchanted books with the same level, the output should give the same
#  enchantment but with a higher level, right?

# To do that you need to follow this functions:

#---------GET LEVELS OF BOTH SECTIONS---------#
execute store result score @s TCHA.Section1 run data get storage teplus:tech_anvil.ui CurrentItems[{Slot:2b}].tag.StoredCustomEnchantments[{id:"Enchantment"}].lvl
execute store result score @s TCHA.Section2 run data get storage teplus:tech_anvil.ui CurrentItems[{Slot:6b}].tag.StoredCustomEnchantments[{id:"Enchantment"}].lvl

#-------INCREASE LEVEL IF THEY MATCH-------#
#Section1 is the limit for this enchatment
execute if entity @s[scores={TCHA.Section1=..number}] if score @s TCHA.Section2 = @s TCHA.Section1 run scoreboard players add @s TCHA.Section1 1
#Really important to change "number" with the max level that you want your custom enchantment to be
# For example: if you want your enchantment to have 4 levels, you need to put @s[scores={TCHA.Section1=..3}]
# Otherwise, the enchantment won't update correctly

#--CHOOSE THE LARGEST IF THEY DON'T MATCH--#
# Don't change this function
execute if score @s TCHA.Section2 > @s TCHA.Section1 run scoreboard players operation @s TCHA.Section1 = @s TCHA.Section2
#-------ADD ENCHANT IF IT RESULTITEM DOESN'T HAVE IT YET-------#
execute unless data storage teplus:tech_anvil.ui ResultItem.tag.StoredCustomEnchantments[{id:"Enchantment"}] run data modify storage teplus:tech_anvil.ui ResultItem.tag.StoredCustomEnchantments append value {id:"Enchantment",lvl:1}
#--------SET THE NEW ENCHANTMENT LEVEL--------#
execute store result storage teplus:tech_anvil.ui ResultItem.tag.StoredCustomEnchantments[{id:"Enchantment"}].lvl int 1 run scoreboard players get @s TCHA.Section1
# Add this tag to yout item
tag @s add CEnchApply

# - Enchantment = your custom enchantment id
##===========================================================================================##
##===============================MERGE ITEM WITH ITEM FUNCTION===============================##
# This function will apply your custom enchantment to an item Output in the Technical
#  Anvil. For this, you have two options:
#---------------------------------------------------------------------------------------------#






## 1.- If your enchantment has only one level
# Follow this command format:

#Remove ComError tag, because is a compatible enchantment
tag @s remove ComError

#Just check if the ResultItem doesn't have this enchantment, so the tag is added
execute unless data storage teplus:tech_anvil.ui ResultItem.tag.CustomEnchantments[{id:"Enchantment"}] run data modify storage teplus:tech_anvil.ui ResultItem.tag.CustomEnchantments append value {id:"Enchantment",lvl:1}

# - Enchantment = your custom enchantment id

# IN CASE THIS IS AN ENCHANTMENT FOR THE BOW OR CORSSBOW: Apply CustomArrow nbt tag, so the game 
# recognizes this enchanted bow or crossbow using this command:

data modify storage teplus:tech_anvil.ui ResultItem.tag.CustomArrow set value 1

# After that you need to add this tag using this function
tag @s add CEitm
#---------------------------------------------------------------------------------------------#






## 2.- If your enchantment has more than one level
# If we combine two same enchanted items with the same level, the output should give the same
#  enchantment but with a higher level, right?

# To do that you need to follow this functions:

#Remove ComError tag, because is a compatible enchantment
tag @s remove ComError

#---------GET LEVELS OF BOTH SECTIONS---------#
execute store result score @s TCHA.Section1 run data get storage teplus:tech_anvil.ui CurrentItems[{Slot:2b}].tag.CustomEnchantments[{id:"Enchantment"}].lvl
execute store result score @s TCHA.Section2 run data get storage teplus:tech_anvil.ui CurrentItems[{Slot:6b}].tag.CustomEnchantments[{id:"Enchantment"}].lvl

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
execute unless data storage teplus:tech_anvil.ui ResultItem.tag.CustomEnchantments[{id:"Enchantment"}] run data modify storage teplus:tech_anvil.ui ResultItem.tag.CustomEnchantments append value {id:"Enchantment",lvl:1}

#--------SET THE NEW ENCHANTMENT LEVEL--------#
execute store result storage teplus:tech_anvil.ui ResultItem.tag.CustomEnchantments[{id:"Enchantment"}].lvl int 1 run scoreboard players get @s TCHA.Section1

# IN CASE THIS IS AN ENCHANTMENT FOR THE BOW OR CORSSBOW: Apply CustomArrow nbt tag, so the game 
# recognizes this enchanted bow or crossbow using this command:

data modify storage teplus:tech_anvil.ui ResultItem.tag.CustomArrow set value 1

# Add this tag to yout item
tag @s add CEitm

# - Enchantment = your custom enchantment id
##===========================================================================================##
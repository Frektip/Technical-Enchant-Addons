##================================MERGE ENCHANTMENT FUNCTION================================##
# This function will apply your custom enchantment to an enchanted book or item Output 
# in the Technical Anvil. There is a lot of stuff to cover so pay attention:
#--------------------------------------------------------------------------------------------#

#Remove ComError tag, because is a compatible enchantment
# this tag remove is for the items (Don't change this command)
tag @s remove ComError

#--------------------------------------------------------------------------------------------#


#--------------------------------------------------------------------------------------------#

#---------GET LEVELS OF BOTH SECTIONS---------#
# -TCHA.inpbk = the input is a book, seach for StoredCustomEnchantments
# -TCHA.inpit = the input is an item, seach for CustomEnchantments
execute store result score @s[tag=TCHA.inpbk] TCHA.Section1 run data get storage teplus:tech_anvil.ui CurrentItems[{Slot:2b}].tag.StoredCustomEnchantments[{id:"EnchantmentID"}].lvl
execute store result score @s[tag=TCHA.inpit] TCHA.Section1 run data get storage teplus:tech_anvil.ui CurrentItems[{Slot:2b}].tag.CustomEnchantments[{id:"EnchantmentID"}].lvl
#If it has the tag "Is.same_item" means that the other item is the same one as the one in Slot:2b
# - !Is.same_item = book nbt = StoredCustomEnchantments
# - Is.same_item = item nbt = CustomEnchantments
execute store result score @s[tag=!Is.same_item] TCHA.Section2 run data get storage teplus:tech_anvil.ui CurrentItems[{Slot:6b}].tag.StoredCustomEnchantments[{id:"EnchantmentID"}].lvl
execute store result score @s[tag=Is.same_item] TCHA.Section2 run data get storage teplus:tech_anvil.ui CurrentItems[{Slot:6b}].tag.CustomEnchantments[{id:"EnchantmentID"}].lvl

#--------------------------------------------------------------------------------------------#



#--------------------------------------------------------------------------------------------#

#-------INCREASE LEVEL IF THEY MATCH-------#
#Section1 is the limit for this enchatment
# For this you call the "#enchant/curseID teplus.maxlvl" fake player score you set
# in the "addon/set_options" function, be sure to change it's name to the one you set
execute if score @s TCHA.Section1 < #enchant/curseID teplus.maxlvl if score @s TCHA.Section2 = @s TCHA.Section1 run scoreboard players add @s TCHA.Section1 1

#--CHOOSE THE LARGEST IF THEY DON'T MATCH--# (don't change this command)
execute if score @s TCHA.Section2 > @s TCHA.Section1 run scoreboard players operation @s TCHA.Section1 = @s TCHA.Section2

#--------------------------------------------------------------------------------------------#



#--------------------------------------------------------------------------------------------#

#-------ADD ENCHANT IF IT RESULTITEM DOESN'T HAVE IT YET-------#
#This is for enchanted books
execute if entity @s[tag=TCHA.inpbk] unless data storage teplus:tech_anvil.ui ResultItem.tag.StoredCustomEnchantments[{id:"EnchantmentID"}].lvl run data modify storage teplus:tech_anvil.ui ResultItem.tag.StoredCustomEnchantments append value {id:"EnchantmentID",lvl:1}

#This is for other items
execute if entity @s[tag=TCHA.inpit] unless data storage teplus:tech_anvil.ui ResultItem.tag.CustomEnchantments[{id:"EnchantmentID"}].lvl run data modify storage teplus:tech_anvil.ui ResultItem.tag.CustomEnchantments append value {id:"EnchantmentID",lvl:1}

#Don't forget to change the ID

#--------------------------------------------------------------------------------------------#



#--------------------------------------------------------------------------------------------#

#--------SET THE NEW ENCHANTMENT LEVEL--------#
#This is for enchanted books
execute if entity @s[tag=TCHA.inpbk] store result storage teplus:tech_anvil.ui ResultItem.tag.StoredCustomEnchantments[{id:"EnchantmentID"}].lvl int 1 run scoreboard players get @s TCHA.Section1

#This is for other items
execute if entity @s[tag=TCHA.inpit] store result storage teplus:tech_anvil.ui ResultItem.tag.CustomEnchantments[{id:"EnchantmentID"}].lvl int 1 run scoreboard players get @s TCHA.Section1

#Don't forget to change the ID

#--------------------------------------------------------------------------------------------#


#--------------------------------------------------------------------------------------------#
#ONLY IF THE ENCHANTMENT IS FOR A BOW OR A CROSSBOW ITEM!!!
#Remove this command if that isn't the case
#Apply CustomArrow nbt tag, so the game recognizes this enchanted bow
execute if entity @s[tag=TCHA.inpit] run data modify storage teplus:tech_anvil.ui ResultItem.tag.CustomArrow set value 1
#--------------------------------------------------------------------------------------------#


#--------------------------------------------------------------------------------------------#
#Add some tags, so it gets recognized correctly (Don't change)
tag @s[tag=TCHA.inpit] add CEitm
tag @s[tag=TCHA.inpbk] add CEnchApply
#--------------------------------------------------------------------------------------------#
##==========================================================================================##
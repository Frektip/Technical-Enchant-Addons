##===============================MERGE ITEM WITH BOOK FUNCTION===============================##
# This function will apply your custom curse to an item Output in the Technical
#  Anvil. For this, is recommended to kept it at level 1 as a limit:
#---------------------------------------------------------------------------------------------#

#Remove ComError tag, because is a compatible enchantment
tag @s remove ComError

#Just check if the ResultItem doesn't have this curse, so the tag is added
execute unless data storage teplus:tech_anvil.ui ResultItem.tag.CustomCurse[{id:"Curse"}] run data modify storage teplus:tech_anvil.ui ResultItem.tag.CustomCurse append value {id:"Curse",lvl:1}
# - Curse = your custom curse id

# IN CASE THIS IS A CURSE FOR THE BOW OR CORSSBOW: Apply CustomArrow nbt tag by checking their GROUP using:
execute if data storage teplus:tech_anvil.ui {ResultItem:{tag:{Teplus:{item_type:"BOW"}}}} run data modify storage teplus:tech_anvil.ui ResultItem.tag.CustomArrow set value 1
execute if data storage teplus:tech_anvil.ui {ResultItem:{tag:{Teplus:{item_type:"CROSSBOW"}}}} run data modify storage teplus:tech_anvil.ui ResultItem.tag.CustomArrow set value 1

# After that you need to add this tag using this function
tag @s add CEitm
#---------------------------------------------------------------------------------------------#
# You can theoretically add a curse with more than one level, you can follow
# some of the instructions in "addon:teplus/techanv/interaction/merge/enchanted_item/custom_enchantment" but you would have to change the nbt checks

# It is your desition to see if you take the risk to add a curse with more
# than one level
##===========================================================================================##
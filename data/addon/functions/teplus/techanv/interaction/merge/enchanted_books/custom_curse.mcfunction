##===============================MERGE BOOK WITH BOOK FUNCTION===============================##
# This function will apply your custom curse to an enchanted book Output in the Technical
#  Anvil. For this, TE+ supports a curse with level 1 as a limit:
#---------------------------------------------------------------------------------------------#

#Just check if the ResultItem doesn't have this curse, so the tag is added
execute unless data storage teplus:tech_anvil.ui ResultItem.tag.StoredCustomCurse[{id:"Curse"}] run data modify storage teplus:tech_anvil.ui ResultItem.tag.StoredCustomCurse append value {id:"Curse",lvl:1}

# - Curse = your custom curse id

# After that you need to add this tag using this function (very important)
tag @s add CurseApply
#---------------------------------------------------------------------------------------------#
# You can theoretically add a curse with more than one level, you can follow
# some of the instructions in "addon:teplus/techanv/interaction/merge/book_with_book/custom_enchantment" but you would have to change the nbt checks

# It is your desition to see if you take the risk to add a curse with more
# than one level

# If you do that, remember to add at the end in this function 
#  the command "tag @s add CurseApply" NOT "tag @s add CEnchApply" !!!
##===========================================================================================##
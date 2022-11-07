##=================================ITEM TYPE ITEM FUNCTION=================================##
# This function is the first step to merge your custom enchantment with an specific item
# Remember to rename this file to the item that you want your enchantment to be applyied to
#  such as "bow", "sword", "shield", etc...
# You need to follow this format:

execute if data storage teplus:tech_anvil.ench TeplusEnchantments[{id:"EnchantmentID"}] run function addon:teplus/techanv/interaction/merge/custom_enchantment

# - Enchantment = your custom enchantment id
# - Don't forget to change the function path according to your namespace!

# You need to repeat this command for every enchantment that you add for this item.
#---------------------------------------------------------------------------#
# To detect a custom curse addon
# Follow this format
execute if data storage teplus:tech_anvil.ench TeplusCurses[{id:"CurseID"}] run function addon:teplus/techanv/interaction/merge/custom_curse

# Remember to change the Curse id with yours

#-------------------------------------------------------------------------------------------#
#WHAT IF I WANT TO MAKE THIS ENCHANTMENT INCOMPATIBLE WITH OTHERS (CUSTOM/VANILLA)?

## Step1
#In that case you need to specify in the main command some parameters using the data storage
# "teplus:tech_anvil.ui ResultItem.tag." and specify the enchantments using th path:
#  .Enchantments[{}]: for vanilla enchantments
#  .CustomEnchantments[{}]: for TE+ custom enchantments
#  .CustomCurse[{}]: for TE+ custom curses

# For example if I want an enchantment be incompatible with Protection and Flaming Skin I will
#  do something like: 

execute if data storage teplus:tech_anvil.ench TeplusEnchantments[{id:"EnchantmentID"}] unless data storage teplus:tech_anvil.ui ResultItem.tag.Enchantments[{id:"minecraft:protection"}] unless data storage teplus:tech_anvil.ui ResultItem.tag.CustomEnchantments[{id:"FlamingSking"}] run function addon:teplus/techanv/interaction/merge/custom_enchantment


# Step2
#Now there is an extra step that needs to be done, in case this enchantment is already in
# the item and is trying to add incompatible ones. In this case you need to add a command for
# every single incompatible enchantment following this format:

#Taking the example of Flaming Skin and Protection as incompatible enchantments
execute if data storage teplus:tech_anvil.ui ResultItem.tag.CustomEnchantments[{id:"EnchantmentID"}] if data storage teplus:tech_anvil.ench TeplusVanilla[{id:"minecraft:silk_touch"}] run function addon:teplus/techanv/interaction/item_type/incompatible
execute if data storage teplus:tech_anvil.ui ResultItem.tag.CustomEnchantments[{id:"EnchantmentID"}] if data storage teplus:tech_anvil.ench TeplusEnchantments[{id:"FlamingSkin"}] run function addon:teplus/techanv/interaction/item_type/incompatible

#Notice that we call a function named as "incompatible"
#We also use a different storage, in this case "teplus:tech_anvil.ench"
# -TeplusEnchantments: for TE+ custom enchantments
# -TeplusCurses: for TE+ custom curses
# -TeplusVanilla: for vanilla enchantments

#Note: you can also ask Frektip to add incompatibilities to the main TE+ datapack with your
# addon enchantment. In case you want to make it incompatible with another addon then ask the
# same for that creator. /j, but it can theoretically be done that way hahaha

##=========================================================================================##

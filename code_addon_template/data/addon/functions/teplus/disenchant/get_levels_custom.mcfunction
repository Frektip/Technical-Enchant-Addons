##===============================ADDON GET LEVELS CUSTOM===============================##
##---------REPEAT FOR ALL CustomEnchantments THAT HAVE MORE THAN ONE LEVEL---------##
# -Detect if it has the enchantment, then store it's value
# -If the value is higher than 2, add it to $tep.diench teplus.diench
# -Remove 1 value from $tep.diench teplus.diench for each enchantment

#IMPORTANT to always check first if the item has that enchantment, otherwise the xp
# value will accumulate even if the item doesn't have that enchantment
#-----------------------------------------------------------------------------------#
#Follow this format:
execute if data entity @s Item.tag.CustomEnchantments[{id:"Enchantment"}] store result score @s teplus.diench run data get entity @s Item.tag.CustomEnchantments[{id:"Enchantment"}].lvl
execute if data entity @s Item.tag.CustomEnchantments[{id:"Enchantment"}] if score @s teplus.diench matches 2.. run scoreboard players operation $tep.diench teplus.diench += @s teplus.diench
execute if data entity @s Item.tag.CustomEnchantments[{id:"Enchantment"}] if score @s teplus.diench matches 2.. run scoreboard players remove $tep.diench teplus.diench 1
#-----------------------------------------------------------------------------------#
##====================================================================================##

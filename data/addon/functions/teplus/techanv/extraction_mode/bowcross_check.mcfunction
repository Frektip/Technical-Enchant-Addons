##===============================ADDON BOWCROSS CHECK===============================##
# - This function checks if the input item has a custom bow or crossbow encantment, so
#   when the extraction is done the "CustomArrow" nbt is re-added the input item.
# - If you don't run this function correctly, the bow/crossbow input item won't work
#   anymore.
# - (Note that this function is mandatory as long as you use the "bowcross" system from
#   TE+ original datapack)
#
# FOLLOW THIS FORMAT:
execute if data entity @s {Items:[{Slot:10b,tag:{CustomEnchantments:[{id:"Enchantment"}]}}]} run data modify entity @s Items[{Slot:10b}].tag.CustomArrow set value 1
##==================================================================================##

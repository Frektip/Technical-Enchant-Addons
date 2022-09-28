##===============================ADDON ADD CURSE LORE===============================##
# This function is to add the custom lore from custom curses back to the item
# Remember that custom curses can't be removed from the item when disenchanting
# For this you can follow this format:
data modify entity @s[nbt={Item:{tag:{CustomCurse:[{id:"Curse",lvl:1}]}}}] Item.tag.display.Lore insert 0 value "{\"text\":\"Curse of Your Curse\",\"color\":\"#FF4099\",\"italic\":false}"

#Notice that the color "#FF4099" is the default one TE+ uses to display the curse
# in the item's lore
##==================================================================================##
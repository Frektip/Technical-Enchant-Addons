###===========================ADDON SECOND CURSE LORE FUNCTION===========================##
#This function will only run if a custom enchanted book has a custom curse in it
# it will add the Second Lore (the one that specify to which items it can be applyied to).

# For this you can follow this format: 
data modify entity @s[nbt={Item:{tag:{StoredCustomCurse:[{id:"CURSEID"}]}}}] Item.tag.display.Lore append value "[{\"text\":\"► \",\"color\":\"white\"},{\"translate\":\"Items\",\"color\":\"white\"}]"

#Don't forget to change the ID and the items from the Lore (try to use translation)

###======================================================================================##
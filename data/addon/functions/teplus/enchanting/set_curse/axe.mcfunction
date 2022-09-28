##===============================SET CUSTOM CURSES===============================##
# In case your addon adds a custom curse, you can make it appear in the enchanting
#  table when enchanting an item or a book using this format:
data modify storage teplus:loot Curses append value {id:"Curse",lvl:number}

# Don't change the path of the data storage, just modify:
#  - your "Curse" .id
#  - the level of the curse (maximum to lvl 1 recommended)

# You can add more lines of you add more custom curses
##===============================================================================##
##===============================VALIDATE ARROW FUNCTION===============================##
#This function validates if the arrow was shot by a player and confirms
# that the player used a custom enchanted bow/crossbow

#We need to do this with an scoreboard for your bow/crossbow enchantment addon

#first you need to set a fake player to 0 (false) by default, like:
scoreboard players set #type addon.ench 0

#then change that scoreboard to the one that the player has (if the player)
# is using a custom enchanted bow/crossbow with that enchantment
# then it should change the value, if not it is just ignored
scoreboard players operation #type addon.ench = @s addon.ench

##=====================================================================================##
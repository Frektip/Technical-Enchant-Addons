##===============================ADDON REGISTER===============================##
# - This function is very important to add your enchantment to be
#   detected by TE+, for this use a data storage.
#There are many things to consider with this so let's go bit by bit

#The main storage branch is "teplus:register Custom[]", which is divided in 2 arrays
#                 Enchantment[]          and           Cuse[]
# at the same time, the enchantment array is dvided in Low[], Average[] and Strong[] arrays

#From that point each array have a string with many values and parameters that TE+ will
# take for many things, such as enchanting, setting it into the Admin box, generate it
# at chest loot, selling by villagers and as a drop from enchanted mobs.

#---------------------TE+ REGISTER STRING VALUES---------------------#
##OBLIGATORY##
# id""
#lvl:1(max level possible)
#Enabled:0b=on,1b=off [NO NEEDED IF IT IS A CURSE]
#Rarirty:from 1 to 3 (low, average and strong) [NO NEEDED IF IT IS A CURSE]
#ForItem:{item:1b} (all items that the enchantment is compatible with)


#CustomCurses doesn't have an enabled parameter and they aren't divided
# between low, average or strong arrays.

##OPTIONAL##
#-Structure:[{all:1b},{acient_city:1b,add:10}] if set to "all" it can 
# spawn in any vanilla structure. 
# If it doesn't have "all" then it checks for other structure types
#  ,in case it has an exclusive structure, only then it can generate
# in that structure chest.
#Each strcuture can have the "add" nbt, that will make that enchantment
# more likely to appear in that specific chest loot-table

#If the main "Structure" array isn't there, the enchantment is impossible
# to obtain from any chest.
#---(ATM) Not all the structures types are individually supported---#

#-Sell:1, is the nbt data that will allow that enchantment to be offered
# by a Advanced Enchanter. If it isn't there, that means that it can't be
# obtained by that method. Keep in mind that no matter the max level of the
# enchantment, the Advanced Enchanter will only sell A page of power at lvl 1!!

#-NoEnch:1b, if this is present in the string, then this enchantment won't
# be able to obtain through the enchanting table (no matter if it is
# enchanting a book or an item)

#-NoDrop:1b, if this is present in the string, then this enchantment won't
# be able to obtain through enchanted mobs

#-Incompatible:[{}], You can specify enchantments IDs in this array. Any
# vanilla, custom enchantment or curse wont be compatible with that enchantment.
# Keep in mind that this will only prevent that enchantment from combining
#  with the ones in the Array IN THE ENCHANTING TABLE SETUP for items only. The 
#  technical anvil uses another method for checking between incompatibilities.
#--------------------------------------------------------------------#


#With that said make sure you write down correctly every parameter in the string
# with the correct path (THIS IS VERY IMPORTANT), for each enchantment you need
# to append your enchantment string to the main Register Storage something like this:

data modify storage teplus:register Custom[].Enchantment[].Low append value {id:"EnchantmentID",lvl:7,Enabled:0b,Rarity:2,ForItem:{shovel:1b,sword:1b},Sell:4,Structure:[{all:1b},{fortress:1b,add:17}],Incompatible:[{id:"minecraft:unbreaking"}],NoDrop:1b}

data modify storage teplus:register Custom[].Curse append value {id:"CurseID",lvl:7,ForItem:{axe:1b},Structure:[{end_city:1b,add:43}],NoDrop:1b}

#Also, make sure you execute after registering the enchantment you run a command to update
# the storage to see if the enchantment is enabled or not. For this we use the "#enchant/curseID" 
# fake player from the "Enchopts" scoreboard, follow the path of the enchantment and update
# it's value with something like this

execute store result storage teplus:register Custom[].Enchantment[].Low[{id:"EnchantmentID"}].Enabled byte 1 run scoreboard players get #enchant/curseID Enchopts

# I now this could be a bit overwhelming but this is a life saver if you register your
#  enchantment correctly. In case you need help join the discord so we can guide you with this :)
##=================================================================================##

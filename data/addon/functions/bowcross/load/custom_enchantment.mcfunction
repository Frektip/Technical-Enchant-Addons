##===============================LOAD ARROW FUNCTION===============================##
# - We need to check for an arrow that has the same OWNER UUID from the player, and
#    for that we need to specify custom tag for this enchanted arrow
# - "arrow.tag" is an example, you need to change that tag
#    enchantment level in that specific scoreboard.
# - This is super important because this tag prevents to have conflicts with other
#    bow or crossbow enchantments that use this same method.

execute as @e[distance=..6,type=arrow,tag=!arrow.tag,nbt=!{inGround:1b}] store result score @s UUID0 run data get entity @s Owner[0]
execute as @e[distance=..6,type=arrow,tag=!arrow.tag,nbt=!{inGround:1b}] store result score @s UUID1 run data get entity @s Owner[1]
execute as @e[distance=..6,type=arrow,tag=!arrow.tag,nbt=!{inGround:1b}] store result score @s UUID2 run data get entity @s Owner[2]
execute as @e[distance=..6,type=arrow,tag=!arrow.tag,nbt=!{inGround:1b}] store result score @s UUID3 run data get entity @s Owner[3]



# - After getting the Owner UUID, we check if this arrow matches the same UUID from
#     the nearest player. If the conditions are meet, we summon an Area Effect Cloud
# - DON'T CHANGE "tep.arrow_follow" tag from the Area Effect Cloud
# - Agin "arrow.tag" is just an example that you need to change 
execute as @e[distance=..6,type=arrow,tag=!arrow.tag] at @s if score @s UUID0 = @p UUID0 if score @s UUID1 = @p UUID1 if score @s UUID2 = @p UUID2 if score @s UUID3 = @p UUID3 run summon minecraft:area_effect_cloud ~ ~ ~ {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["arrow.tag_follow","tep.arrow_follow"]}



# - After that we tag the nearest arrow that has the same UUID as the nearest player
# - Agin "arrow.tag" is just an example that you need to change
execute as @e[distance=..6,type=arrow] at @s if score @s UUID0 = @p UUID0 if score @s UUID1 = @p UUID1 if score @s UUID2 = @p UUID2 if score @s UUID3 = @p UUID3 run tag @s add arrow.tag



# - Finally YOU MUST run this function without chaning anything!
execute as @e[distance=..6,type=arrow] at @s if score @s UUID0 = @p UUID0 if score @s UUID1 = @p UUID1 if score @s UUID2 = @p UUID2 if score @s UUID3 = @p UUID3 run tag @s add tep.custom_arrow

#-----------------------------------------------------------------------------------#
# This was the system that detects correctly the enchantment to tag an arrow and then
#  trigger the enchantment that you're trying to implement. The rest of the process
#  is in "addon:bowcross/arrow_select" and "addon:bowcross/cloud_select" folders
##=================================================================================##

##===============================LOAD ARROW FUNCTION===============================##
#CONTEXT: this function comes from "addon:bowcross/directory"

# - At this point you don't need to worry if the arrow comes from the
#  player who shot the arrow in first place

# The only thing that you need to do in this function is to add some tags to the arrow and if you want to use the same system as TE+, summon a marker

##Marker Arrow, it helps to trigger the enchantment if the arrow hits a
# mob. Otherwise it will only trigger if the arrow lands and that's not fun

# -The marker MUST have the "teplus.marker" and "tep.arrow_follow" tags
#   then you can add other tags to it
# - DON'T CHANGE "tep.arrow_follow" tag from the Area Effect Cloud
# - Agin "arrow.tag_follow" is just an example that you need to change 
summon marker ~ ~ ~ {Tags:["teplus.marker","arrow.tag_follow","tep.arrow_follow"]} 

# - After that we tag the arrow (shot by the player owner)
# This is just a reference, you can add more according to your enchantment
tag @s add arrow.tag


# - Finally YOU MUST run this command without chaning anything!
tag @s add tep.custom_arrow

#-----------------------------------------------------------------------------------#
# This was the system that detects correctly the enchantment to tag an arrow and then
#  trigger the enchantment that you're trying to implement. The rest of the process
#  is in "addon:bowcross/arrow_select" and "addon:bowcross/marker" folders
##=================================================================================##

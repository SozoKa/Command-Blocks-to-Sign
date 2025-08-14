## RESET STORAGE DATA
data remove storage cbtosign:data sign
## AS SIGN IS ON A COMMAND BLOCK, DO THE SETUP ON MARKER POSITION REFERENCE
execute as @e[type=marker,tag=cbtosign_marker] at @s run function cbtosign:convert/setup
## GET ALL COMMANDS
# init of line score value
scoreboard players set .current_line cbtosign 0
## set default command values
data modify storage cbtosign:data sign.command_0 set value ""
data modify storage cbtosign:data sign.command_1 set value ""
data modify storage cbtosign:data sign.command_2 set value ""
data modify storage cbtosign:data sign.command_3 set value ""
# search for command blocks
function cbtosign:convert/search_command_blocks
## NOW THAT ALL VALUES ARE COLLECTED, INSERT THEM INTO SIGN ITEM
# create template
data modify storage cbtosign:data sign_result.block_entity_data set value {id:"minecraft:sign",front_text:{messages:[{text:"",click_event:{action:"run_command",command:""}},{text:"",click_event:{action:"run_command",command:""}},{text:"",click_event:{action:"run_command",command:""}},{text:"",click_event:{action:"run_command",command:""}}]}}
# fill out template
data modify storage cbtosign:data sign_result.block_entity_data.front_text.messages[0].text set from storage cbtosign:data sign.line_0
data modify storage cbtosign:data sign_result.block_entity_data.front_text.messages[0].click_event.command set from storage cbtosign:data sign.command_0
data modify storage cbtosign:data sign_result.block_entity_data.front_text.messages[1].text set from storage cbtosign:data sign.line_1
data modify storage cbtosign:data sign_result.block_entity_data.front_text.messages[1].click_event.command set from storage cbtosign:data sign.command_1
data modify storage cbtosign:data sign_result.block_entity_data.front_text.messages[2].text set from storage cbtosign:data sign.line_2
data modify storage cbtosign:data sign_result.block_entity_data.front_text.messages[2].click_event.command set from storage cbtosign:data sign.command_2
data modify storage cbtosign:data sign_result.block_entity_data.front_text.messages[3].text set from storage cbtosign:data sign.line_3
data modify storage cbtosign:data sign_result.block_entity_data.front_text.messages[3].click_event.command set from storage cbtosign:data sign.command_3
# insert it into the item frame
data modify entity @e[type=item_frame,tag=cbtosign_sign_item,limit=1] Item.components."minecraft:block_entity_data" set from storage cbtosign:data sign_result.block_entity_data
## GIVE SIGN ITEM TO PLAYER
item replace entity @s weapon.mainhand from entity @e[type=item_frame,tag=cbtosign_sign_item,limit=1] container.0
give @s honeycomb
## KILL ITEM FRAME
kill @e[type=item_frame,tag=cbtosign_sign_item,limit=1]
## RESET WAXED STATE
data modify block ~ ~ ~ is_waxed set value 0b
## SUMMON OF ITEM FRAME THAT WILL CREATE SIGN ITEM
summon item_frame ~ ~ ~ {Tags:["cbtosign_sign_item"], Silent:1b, Rotation: [0.0f, -90.0f], Facing: 1}
loot replace entity @e[type=item_frame,tag=cbtosign_sign_item] container.0 mine ~ ~ ~

## STORE COLOR AND GLOWING STATE
data modify storage cbtosign:data sign_result.block_entity_data.front_text.has_glowing_text set from block ~ ~ ~ front_text.has_glowing_text
data modify storage cbtosign:data sign_result.block_entity_data.front_text.color set from block ~ ~ ~ front_text.color

## GET SIGN TEXT
scoreboard players set .current_line cbtosign 0
function cbtosign:convert/store_lines
## STORE CURRENT LINE TO STORAGE FOR LATER USE IN MACRO
execute store result storage cbtosign:data sign.current_line int 1 run scoreboard players get .current_line cbtosign
## STORE CURRENT LINE COMMAND FROM CURRENT COMMAND BLOCK
function cbtosign:convert/get_command with storage cbtosign:data sign
## INCREMENT CURRENT LINE SCORE AND TRY TO GET NEXT COMMAND BLOCK
scoreboard players add .current_line cbtosign 1
function cbtosign:convert/get_next_command_block
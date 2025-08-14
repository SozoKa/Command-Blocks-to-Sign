## STORE CURRENT LINE TO STORAGE FOR LATER USE IN MACRO
execute store result storage cbtosign:data sign.current_line int 1 run scoreboard players get .current_line cbtosign
## STORE CURRENT LINE TEXT TO STORAGE BUT TAKE INTO ACCOUNT IF THERE IS A TEXT FIELD OR NOT
execute store result score .return cbtosign run function cbtosign:convert/get_line_if_text_field with storage cbtosign:data sign
execute if score .return cbtosign matches 0 run function cbtosign:convert/get_line_no_text_field with storage cbtosign:data sign
## INCREMENT CURRENT LINE SCORE AND CONTINUE IF NOT ALL LINES ARE DONE
scoreboard players add .current_line cbtosign 1
execute if score .current_line cbtosign matches ..3 run function cbtosign:convert/store_lines
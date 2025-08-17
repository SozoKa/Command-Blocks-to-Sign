## TEST IF NEXT BLOCK IS COMMAND BLOCK
execute store success score .boolean cbtosign if block ~ ~ ~ #cbtosign:command_blocks
## IF IT IS AND ALL LINES ARE NOT DONE, CONTINUE
execute if score .boolean cbtosign matches 1 if score .current_line cbtosign matches ..3 run function cbtosign:convert/search_command_blocks
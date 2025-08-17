$data modify storage cbtosign:data sign.line_$(current_line) set from block ~ ~ ~ front_text.messages[$(current_line)].text
$execute store success score .boolean cbtosign run data get block ~ ~ ~ front_text.messages[$(current_line)].text
execute if score .boolean cbtosign matches 0 run return 0
execute if score .boolean cbtosign matches 1 run return 1
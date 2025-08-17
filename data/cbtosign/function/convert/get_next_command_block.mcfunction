## SEARCH FOR EACH COMMAND BLOCK FACING DIRECTION
execute if block ~ ~ ~ #cbtosign:command_blocks[facing=up] positioned ~ ~1 ~ run function cbtosign:convert/verify_command_block
execute if block ~ ~ ~ #cbtosign:command_blocks[facing=down] positioned ~ ~-1 ~ run function cbtosign:convert/verify_command_block
execute if block ~ ~ ~ #cbtosign:command_blocks[facing=south] positioned ~ ~ ~1 run function cbtosign:convert/verify_command_block
execute if block ~ ~ ~ #cbtosign:command_blocks[facing=east] positioned ~1 ~ ~ run function cbtosign:convert/verify_command_block
execute if block ~ ~ ~ #cbtosign:command_blocks[facing=north] positioned ~ ~ ~-1 run function cbtosign:convert/verify_command_block
execute if block ~ ~ ~ #cbtosign:command_blocks[facing=west] positioned ~-1 ~ ~ run function cbtosign:convert/verify_command_block
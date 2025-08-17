## CREATION OF POSITION REFERENCE MARKER
execute align xyz positioned ~.5 ~.5 ~.5 run summon marker ~ ~ ~ {Tags:["cbtosign_marker"]}
## DETECTING SIGN ORIENTATION
execute if block ~ ~ ~ #minecraft:wall_signs[facing=north] positioned ~ ~ ~1 if block ~ ~ ~ #cbtosign:command_blocks align xyz positioned ~.5 ~.5 ~.5 run function cbtosign:convert/init
execute if block ~ ~ ~ #minecraft:wall_signs[facing=east] positioned ~-1 ~ ~ if block ~ ~ ~ #cbtosign:command_blocks align xyz positioned ~.5 ~.5 ~.5 run function cbtosign:convert/init
execute if block ~ ~ ~ #minecraft:wall_signs[facing=south] positioned ~ ~ ~-1 if block ~ ~ ~ #cbtosign:command_blocks align xyz positioned ~.5 ~.5 ~.5 run function cbtosign:convert/init
execute if block ~ ~ ~ #minecraft:wall_signs[facing=west] positioned ~1 ~ ~ if block ~ ~ ~ #cbtosign:command_blocks align xyz positioned ~.5 ~.5 ~.5 run function cbtosign:convert/init
## KILL THE MARKER
kill @e[type=marker,tag=cbtosign_marker]
## IF BLOCK IS SIGN, RUN SIGN FOUND FUNCTION
execute if block ~ ~ ~ #minecraft:wall_signs run function cbtosign:raycast/sign_found
## ELSE GO FORSWARD UNTIL TOO FAR FROM PLAYER
execute unless block ~ ~ ~ #wall_signs if entity @s[distance=..5] positioned ^ ^ ^.5 run function cbtosign:raycast/search_waxed_sign
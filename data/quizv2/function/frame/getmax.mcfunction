##成績上位者にタグを付与する
#タグリセット
tag @a remove ranked
scoreboard players reset $1st max
scoreboard players reset $2nd max
scoreboard players reset $3rd max
#1位を特定
scoreboard players set $dummy max -1
execute as @a[tag=player] run scoreboard players operation $dummy max > @s ranking
tag @a remove 1st
execute as @a[tag=player] if score @s ranking = $dummy max run tag @s add 1st
tag @a[tag=1st,tag=player] add ranked
execute store result score $1st max run scoreboard players get $dummy max
#2位を特定
scoreboard players set $dummy max -1
execute as @a[tag=!ranked,tag=player] run scoreboard players operation $dummy max > @s ranking
tag @a remove 2nd
execute as @a[tag=!ranked,tag=player] if score @s ranking = $dummy max run tag @s add 2nd
tag @a[tag=2nd,tag=player] add ranked
execute store result score $2nd max run scoreboard players get $dummy max
#3位を特定
scoreboard players set $dummy max -1
execute as @a[tag=!ranked,tag=player] run scoreboard players operation $dummy max > @s ranking
tag @a remove 3rd
execute as @a[tag=!ranked,tag=player] if score @s ranking = $dummy max run tag @s add 3rd
execute store result score $3rd max run scoreboard players get $dummy max
#タグリセット
tag @a remove ranked
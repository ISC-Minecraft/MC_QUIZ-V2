scoreboard players operation $ans cutin = $max questions
scoreboard players operation $ans cutin -= $remain questions
scoreboard players add $ans cutin 1
scoreboard players set $choices0 cutin -1
scoreboard players set $choices1 cutin -1
scoreboard players set $choices2 cutin -1
scoreboard players set $choices3 cutin -1
scoreboard players set $tmp1 cutin -1
scoreboard players set $tmp2 cutin -1
scoreboard players set $tmp3 cutin -1
scoreboard players operation $tmp cutin = $ans cutin
scoreboard players add $tmp cutin 4
execute store result storage quiz: cutin.max int 1 run scoreboard players get $tmp cutin
scoreboard players remove $tmp cutin 8
function quizv2:round/cutin/setmin
execute store result storage quiz: cutin.min int 1 run scoreboard players get $tmp cutin

scoreboard players set $name cutin 1
function quizv2:round/cutin/roll with storage quiz: cutin

execute store result storage quiz: cutin.tmp int 1 run random value 0..3
function quizv2:round/cutin/ansin with storage quiz: cutin

data modify storage quiz: game append value {text:"今、何問目？"}

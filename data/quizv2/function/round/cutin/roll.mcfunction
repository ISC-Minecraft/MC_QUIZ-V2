$execute store result score $tmp cutin run random value $(min)..$(max)
execute if score $tmp cutin matches ..0 run function quizv2:round/cutin/roll with storage quiz: cutin
execute if score $tmp cutin = $ans cutin run function quizv2:round/cutin/roll with storage quiz: cutin
execute if score $name cutin matches 1 unless score $tmp2 cutin = $tmp cutin unless score $tmp3 cutin = $tmp cutin run scoreboard players operation $tmp1 cutin = $tmp cutin
execute if score $name cutin matches 1 if score $tmp1 cutin matches -1 run function quizv2:round/cutin/roll with storage quiz: cutin
execute if score $tmp2 cutin matches -1 run scoreboard players set $name cutin 2
execute if score $name cutin matches 2 unless score $tmp1 cutin = $tmp cutin unless score $tmp3 cutin = $tmp cutin run scoreboard players operation $tmp2 cutin = $tmp cutin
execute if score $name cutin matches 2 if score $tmp2 cutin matches -1 run function quizv2:round/cutin/roll with storage quiz: cutin
execute if score $tmp3 cutin matches -1 run scoreboard players set $name cutin 3
execute if score $name cutin matches 3 unless score $tmp2 cutin = $tmp cutin unless score $tmp1 cutin = $tmp cutin run scoreboard players operation $tmp3 cutin = $tmp cutin
execute if score $name cutin matches 3 if score $tmp3 cutin matches -1 run function quizv2:round/cutin/roll with storage quiz: cutin
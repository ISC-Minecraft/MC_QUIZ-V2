execute if score $ansin cutin matches 100 if data storage quiz: {cutin:{question:{choices1:-1}}} run scoreboard players set $ansin cutin 101
execute if score $ansin cutin matches 100 if data storage quiz: {cutin:{question:{choices2:-1}}} run scoreboard players set $ansin cutin 102
execute if score $ansin cutin matches 101 store result storage quiz: cutin.question.choices1 int 1 run scoreboard players get $tmp1 cutin
execute if score $ansin cutin matches 102 store result storage quiz: cutin.question.choices2 int 1 run scoreboard players get $tmp1 cutin

execute if score $ansin cutin matches 110 if data storage quiz: {cutin:{question:{choices2:-1}}} run scoreboard players set $ansin cutin 111
execute if score $ansin cutin matches 110 if data storage quiz: {cutin:{question:{choices3:-1}}} run scoreboard players set $ansin cutin 112
execute if score $ansin cutin matches 111 store result storage quiz: cutin.question.choices2 int 1 run scoreboard players get $tmp2 cutin
execute if score $ansin cutin matches 112 store result storage quiz: cutin.question.choices3 int 1 run scoreboard players get $tmp2 cutin

execute if score $ansin cutin matches 120 if data storage quiz: {cutin:{question:{choices3:-1}}} run scoreboard players set $ansin cutin 121
execute if score $ansin cutin matches 120 if data storage quiz: {cutin:{question:{choices4:-1}}} run scoreboard players set $ansin cutin 122
execute if score $ansin cutin matches 121 store result storage quiz: cutin.question.choices3 int 1 run scoreboard players get $tmp3 cutin
execute if score $ansin cutin matches 122 store result storage quiz: cutin.question.choices4 int 1 run scoreboard players get $tmp3 cutin

execute if score $ansin cutin matches 101..102 run scoreboard players set $ansin cutin 110
execute if score $ansin cutin matches 111..112 run scoreboard players set $ansin cutin 120
execute if score $ansin cutin matches 121..122 run scoreboard players set $ansin cutin -1
execute unless score $ansin cutin matches -1 run function quizv2:round/cutin/ansin
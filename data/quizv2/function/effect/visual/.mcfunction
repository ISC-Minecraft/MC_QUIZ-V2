#ランキングのタイトルを動的に変更
execute unless data storage quiz: {play:true} run scoreboard objectives modify ranking displayname {text:"---- ランキング ----",color:"white"}
execute if data storage quiz: {play:true} unless data storage quiz: {cutin_ok:-2} run scoreboard objectives modify ranking displayname [{text:"---- 残り：",color:"white"},{color:"light_purple",score:{name:"$remain",objective:questions}},{color:"light_purple",text:"/"},{color:"light_purple",score:{name:"$max",objective:questions}},{text:" ----",color:white}]
execute if data storage quiz: {play:true} if data storage quiz: {cutin_ok:-2} run scoreboard objectives modify ranking displayname [{text:"---- 残り：",color:"white"},{color:"light_purple",text:"???"},{color:"light_purple",text:"/"},{color:"light_purple",score:{name:"$max",objective:questions}},{text:" ----",color:white}]
#ボスバー用スコアを操作
execute if score $round countdown matches 1.. if score $dummy bossbar matches 1.. run scoreboard players remove $dummy bossbar 1
execute if score $round countdown matches 0 if score $dummy bossbar matches ..199 run scoreboard players add $dummy bossbar 2
#ボスバーにスコアを代入
execute store result bossbar quiz:timer value run scoreboard players get $dummy bossbar
#ボスバーの色を動的に変更
execute if score $dummy bossbar matches 151.. run bossbar set quiz:timer color blue
execute if score $dummy bossbar matches 101..150 run bossbar set quiz:timer color green
execute if score $dummy bossbar matches 51..100 run bossbar set quiz:timer color yellow
execute if score $dummy bossbar matches ..50 run bossbar set quiz:timer color red
#ボスバーの名前を変更
execute unless data storage quiz: {cutin_ok:-2} run bossbar set quiz:timer name [{color:"light_purple",score:{name:"$remain",objective:questions}},{color:"light_purple",text:"/"},{color:"light_purple",score:{name:"$max",objective:questions}},{text:" | ",color:white,bold:false},{color:white,storage:"quiz:",nbt:question.text}]
execute if data storage quiz: {cutin_ok:-2} run bossbar set quiz:timer name [{color:"light_purple",text:"???"},{color:"light_purple",text:"/"},{color:"light_purple",score:{name:"$max",objective:questions}},{text:" | ",color:white,bold:false},{color:white,storage:"quiz:",nbt:question.text}]
#選択中の回答を表示
execute if score $round countdown matches 1.. as @a if entity @s[predicate=quizv2:on_red] run title @s actionbar [{color:white,text:"選択中：1. "},{color:red,storage:"quiz:",nbt:"question.choices[0]"}]
execute if score $round countdown matches 1.. as @a if entity @s[predicate=quizv2:on_blue] run title @s actionbar [{color:white,text:"選択中：2. "},{color:"aqua",storage:"quiz:",nbt:"question.choices[1]"}]
execute if score $round countdown matches 1.. as @a if entity @s[predicate=quizv2:on_yellow] run title @s actionbar [{color:white,text:"選択中：3. "},{color:yellow,storage:"quiz:",nbt:"question.choices[2]"}]
execute if score $round countdown matches 1.. as @a if entity @s[predicate=quizv2:on_green] run title @s actionbar [{color:white,text:"選択中：4. "},{color:green,storage:"quiz:",nbt:"question.choices[3]"}]
execute if score $round countdown matches 1.. as @a if entity @s[predicate=quizv2:on_air] run title @s actionbar ""
#シンキングタイム
scoreboard players remove $dummy thinktime 1
#タイトルの表示
execute if score $dummy thinktime matches 5 run title @a title {score:{name:"$dummy",objective:thinktime}}
execute if score $dummy thinktime matches 3 run title @a title {color:white,score:{name:"$dummy",objective:thinktime}}
execute if score $dummy thinktime matches 2 run title @a title {color:yellow,score:{name:"$dummy",objective:thinktime}}
execute if score $dummy thinktime matches 1 run title @a title {color:red,score:{name:"$dummy",objective:thinktime}}
#効果音
execute if score $dummy thinktime matches 5 as @a run function quizv2:effect/sound/game/count/
execute if score $dummy thinktime matches 1..3 as @a run function quizv2:effect/sound/game/count/
#1秒ごとに繰り返し
execute if score $dummy thinktime matches 1.. run schedule function quizv2:round/count 20t replace
execute unless score $dummy thinktime matches 1.. run function quizv2:round/answer
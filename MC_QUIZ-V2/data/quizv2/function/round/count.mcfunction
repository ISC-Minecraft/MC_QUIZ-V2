#シンキングタイム
scoreboard players remove $round countdown 1
#タイトルの表示
execute if score $round countdown matches 5 run title @a title {score:{name:"$round",objective:countdown}}
execute if score $round countdown matches 3 run title @a title {color:white,score:{name:"$round",objective:countdown}}
execute if score $round countdown matches 2 run title @a title {color:yellow,score:{name:"$round",objective:countdown}}
execute if score $round countdown matches 1 run title @a title {color:red,score:{name:"$round",objective:countdown}}
#効果音
execute if score $round countdown matches 5 as @a run function quizv2:effect/sound/game/count/
execute if score $round countdown matches 1..3 as @a run function quizv2:effect/sound/game/count/
#1秒ごとに繰り返し
execute if score $round countdown matches 1.. run schedule function quizv2:round/count 20t replace
execute unless score $round countdown matches 1.. run function quizv2:round/answer
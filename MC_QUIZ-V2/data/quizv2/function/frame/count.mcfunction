#ゲーム開始前のカウントダウン
#タイマーを減らす
scoreboard players remove $frame countdown 1
#タイトルの表示
execute if score $frame countdown matches 1.. run title @a title {score:{name:"$frame",objective:countdown}}
#効果音
execute if score $frame countdown matches 5 as @a run function quizv2:effect/sound/frame/count/
execute if score $frame countdown matches 1..3 as @a run function quizv2:effect/sound/frame/count/
#1秒後に呼び出し
execute if score $frame countdown matches 1.. run schedule function quizv2:frame/count 20t replace
execute unless score $frame countdown matches 1.. run function quizv2:frame/start with storage quiz:world
#タイトルの表示
title @a title [{text:"- スペシャル問題！ -",color:"light_purple"}]

#効果音
function quizv2:effect/sound/round/question_global/

#問題を取得
function quizv2:round/cutin/getquestion

#割り込み問題中
data modify storage quiz: cutin_ok set value -2

#経験値バーを隠す
execute as @a run function quizv2:effect/visual/xpbar

#問題を出題
execute as @a run function quizv2:round/question

#ボスバーに代入
scoreboard players set $dummy bossbar 200

#残り問題数を増やす
scoreboard players add $remain questions 1

#カウントダウンの開始
scoreboard players set $round countdown 11
function quizv2:round/count
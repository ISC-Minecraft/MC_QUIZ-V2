#タイトルの表示
title @a title [{text:"- スペシャル問題！ -",color:"light_purple"}]

#効果音
function quizv2:effect/sound/round/question_global/

#問題を取得
function quizv2:round/cutin/getquestion

#問題を出題
execute as @a run function quizv2:round/question

#ボスバーに代入
scoreboard players set $dummy bossbar 200

#カウントダウンの開始
scoreboard players set $round countdown 11
function quizv2:round/count
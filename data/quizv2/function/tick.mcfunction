##毎tick実行
#落下したプレイヤーをスペクテイターにする
gamemode spectator @a[predicate=quizv2:drop]

#問題再表示のクールタイム
execute as @a[scores={cooltime=1..}] run scoreboard players remove @s cooltime 1

#試合中以外は帽子を被らない
item replace entity @a[tag=!player,predicate=quizv2:golden_helmet] armor.head with air

#暗視の付与
effect give @a night_vision infinite 0 true

#毎tick実行の演出を呼び出し
function quizv2:effect/visual/
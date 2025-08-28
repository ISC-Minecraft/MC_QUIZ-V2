##問題を出題してcountに送る→countからanswerに送る→ここで問題数判定して0になるまで繰り返す

#タイトル表示時間の再設定
title @a times 0t 15t 5t

#移動制限を解除
item replace entity @a[tag=player] armor.head with golden_helmet[enchantments={"minecraft:binding_curse":1},tooltip_display={hide_tooltip:true},custom_data={movement_lock:false}]

#フィールドの再設置
function quizv2:round/fieldreset with storage quiz:world

#落下したプレイヤーをアドベンチャーに戻し、フィールド上にtp
function quizv2:round/tpdrop with storage quiz:world
gamemode adventure @a[gamemode=spectator,tag=player]

##  割り込みの抽選
    execute if predicate quizv2:cutin run return run function quizv2:round/cutin/

##  >>成功したらここまで

#タイトルの表示
title @a title [{text:"- 残り：",color:"white"},{color:"light_purple",score:{name:"$remain",objective:questions}},{color:"light_purple",text:"/"},{color:"light_purple",score:{name:"$max",objective:questions}},{text:" -",color:white}]

#効果音
function quizv2:effect/sound/round/question_global/

#問題を取得
function quizv2:round/roll with storage quiz:

#問題を出題
execute as @a run function quizv2:round/question

#ボスバーに代入
scoreboard players set $dummy bossbar 200

#カウントダウンの開始
scoreboard players set $round countdown 11
function quizv2:round/count
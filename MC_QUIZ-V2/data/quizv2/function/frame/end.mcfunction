##終了処理

#移動制限を解除
item replace entity @a[tag=player] armor.head with golden_helmet[enchantments={"minecraft:binding_curse":1},tooltip_display={hide_tooltip:true},custom_data={movement_lock:false}]

#落下したプレイヤーをアドベンチャーに戻す
gamemode adventure @a[gamemode=spectator]

#成績上位者の取得
function quizv2:frame/getmax

#メッセージの表示
tellraw @a "====================================================="
tellraw @a {text:"[ゲーム終了]",bold:true,color:"light_purple"}
execute if entity @a[tag=1st] run tellraw @a ""
execute if entity @a[tag=1st] run tellraw @a [{color:yellow,text:"優勝"},{color:white,text:"："},{color:white,selector:"@a[tag=1st]"}]
execute if entity @a[tag=1st] run tellraw @a [{color:yellow,score:{name:"$1st",objective:max}},{color:white,text:"ポイント"}]
execute if entity @a[tag=2nd] run tellraw @a [{color:green,text:"準優勝"},{color:white,text:"："},{color:white,selector:"@a[tag=2nd]"}]
execute if entity @a[tag=2nd] run tellraw @a [{color:green,score:{name:"$2nd",objective:max}},{color:white,text:"ポイント"}]
execute if entity @a[tag=3rd] run tellraw @a [{color:aqua,text:"3位"},{color:white,text:"："},{color:white,selector:"@a[tag=3rd]"}]
execute if entity @a[tag=3rd] run tellraw @a [{color:aqua,score:{name:"$3rd",objective:max}},{color:white,text:"ポイント"}]
tellraw @a "====================================================="

#タグの削除
tag @a remove player
tag @a remove spectator
tag @a remove 1st
tag @a remove 2nd
tag @a remove 3rd

#プレイヤーのtp
function quizv2:frame/endtp with storage quiz:world

#ボスバーの非表示
bossbar set quiz:timer visible false

#出題数のリセット
execute store result score $remain questions run scoreboard players get $max questions
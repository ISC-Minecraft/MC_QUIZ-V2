##手動で起動、参加者のtpやタグ振り等ゲーム開始前の処理

#ゲーム中ですよ
data modify storage quiz: play set value true

#タイトルの表示時間設定
title @a times 0t 15t 5t

#ボスバーの表示
bossbar set quiz:timer players @a

#辞書の読み込み
function quizv2:library/ with storage quiz:

#出題数のリセット
execute store result score $remain questions run scoreboard players get $max questions

#観戦を選んだプレイヤーにspectator、それ以外のプレイヤーにplayerのタグ付け
tag @a remove player
tag @a remove spectator
execute as @a if score @s mode matches 1 run tag @s add spectator
execute as @a unless score @s mode matches 1 run tag @s add player

#問題再表示用のアイテムを付与
execute as @a run function quizv2:round/item/give

#参加者に帽子を被せる
item replace entity @a[tag=player] armor.head with golden_helmet[enchantments={"minecraft:binding_curse":1},tooltip_display={hide_tooltip:true},custom_data={movement_lock:false}]

#フィールドの消去
$fill $(fx1) $(fy1) $(fz1) $(fx2) $(fy2) $(fz2) air

#参加者と観戦者の移動
execute as @a run team join nohit @s
$tp @a[tag=player] $(wx) $(wy) $(wz)
$tp @a[tag=spectator] $(sx) $(sy) $(sz)

#ランキングの再生成
scoreboard objectives remove ranking
scoreboard objectives add ranking dummy
scoreboard objectives setdisplay sidebar ranking
execute as @a[tag=player] run scoreboard players add @s ranking 0
scoreboard objectives remove correct
scoreboard objectives add correct dummy
scoreboard objectives setdisplay list correct
execute as @a[tag=player] run scoreboard players add @s correct 0
#経験値バーの操作
execute as @a run function quizv2:effect/visual/xpbar
#カウントダウンの開始
scoreboard players set $frame countdown 6
function quizv2:frame/count
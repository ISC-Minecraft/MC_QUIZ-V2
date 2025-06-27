#プレイヤーの移動を禁止
item replace entity @a[tag=player] armor.head with golden_helmet[attribute_modifiers=[{id:"jump_strength",type:"jump_strength",amount:-1,operation:"add_multiplied_base",slot:"head"},{id:"movement_speed",type:"movement_speed",amount:-1,operation:"add_multiplied_base",slot:"head"}],enchantments={"minecraft:binding_curse":1},tooltip_display={hide_tooltip:true},custom_data={movement_lock:true}]
#残り問題数を減らす
scoreboard players remove $remain questions 1
#参加人数と正解者数の取得
execute store result score $player bonus run execute if entity @a[tag=player]
execute store result score $bonus1 bonus run scoreboard players get $player bonus
scoreboard players set $bonus1rate bonus 4
scoreboard players operation $bonus1 bonus /= $bonus1rate bonus
scoreboard players set $on_red bonus 0
scoreboard players set $on_blue bonus 0
scoreboard players set $on_yellow bonus 0
scoreboard players set $on_green bonus 0
execute if entity @a[predicate=quizv2:on_red] store result score $on_red bonus run execute if entity @a[predicate=quizv2:on_red]
execute if entity @a[predicate=quizv2:on_blue] store result score $on_blue bonus run execute if entity @a[predicate=quizv2:on_blue]
execute if entity @a[predicate=quizv2:on_yellow] store result score $on_yellow bonus run execute if entity @a[predicate=quizv2:on_yellow]
execute if entity @a[predicate=quizv2:on_green] store result score $on_green bonus run execute if entity @a[predicate=quizv2:on_green]

#タイトルの表示
title @a times 0t 35t 5t
title @a title {color:"white",text:"- TIME UP! -"}
execute if data storage quiz: {question:{ans:1}} as @a[predicate=quizv2:on_red] run title @s subtitle {color:light_purple,text:"正解！"}
execute if data storage quiz: {question:{ans:2}} as @a[predicate=quizv2:on_blue] run title @s subtitle {color:light_purple,text:"正解！"}
execute if data storage quiz: {question:{ans:3}} as @a[predicate=quizv2:on_yellow] run title @s subtitle {color:light_purple,text:"正解！"}
execute if data storage quiz: {question:{ans:4}} as @a[predicate=quizv2:on_green] run title @s subtitle {color:light_purple,text:"正解！"}

#答え合わせ
tellraw @a "====================================================="
tellraw @a {text:"[答え合わせ]",bold:true,color:"light_purple"}
    execute if data storage quiz: {question:{ans:1}} run \
        tellraw @a [{text:"正解は「1. "},{"interpret":true,"nbt":"question.choices[0]","storage":"quiz:",color:"red"},{text:"でした!"}]
    execute if data storage quiz: {question:{ans:2}} run \
        tellraw @a [{text:"正解は「2. "},{"interpret":true,"nbt":"question.choices[1]","storage":"quiz:",color:"aqua"},{text:"でした!"}]
    execute if data storage quiz: {question:{ans:3}} run \
        tellraw @a [{text:"正解は「3. "},{"interpret":true,"nbt":"question.choices[2]","storage":"quiz:",color:"yellow"},{text:"でした!"}]
    execute if data storage quiz: {question:{ans:4}} run \
        tellraw @a [{text:"正解は「4. "},{"interpret":true,"nbt":"question.choices[3]","storage":"quiz:",color:"green"},{text:"でした!"}]
tellraw @a ""
    execute if data storage quiz: {question:{ans:1}} unless score $on_red bonus matches 0 run \
        tellraw @a [{text:"正解した "},{selector:"@a[predicate=quizv2:on_red]",color:"red"},{text:" にスコアが加算されます!"}]
    execute if data storage quiz: {question:{ans:1}} if score $on_red bonus matches 0 run \
        tellraw @a {text:"正解者はいませんでした!"}
    execute if data storage quiz: {question:{ans:2}} unless score $on_blue bonus matches 0 run \
        tellraw @a [{text:"正解した "},{selector:"@a[predicate=quizv2:on_blue]",color:"aqua"},{text:" にスコアが加算されます!"}]
    execute if data storage quiz: {question:{ans:2}} if score $on_blue bonus matches 0 run \
        tellraw @a {text:"正解者はいませんでした!"}
    execute if data storage quiz: {question:{ans:3}} unless score $on_yellow bonus matches 0 run \
        tellraw @a [{text:"正解した "},{selector:"@a[predicate=quizv2:on_yellow]",color:"yellow"},{text:" にスコアが加算されます!"}]
    execute if data storage quiz: {question:{ans:3}} if score $on_yellow bonus matches 0 run \
        tellraw @a {text:"正解者はいませんでした!"}
    execute if data storage quiz: {question:{ans:4}} unless score $on_green bonus matches 0 run \
        tellraw @a [{text:"正解した "},{selector:"@a[predicate=quizv2:on_green]",color:"green"},{text:" にスコアが加算されます!"}]
    execute if data storage quiz: {question:{ans:4}} if score $on_green bonus matches 0 run \
        tellraw @a {text:"正解者はいませんでした!"}
tellraw @a ""
execute if score $remain questions matches 1.. run tellraw @a {text:">>>次の問題は5秒後に出題されます"}
execute unless score $remain questions matches 1.. run tellraw @a {text:">>>5秒後にゲームを終了します"}
tellraw @a "====================================================="

#床の消去
function quizv2:round/fieldbreak with storage quiz:world

#効果音
function quizv2:effect/sound/round/answer/

#スコアの加算
#全体
execute if data storage quiz: {question:{ans:1}} as @a[predicate=quizv2:on_red] run scoreboard players add @s ranking 100
execute if data storage quiz: {question:{ans:2}} as @a[predicate=quizv2:on_blue] run scoreboard players add @s ranking 100
execute if data storage quiz: {question:{ans:3}} as @a[predicate=quizv2:on_yellow] run scoreboard players add @s ranking 100
execute if data storage quiz: {question:{ans:4}} as @a[predicate=quizv2:on_green] run scoreboard players add @s ranking 100
#正解者数が少ないとき
execute if data storage quiz: {question:{ans:1}} if score $on_red bonus <= $bonus1 bonus as @a[predicate=quizv2:on_red] run scoreboard players add @s ranking 100
execute if data storage quiz: {question:{ans:2}} if score $on_blue bonus <= $bonus1 bonus as @a[predicate=quizv2:on_blue] run scoreboard players add @s ranking 100
execute if data storage quiz: {question:{ans:3}} if score $on_yellow bonus <= $bonus1 bonus as @a[predicate=quizv2:on_yellow] run scoreboard players add @s ranking 100
execute if data storage quiz: {question:{ans:4}} if score $on_green bonus <= $bonus1 bonus as @a[predicate=quizv2:on_green] run scoreboard players add @s ranking 100
#正解者が１人のとき
execute if data storage quiz: {question:{ans:1}} if score $on_red bonus matches 1 as @a[predicate=quizv2:on_red] run scoreboard players add @s ranking 100
execute if data storage quiz: {question:{ans:2}} if score $on_blue bonus matches 1 as @a[predicate=quizv2:on_blue] run scoreboard players add @s ranking 100
execute if data storage quiz: {question:{ans:3}} if score $on_yellow bonus matches 1 as @a[predicate=quizv2:on_yellow] run scoreboard players add @s ranking 100
execute if data storage quiz: {question:{ans:4}} if score $on_green bonus matches 1 as @a[predicate=quizv2:on_green] run scoreboard players add @s ranking 100

#経験値バーの操作
execute as @a run function quizv2:effect/visual/xpbar
#残り問題数に応じて次の問題に行くか終了処理に行くかの分岐
execute if score $remain questions matches 1.. run schedule function quizv2:round/ 100t replace
execute unless score $remain questions matches 1.. run schedule function quizv2:frame/end 100t replace
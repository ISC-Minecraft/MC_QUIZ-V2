##1が観戦
execute if score @s mode matches 1 run scoreboard players set @s mode -1
execute unless score @s mode matches -1 run scoreboard players set @s mode 1
execute if score @s mode matches -1 run scoreboard players set @s mode 0

#通知
function quizv2:effect/sound/setting/modeswitch/
tellraw @s[scores={mode=0}] [{text:"参加者",color:red,bold:true},{text:"になりました",color:white,bold:false}]
tellraw @s[scores={mode=1}] [{text:"観戦者",color:aqua,bold:true},{text:"になりました",color:white,bold:false}]
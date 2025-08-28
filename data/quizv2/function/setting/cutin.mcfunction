##1が有効
execute if data storage quiz: {cutin_ok:1} run data modify storage quiz: cutin_ok set value -1
execute unless data storage quiz: {cutin_ok:-1} run data modify storage quiz: cutin_ok set value 1
execute if data storage quiz: {cutin_ok:-1} run data modify storage quiz: cutin_ok set value 0

#通知
function quizv2:effect/sound/setting/modeswitch/
execute if data storage quiz: {cutin_ok:1} run tellraw @s [{text:"割り込みを",color:white,bold:false},{text:"有効化",color:red,bold:true},{text:"しました",color:white,bold:false}]
execute unless data storage quiz: {cutin_ok:1} run tellraw @s [{text:"割り込みを",color:white,bold:false},{text:"無効化",color:aqua,bold:true},{text:"しました",color:white,bold:false}]
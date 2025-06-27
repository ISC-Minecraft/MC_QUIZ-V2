#バーの操作
xp set @s 129 levels
execute store result score $dummy1 xp run scoreboard players get $dummy questions
scoreboard players set $dummy2 xp 1000
scoreboard players operation $dummy1 xp *= $dummy2 xp
scoreboard players operation $dummy1 xp /= $dummy1 questions

xp set @s 0 points
scoreboard players operation $dummy xp = $dummy1 xp

execute if score $dummy xp matches 512.. run xp add @s 512 points
execute if score $dummy xp matches 512.. run scoreboard players remove $dummy xp 512
execute if score $dummy xp matches 256.. run xp add @s 256 points
execute if score $dummy xp matches 256.. run scoreboard players remove $dummy xp 256
execute if score $dummy xp matches 128.. run xp add @s 128 points
execute if score $dummy xp matches 128.. run scoreboard players remove $dummy xp 128
execute if score $dummy xp matches 64.. run xp add @s 64 points
execute if score $dummy xp matches 64.. run scoreboard players remove $dummy xp 64
execute if score $dummy xp matches 32.. run xp add @s 32 points
execute if score $dummy xp matches 32.. run scoreboard players remove $dummy xp 32
execute if score $dummy xp matches 16.. run xp add @s 16 points
execute if score $dummy xp matches 16.. run scoreboard players remove $dummy xp 16
execute if score $dummy xp matches 8.. run xp add @s 8 points
execute if score $dummy xp matches 8.. run scoreboard players remove $dummy xp 8
execute if score $dummy xp matches 4.. run xp add @s 4 points
execute if score $dummy xp matches 4.. run scoreboard players remove $dummy xp 4
execute if score $dummy xp matches 2.. run xp add @s 2 points
execute if score $dummy xp matches 2.. run scoreboard players remove $dummy xp 2
execute if score $dummy xp matches 1.. run xp add @s 1 points
execute if score $dummy xp matches 1.. run scoreboard players remove $dummy xp 1

scoreboard players reset $dummy xp

#レベルの操作
#rankingの値をレベルに代入
xp set @s 0 levels
scoreboard players operation $dummy xp = @s ranking

execute if score $dummy xp matches 1048576.. run xp add @s 1048576 levels
execute if score $dummy xp matches 1048576.. run scoreboard players remove $dummy xp 1048576
execute if score $dummy xp matches 524288.. run xp add @s 524288 levels
execute if score $dummy xp matches 524288.. run scoreboard players remove $dummy xp 524288
execute if score $dummy xp matches 262144.. run xp add @s 262144 levels
execute if score $dummy xp matches 262144.. run scoreboard players remove $dummy xp 262144
execute if score $dummy xp matches 131072.. run xp add @s 131072 levels
execute if score $dummy xp matches 131072.. run scoreboard players remove $dummy xp 131072
execute if score $dummy xp matches 65536.. run xp add @s 65536 levels
execute if score $dummy xp matches 65536.. run scoreboard players remove $dummy xp 65536
execute if score $dummy xp matches 32768.. run xp add @s 32768 levels
execute if score $dummy xp matches 32768.. run scoreboard players remove $dummy xp 32768
execute if score $dummy xp matches 16384.. run xp add @s 16384 levels
execute if score $dummy xp matches 16384.. run scoreboard players remove $dummy xp 16384
execute if score $dummy xp matches 8192.. run xp add @s 8192 levels
execute if score $dummy xp matches 8192.. run scoreboard players remove $dummy xp 8192
execute if score $dummy xp matches 4096.. run xp add @s 4096 levels
execute if score $dummy xp matches 4096.. run scoreboard players remove $dummy xp 4096
execute if score $dummy xp matches 2048.. run xp add @s 2048 levels
execute if score $dummy xp matches 2048.. run scoreboard players remove $dummy xp 2048
execute if score $dummy xp matches 1024.. run xp add @s 1024 levels
execute if score $dummy xp matches 1024.. run scoreboard players remove $dummy xp 1024
execute if score $dummy xp matches 512.. run xp add @s 512 levels
execute if score $dummy xp matches 512.. run scoreboard players remove $dummy xp 512
execute if score $dummy xp matches 256.. run xp add @s 256 levels
execute if score $dummy xp matches 256.. run scoreboard players remove $dummy xp 256
execute if score $dummy xp matches 128.. run xp add @s 128 levels
execute if score $dummy xp matches 128.. run scoreboard players remove $dummy xp 128
execute if score $dummy xp matches 64.. run xp add @s 64 levels
execute if score $dummy xp matches 64.. run scoreboard players remove $dummy xp 64
execute if score $dummy xp matches 32.. run xp add @s 32 levels
execute if score $dummy xp matches 32.. run scoreboard players remove $dummy xp 32
execute if score $dummy xp matches 16.. run xp add @s 16 levels
execute if score $dummy xp matches 16.. run scoreboard players remove $dummy xp 16
execute if score $dummy xp matches 8.. run xp add @s 8 levels
execute if score $dummy xp matches 8.. run scoreboard players remove $dummy xp 8
execute if score $dummy xp matches 4.. run xp add @s 4 levels
execute if score $dummy xp matches 4.. run scoreboard players remove $dummy xp 4
execute if score $dummy xp matches 2.. run xp add @s 2 levels
execute if score $dummy xp matches 2.. run scoreboard players remove $dummy xp 2
execute if score $dummy xp matches 1.. run xp add @s 1 levels
execute if score $dummy xp matches 1.. run scoreboard players remove $dummy xp 1

scoreboard players reset $dummy xp
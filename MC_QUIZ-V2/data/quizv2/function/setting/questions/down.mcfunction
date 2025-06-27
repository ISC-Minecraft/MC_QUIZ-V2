execute if score $max questions matches 2.. run scoreboard players remove $max questions 1
tellraw @s [{text:"出題数が"},{score:{name:"$max",objective:questions}},{text:"に設定されました"}]
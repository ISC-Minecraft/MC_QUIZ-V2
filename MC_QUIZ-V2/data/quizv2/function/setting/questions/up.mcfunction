execute store result score $dummy cnt if data storage quiz: game[]
execute if score $max questions < $dummy cnt run scoreboard players add $max questions 1
tellraw @s [{text:"出題数が"},{score:{name:"$max",objective:questions}},{text:"に設定されました"}]
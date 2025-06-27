execute store result score $cnt cnt if data storage quiz: game[]
execute if score $max questions < $cnt cnt run scoreboard players add $max questions 1
function quizv2:effect/sound/setting/questions/
tellraw @s [{text:"出題数が"},{score:{name:"$max",objective:questions}},{text:"に設定されました"}]
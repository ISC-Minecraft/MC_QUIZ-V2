execute if score $max questions <= $cnt cnt run scoreboard players add $max questions 1
tellraw @s [{text:"出題数が"},{score:{name:"$max",objective:questions}},{text:"に設定されました"}]
#読み込む辞書を変更し、出題数をデフォルトに設定
$data modify storage quiz: library set value $(lib)
function quizv2:library/ with storage quiz:
execute store result score $max questions run data get storage quiz: default
tellraw @s [{text:"出題数が"},{score:{name:"$max",objective:questions}},{text:"に設定されました"}]
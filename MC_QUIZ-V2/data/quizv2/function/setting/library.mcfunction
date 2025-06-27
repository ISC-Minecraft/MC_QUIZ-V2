#読み込む辞書を変更し、出題数をデフォルトに設定
$data modify storage quiz: library set value $(lib)
function quizv2:library/ with storage quiz:
execute store result score $remain questions if data storage quiz: default
execute store result score $max questions if data storage quiz: default
tellraw @s [{text:"出題数が"},{score:{name:"$remain",objective:questions}},{text:"に設定されました"}]
##libの値から辞書を決定し、gameにすべてのクイズを読み込み
#リセット
data modify storage quiz: game set value []
#読み込み
$function quizv2:library/$(lib)
#要素数の保存
execute store result score $cnt cnt if data storage quiz: game[]
#読み込み完了通知
tellraw @a [{text:"ライブラリ"},{storage:"quiz:",nbt:"lib"},{text:"から"},{score:{name:"$cnt",objective:cnt}},{text:"個の問題を読み込みました"}]
#要素数を1引いて配列の番号とする
scoreboard players operation $cnt cnt -= $1 cnt
execute store result storage quiz: cnt int 1 run scoreboard players get $cnt cnt
##選ばれた乱数を基にgameから問題を抜き出す
#残り問題数を減らす
scoreboard players remove $remain questions 1
#問題の取得
$data modify storage quiz: question set from storage quiz: game.[$(random)]
$data remove storage quiz: game.[$(random)]
#要素数の更新
execute store result score $cnt cnt if data storage quiz: game[]
scoreboard players operation $cnt cnt -= $1 cnt
execute store result storage quiz: cnt int 1 run scoreboard players get $cnt cnt
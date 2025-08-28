#問題組み立て用storageのリセット
data modify storage quiz: cutin.question set value {}
#正解の取得
scoreboard players operation $ans cutin = $max questions
scoreboard players operation $ans cutin -= $remain questions
scoreboard players add $ans cutin 1
#スコアボードに-1を入れる
scoreboard players set $tmp1 cutin -1
scoreboard players set $tmp2 cutin -1
scoreboard players set $tmp3 cutin -1
#storageに-1を入れる
data modify storage quiz: cutin.question.choices1 set value -1
data modify storage quiz: cutin.question.choices2 set value -1
data modify storage quiz: cutin.question.choices3 set value -1
data modify storage quiz: cutin.question.choices4 set value -1
#選択肢の範囲を設定
scoreboard players operation $tmp cutin = $ans cutin
scoreboard players add $tmp cutin 5
execute store result storage quiz: cutin.max int 1 run scoreboard players get $tmp cutin
scoreboard players remove $tmp cutin 10
#minを正の数にする
function quizv2:round/cutin/setmin
execute store result storage quiz: cutin.min int 1 run scoreboard players get $tmp cutin
#tmpに選択肢を入れる
scoreboard players set $name cutin 1
function quizv2:round/cutin/roll with storage quiz: cutin
#正解を抽選
execute store result storage quiz: cutin.question.ans int 1 run random value 1..4
#問題文を入力
data modify storage quiz: cutin.question.text set value "今、何問目？"
#cutin.question.ansに応じて選択肢に入れる
execute if data storage quiz: {cutin:{question:{ans:1}}} store result storage quiz: cutin.question.choices1 int 1 run scoreboard players get $ans cutin
execute if data storage quiz: {cutin:{question:{ans:2}}} store result storage quiz: cutin.question.choices2 int 1 run scoreboard players get $ans cutin
execute if data storage quiz: {cutin:{question:{ans:3}}} store result storage quiz: cutin.question.choices3 int 1 run scoreboard players get $ans cutin
execute if data storage quiz: {cutin:{question:{ans:4}}} store result storage quiz: cutin.question.choices4 int 1 run scoreboard players get $ans cutin
#残りの選択肢を入れる
scoreboard players set $ansin cutin 100
function quizv2:round/cutin/ansin
#問題を組み立て
function quizv2:round/cutin/qin with storage quiz: cutin.question
#要素数の更新
execute store result score $cnt cnt if data storage quiz: game[]
scoreboard players operation $cnt cnt -= $1 cnt
execute store result storage quiz: cnt int 1 run scoreboard players get $cnt cnt
#カウントダウン終了後のゲーム開始処理

#ボスバーの表示
bossbar set quiz:timer visible true
#フィールドをリセットし、プレイヤーをtp
function quizv2:round/fieldreset with storage quiz:world
$tp @a[tag=player] $(px) $(py) $(pz)

#問題を出題
function quizv2:round/
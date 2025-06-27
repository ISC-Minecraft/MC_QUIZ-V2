##読み込まれたときに実行
#ゲームルール設定
gamerule doDaylightCycle false
gamerule keepInventory true
gamerule doWeatherCycle false
#スコアボードの作成
scoreboard objectives add cooltime dummy
scoreboard objectives add mode dummy
scoreboard objectives add questions dummy
scoreboard objectives add cnt dummy
scoreboard players set $1 cnt 1
scoreboard objectives add bossbar dummy
scoreboard objectives add thinktime dummy
scoreboard objectives add bonus dummy
#ボスバーの作成と設定
bossbar add quiz:timer timer
bossbar set quiz:timer max 200
bossbar set quiz:timer style notched_10
bossbar set quiz:timer visible false
#チームの作成
team add nohit
team modify nohit collisionRule never
#デフォルトライブラリの設定
function quizv2:setting/library {lib:0}
#読み込み完了通知
say reloaded!
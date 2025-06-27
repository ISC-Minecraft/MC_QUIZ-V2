#実行者にもう一度問題を表示する
execute unless score @s cooltime matches 1.. run function quizv2:round/question
#効果音
execute unless score @s cooltime matches 1.. run function quizv2:effect/sound/round/question_personal/
#クールタイムの設定
execute unless entity @s[scores={cooltime=1..}] run scoreboard players set @s cooltime 20
#進捗の剥奪
advancement revoke @s only quizv2:question
execute as @a at @s run playsound entity.firework_rocket.blast master @s ~ ~ ~ 1 1 1
function quizv2:effect/sound/round/answer/se
schedule function quizv2:effect/sound/round/answer/se 20t append
schedule function quizv2:effect/sound/round/answer/se 40t append
schedule function quizv2:effect/sound/round/answer/se 60t append
schedule function quizv2:effect/sound/round/answer/se 80t append

function quizv2:effect/sound/round/answer/1
schedule function quizv2:effect/sound/round/answer/2 2t append
schedule function quizv2:effect/sound/round/answer/3 4t append
schedule function quizv2:effect/sound/round/answer/4 6t append
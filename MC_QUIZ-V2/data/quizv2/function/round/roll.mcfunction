#0~longで振った乱数をrandomに格納し、その乱数を基にselectを実行
$execute store result storage quiz: random int 1 run random value 0..$(cnt)
function quizv2:round/select with storage quiz:
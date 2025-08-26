#問題を出題
tellraw @s "====================================================="
tellraw @s {text:"[問題]",bold:true,color:"light_purple"}
tellraw @s {"interpret":true,"nbt":"question.text","storage":"quiz:"}
tellraw @s {text:"[選択肢]",bold:true,color:"light_purple"}
tellraw @s [{text:"1. "},{"interpret":true,"nbt":"question.choices[0]","storage":"quiz:",color:"red"}]
tellraw @s [{text:"2. "},{"interpret":true,"nbt":"question.choices[1]","storage":"quiz:",color:"aqua"}]
tellraw @s [{text:"3. "},{"interpret":true,"nbt":"question.choices[2]","storage":"quiz:",color:"yellow"}]
tellraw @s [{text:"4. "},{"interpret":true,"nbt":"question.choices[3]","storage":"quiz:",color:"green"}]
tellraw @s "====================================================="
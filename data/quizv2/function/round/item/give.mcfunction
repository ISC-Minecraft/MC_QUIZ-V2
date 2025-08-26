#手持ちをリセットしてからアイテムを付与
clear @s
item replace entity @s hotbar.8 with command_block[item_model="gold_ingot",custom_data={question:true},consumable={consume_seconds:2147483647,animation:"none",sound:"intentionally_empty",has_consume_particles:false},custom_name={"bold":true,"color":"yellow","italic":false,"text":"問題を再表示"},lore=[{"bold":false,"color":"green","italic":false,"text":"右クリックで使用"}]]
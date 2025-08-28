$scoreboard players operation $choices$(tmp) cutin = $ans cutin

execute if data storage quiz: {cutin:{tmp:0}} run scoreboard players operation $choices1 cutin = $tmp1 cutin
execute if data storage quiz: {cutin:{tmp:0}} run scoreboard players operation $choices2 cutin = $tmp2 cutin
execute if data storage quiz: {cutin:{tmp:0}} run scoreboard players operation $choices3 cutin = $tmp3 cutin

execute if data storage quiz: {cutin:{tmp:1}} run scoreboard players operation $choices0 cutin = $tmp1 cutin
execute if data storage quiz: {cutin:{tmp:1}} run scoreboard players operation $choices2 cutin = $tmp2 cutin
execute if data storage quiz: {cutin:{tmp:1}} run scoreboard players operation $choices3 cutin = $tmp3 cutin

execute if data storage quiz: {cutin:{tmp:2}} run scoreboard players operation $choices1 cutin = $tmp1 cutin
execute if data storage quiz: {cutin:{tmp:2}} run scoreboard players operation $choices0 cutin = $tmp2 cutin
execute if data storage quiz: {cutin:{tmp:2}} run scoreboard players operation $choices3 cutin = $tmp3 cutin

execute if data storage quiz: {cutin:{tmp:3}} run scoreboard players operation $choices1 cutin = $tmp1 cutin
execute if data storage quiz: {cutin:{tmp:3}} run scoreboard players operation $choices2 cutin = $tmp2 cutin
execute if data storage quiz: {cutin:{tmp:3}} run scoreboard players operation $choices0 cutin = $tmp3 cutin
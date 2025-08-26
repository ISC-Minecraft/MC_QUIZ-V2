#正解に応じて足場を消す
$execute unless data storage quiz: {question:{ans:1}} run fill $(fx1) $(fy1) $(fz1) $(fx2) $(fy2) $(fz2) air replace red_wool
$execute unless data storage quiz: {question:{ans:2}} run fill $(fx1) $(fy1) $(fz1) $(fx2) $(fy2) $(fz2) air replace light_blue_wool
$execute unless data storage quiz: {question:{ans:3}} run fill $(fx1) $(fy1) $(fz1) $(fx2) $(fy2) $(fz2) air replace yellow_wool
$execute unless data storage quiz: {question:{ans:4}} run fill $(fx1) $(fy1) $(fz1) $(fx2) $(fy2) $(fz2) air replace lime_wool
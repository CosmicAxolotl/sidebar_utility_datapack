
tellraw @s [{"text":" ╞════ ","color":"dark_gray"},{"text":"[-] Removing excess lines...","color":"dark_gray"}]

execute unless score entries.count ca.sidebar matches ..15 run return 15
$scoreboard players reset $(line_15) ca.sidebar.$(id)
execute unless score entries.count ca.sidebar matches ..14 run return 14
$scoreboard players reset $(line_14) ca.sidebar.$(id)
execute unless score entries.count ca.sidebar matches ..13 run return 13
$scoreboard players reset $(line_13) ca.sidebar.$(id)
execute unless score entries.count ca.sidebar matches ..12 run return 13
$scoreboard players reset $(line_12) ca.sidebar.$(id)
execute unless score entries.count ca.sidebar matches ..11 run return 12
$scoreboard players reset $(line_11) ca.sidebar.$(id)
execute unless score entries.count ca.sidebar matches ..10 run return 11
$scoreboard players reset $(line_10) ca.sidebar.$(id)
execute unless score entries.count ca.sidebar matches ..9 run return 10
$scoreboard players reset $(line_9) ca.sidebar.$(id)
execute unless score entries.count ca.sidebar matches ..8 run return 9
$scoreboard players reset $(line_8) ca.sidebar.$(id)
execute unless score entries.count ca.sidebar matches ..7 run return 8
$scoreboard players reset $(line_7) ca.sidebar.$(id)
execute unless score entries.count ca.sidebar matches ..6 run return 7
$scoreboard players reset $(line_6) ca.sidebar.$(id)
execute unless score entries.count ca.sidebar matches ..5 run return 6
$scoreboard players reset $(line_5) ca.sidebar.$(id)
execute unless score entries.count ca.sidebar matches ..4 run return 5
$scoreboard players reset $(line_4) ca.sidebar.$(id)
execute unless score entries.count ca.sidebar matches ..3 run return 4
$scoreboard players reset $(line_3) ca.sidebar.$(id)
execute unless score entries.count ca.sidebar matches ..2 run return 3
$scoreboard players reset $(line_2) ca.sidebar.$(id)
execute unless score entries.count ca.sidebar matches ..1 run return 2
$scoreboard players reset $(line_1) ca.sidebar.$(id)
execute unless score entries.count ca.sidebar matches ..0 run return 1
$scoreboard players reset $(line_0) ca.sidebar.$(id)

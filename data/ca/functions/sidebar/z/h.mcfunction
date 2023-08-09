
tellraw @s [{"text":" ╞════ ","color":"dark_gray"},{"text":"[+] Adding missing lines...","color":"dark_gray"}]

execute unless score entries.count ca.sidebar matches 1.. run return 0
$scoreboard players set $(line_0) ca.sidebar.$(id) 0
execute unless score entries.count ca.sidebar matches 2.. run return 1
$scoreboard players set $(line_1) ca.sidebar.$(id) 0
execute unless score entries.count ca.sidebar matches 3.. run return 2
$scoreboard players set $(line_2) ca.sidebar.$(id) 0
execute unless score entries.count ca.sidebar matches 4.. run return 3
$scoreboard players set $(line_3) ca.sidebar.$(id) 0
execute unless score entries.count ca.sidebar matches 5.. run return 4
$scoreboard players set $(line_4) ca.sidebar.$(id) 0
execute unless score entries.count ca.sidebar matches 6.. run return 5
$scoreboard players set $(line_5) ca.sidebar.$(id) 0
execute unless score entries.count ca.sidebar matches 7.. run return 6
$scoreboard players set $(line_6) ca.sidebar.$(id) 0
execute unless score entries.count ca.sidebar matches 8.. run return 7
$scoreboard players set $(line_7) ca.sidebar.$(id) 0
execute unless score entries.count ca.sidebar matches 9.. run return 8
$scoreboard players set $(line_8) ca.sidebar.$(id) 0
execute unless score entries.count ca.sidebar matches 10.. run return 9
$scoreboard players set $(line_9) ca.sidebar.$(id) 0
execute unless score entries.count ca.sidebar matches 11.. run return 10
$scoreboard players set $(line_10) ca.sidebar.$(id) 0
execute unless score entries.count ca.sidebar matches 12.. run return 11
$scoreboard players set $(line_11) ca.sidebar.$(id) 0
execute unless score entries.count ca.sidebar matches 13.. run return 12
$scoreboard players set $(line_12) ca.sidebar.$(id) 0
execute unless score entries.count ca.sidebar matches 14.. run return 13
$scoreboard players set $(line_13) ca.sidebar.$(id) 0
execute unless score entries.count ca.sidebar matches 15.. run return 14
$scoreboard players set $(line_14) ca.sidebar.$(id) 0
execute unless score entries.count ca.sidebar matches 16.. run return 15
$scoreboard players set $(line_15) ca.sidebar.$(id) 0

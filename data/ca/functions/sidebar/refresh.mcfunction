
# arguments: {id:"example"}

execute at @p run summon minecraft:text_display ~ ~ ~ {alignment:"center",UUID:[I;847584,680487345,27365234,16812934]}
$execute as 000ceee0-288f-69b1-01a1-8f7201008b86 run function ca:sidebar/zzzzzzzz/line with storage ca:sidebar/$(id)
$tellraw @s [{"text":"","color":"green"},"[","$(id)","] sidebar was refreshed."]


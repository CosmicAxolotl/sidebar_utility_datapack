
# arguments: {id:"example"}

$execute summon minecraft:text_display run function ca:sidebar/zzzzzzzz/line with storage ca:sidebar/$(id)
$tellraw @s [{"text":"","color":"green"},"[","$(id)","] sidebar was refreshed."]


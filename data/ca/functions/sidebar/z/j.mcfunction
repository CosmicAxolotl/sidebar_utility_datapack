
scoreboard players set if ca.sidebar 0

$data modify storage ca: input set value {id:"$(id)",line:$(line),fix:"prefix"}
function ca:sidebar/z/k with storage ca: input

scoreboard players set if ca.sidebar 0
$execute store success score if ca.sidebar unless data storage ca: tmp.lines[$(line)][1] run tellraw @s [{"text":" ╞════ ","color":"dark_gray"},{"text":"[!] Suffix text for line $(line) not found, default: empty.","color":"green"}]
$execute if score if ca.sidebar matches 1 run team modify ca.sidebar.$(id).$(line) suffix ""
execute if score if ca.sidebar matches 1 run return 1

$data modify storage ca: input set value {id:"$(id)",line:"$(line)",fix:"suffix"}

function ca:sidebar/z/k with storage ca: input

return 2

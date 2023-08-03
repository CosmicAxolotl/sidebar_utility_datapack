

# arguments: {id:"example"}

$scoreboard players operation lines ca.sidebar = ca.sidebar.$(id).lines ca.sidebar
$data modify storage ca:tmp id set value "$(id)"

execute if score lines ca.sidebar matches 1.. run function ca:sidebar/zzzzzzzz/line/logic/0 with storage ca:tmp
execute if score lines ca.sidebar matches 2.. run function ca:sidebar/zzzzzzzz/line/logic/1 with storage ca:tmp
execute if score lines ca.sidebar matches 3.. run function ca:sidebar/zzzzzzzz/line/logic/2 with storage ca:tmp
execute if score lines ca.sidebar matches 4.. run function ca:sidebar/zzzzzzzz/line/logic/3 with storage ca:tmp
execute if score lines ca.sidebar matches 5.. run function ca:sidebar/zzzzzzzz/line/logic/4 with storage ca:tmp
execute if score lines ca.sidebar matches 6.. run function ca:sidebar/zzzzzzzz/line/logic/5 with storage ca:tmp
execute if score lines ca.sidebar matches 7.. run function ca:sidebar/zzzzzzzz/line/logic/6 with storage ca:tmp
execute if score lines ca.sidebar matches 8.. run function ca:sidebar/zzzzzzzz/line/logic/7 with storage ca:tmp
execute if score lines ca.sidebar matches 9.. run function ca:sidebar/zzzzzzzz/line/logic/8 with storage ca:tmp
execute if score lines ca.sidebar matches 10.. run function ca:sidebar/zzzzzzzz/line/logic/9 with storage ca:tmp
execute if score lines ca.sidebar matches 11.. run function ca:sidebar/zzzzzzzz/line/logic/10 with storage ca:tmp
execute if score lines ca.sidebar matches 12.. run function ca:sidebar/zzzzzzzz/line/logic/11 with storage ca:tmp
execute if score lines ca.sidebar matches 13.. run function ca:sidebar/zzzzzzzz/line/logic/12 with storage ca:tmp
execute if score lines ca.sidebar matches 14.. run function ca:sidebar/zzzzzzzz/line/logic/13 with storage ca:tmp
execute if score lines ca.sidebar matches 15.. run function ca:sidebar/zzzzzzzz/line/logic/14 with storage ca:tmp
execute if score lines ca.sidebar matches 16.. run function ca:sidebar/zzzzzzzz/line/logic/15 with storage ca:tmp

kill @s

$execute unless score ca.sidebar.$(id).refresh_set ca.sidebar matches 1 run return 0

function ca:sidebar/zzzzzzzz/line/show with storage ca:tmp
function ca:sidebar/zzzzzzzz/line/hide with storage ca:tmp

$scoreboard players reset ca.sidebar.$(id).refresh_set ca.sidebar

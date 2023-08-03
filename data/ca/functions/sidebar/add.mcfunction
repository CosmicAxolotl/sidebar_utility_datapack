


# arguments: {id:"example",display_name:'{"text":"example"}'}



$team add ca.sidebar.$(id).0
$team add ca.sidebar.$(id).1
$team add ca.sidebar.$(id).2
$team add ca.sidebar.$(id).3
$team add ca.sidebar.$(id).4
$team add ca.sidebar.$(id).5
$team add ca.sidebar.$(id).6
$team add ca.sidebar.$(id).7
$team add ca.sidebar.$(id).8
$team add ca.sidebar.$(id).9
$team add ca.sidebar.$(id).10
$team add ca.sidebar.$(id).11
$team add ca.sidebar.$(id).12
$team add ca.sidebar.$(id).13
$team add ca.sidebar.$(id).14
$team add ca.sidebar.$(id).15

$scoreboard objectives add ca.sidebar.$(id) trigger $(display_name)

$scoreboard players set ‌ ca.sidebar.$(id) 0
$scoreboard players set ‌‌ ca.sidebar.$(id) 0
$scoreboard players set ‌‌‌ ca.sidebar.$(id) 0
$scoreboard players set ‌‌‌‌ ca.sidebar.$(id) 0
$scoreboard players set ‌‌‌‌‌ ca.sidebar.$(id) 0
$scoreboard players set ‌‌‌‌‌‌ ca.sidebar.$(id) 0
$scoreboard players set ‌‌‌‌‌‌‌ ca.sidebar.$(id) 0
$scoreboard players set ‌‌‌‌‌‌‌‌ ca.sidebar.$(id) 0
$scoreboard players set ‌‌‌‌‌‌‌‌‌ ca.sidebar.$(id) 0
$scoreboard players set ‌‌‌‌‌‌‌‌‌‌ ca.sidebar.$(id) 0
$scoreboard players set ‌‌‌‌‌‌‌‌‌‌‌ ca.sidebar.$(id) 0
$scoreboard players set ‌‌‌‌‌‌‌‌‌‌‌‌ ca.sidebar.$(id) 0
$scoreboard players set ‌‌‌‌‌‌‌‌‌‌‌‌‌ ca.sidebar.$(id) 0
$scoreboard players set ‌‌‌‌‌‌‌‌‌‌‌‌‌‌ ca.sidebar.$(id) 0
$scoreboard players set ‌‌‌‌‌‌‌‌‌‌‌‌‌‌‌ ca.sidebar.$(id) 0
$scoreboard players set ‌‌‌‌‌‌‌‌‌‌‌‌‌‌‌‌ ca.sidebar.$(id) 0


$team join ca.sidebar.$(id).0 ‌
$team join ca.sidebar.$(id).1 ‌‌
$team join ca.sidebar.$(id).2 ‌‌‌
$team join ca.sidebar.$(id).3 ‌‌‌‌
$team join ca.sidebar.$(id).4 ‌‌‌‌‌
$team join ca.sidebar.$(id).5 ‌‌‌‌‌‌
$team join ca.sidebar.$(id).6 ‌‌‌‌‌‌‌
$team join ca.sidebar.$(id).7 ‌‌‌‌‌‌‌‌
$team join ca.sidebar.$(id).8 ‌‌‌‌‌‌‌‌‌
$team join ca.sidebar.$(id).9 ‌‌‌‌‌‌‌‌‌‌
$team join ca.sidebar.$(id).10 ‌‌‌‌‌‌‌‌‌‌‌
$team join ca.sidebar.$(id).11 ‌‌‌‌‌‌‌‌‌‌‌‌
$team join ca.sidebar.$(id).12 ‌‌‌‌‌‌‌‌‌‌‌‌‌
$team join ca.sidebar.$(id).13 ‌‌‌‌‌‌‌‌‌‌‌‌‌‌
$team join ca.sidebar.$(id).14 ‌‌‌‌‌‌‌‌‌‌‌‌‌‌‌
$team join ca.sidebar.$(id).15 ‌‌‌‌‌‌‌‌‌‌‌‌‌‌‌‌

scoreboard objectives add ca.sidebar trigger

$data merge storage ca:sidebar/$(id) {id:"$(id)"}

$tellraw @s [{"text":"","color":"green"},"[",$(id),"] sidebar was created successfully."]



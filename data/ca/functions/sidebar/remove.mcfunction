


# arguments: {id:"example"}



$team remove ca.sidebar.$(id).0
$team remove ca.sidebar.$(id).1
$team remove ca.sidebar.$(id).2
$team remove ca.sidebar.$(id).3
$team remove ca.sidebar.$(id).4
$team remove ca.sidebar.$(id).5
$team remove ca.sidebar.$(id).6
$team remove ca.sidebar.$(id).7
$team remove ca.sidebar.$(id).8
$team remove ca.sidebar.$(id).9
$team remove ca.sidebar.$(id).10
$team remove ca.sidebar.$(id).11
$team remove ca.sidebar.$(id).12
$team remove ca.sidebar.$(id).13
$team remove ca.sidebar.$(id).14
$team remove ca.sidebar.$(id).15

$scoreboard objectives remove ca.sidebar.$(id)

$data remove storage ca:sidebar/$(id) {}

$scoreboard players reset ca.sidebar.$(id).lines ca.sidebar

$tellraw @s [{"text":"","color":"green"},"[","$(id)","] sidebar was removed successfully."]



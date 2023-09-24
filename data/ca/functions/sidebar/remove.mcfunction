

# ARGS: {
#    id: "<identifier>"
# }

tellraw @s [[{"text":"[SU]: ","color":"#2AFFAD"}],{"text":"Removing sidebar...","color":"gray"}]

$execute store success score if ca.sidebar run data get storage ca:sidebar registry[{id:{key:"$(id)"}}]

execute if score if ca.sidebar matches 0 run tellraw @s [[{"text":"[SU]: ","color":"red"}],{"text":"FATAL ERROR: That ID doesn't exist in the registry!","color":"red"}]
execute if score if ca.sidebar matches 0 run return 1

$execute store result score last_id ca.sidebar run data get storage ca:sidebar registry[{id:{key:"$(id)"}}].id.uuid

$team remove ca.sidebar.$(id).0
$team remove ca.sidebar.$(id).1
$team remove ca.sidebar.$(id).2
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

$scoreboard objectives remove ca.sidebar.$(id)

$data remove storage ca:sidebar registry[{id:{key:"$(id)"}}]

tellraw @s [{"text":" ╘═ ","color":"dark_gray"},{"text":"[✔] Function end.","color":"#20F540"}]

return 0

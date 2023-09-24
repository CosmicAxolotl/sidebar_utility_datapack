

# ARGS: {
#    id: "<identifier>",
#    display_name: <JSON text component>
# }


scoreboard objectives add ca.sidebar trigger

tellraw @s [[{"text":"[SU]: ","color":"#2AFFAD"}],{"text":"Creating sidebar...","color":"gray"}]

$execute store success score if ca.sidebar run data get storage ca:sidebar registry[{id:{key:"$(id)"}}]

execute if score if ca.sidebar matches 1 run tellraw @s [[{"text":"[SU]: ","color":"red"}],{"text":"FATAL ERROR: That ID is already in use!","color":"red"}]
execute if score if ca.sidebar matches 1 run return 1

$data modify storage ca: tmp set value {id:{key:"$(id)"},display_name:'$(display_name)'}

data modify storage ca: tmp.lines set value []


data modify storage ca: input set value {}
execute store result storage ca: input.id int 1 store result score last_id ca.sidebar run scoreboard players get last_id ca.sidebar
function ca:sidebar/z/a with storage ca: input


function ca:sidebar/z/c

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

data modify storage ca: input set value {}

data modify storage ca: input merge from storage ca: tmp.line_scoreholders
data modify storage ca: input merge from storage ca: tmp.id
data remove storage ca: input.uuid

function ca:sidebar/z/e with storage ca: input


data modify storage ca: input set value {}
data modify storage ca: input.id set from storage ca: tmp.id.uuid

data modify storage ca:sidebar registry append from storage ca: tmp

function ca:sidebar/refresh with storage ca: input.id

tellraw @s [{"text":" ╘═ ","color":"dark_gray"},{"text":"[✔] Function end.","color":"#20F540"}]

return 0

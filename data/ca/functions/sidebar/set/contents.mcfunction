
# arguments: {id:"example",lines:[<A list of JSON text components>],complex;[B;<array of byte>]}

$data merge storage ca:tmp {id:"$(id)",lines:$(lines),complex:$(complex)}
execute store result score lines ca.sidebar if data storage ca:tmp lines[]

execute unless score lines ca.sidebar matches 1.. run tellraw @s [{"text":"The lines list is empty!"}]
execute unless score lines ca.sidebar matches 1.. run return -1

$scoreboard players operation ca.sidebar.$(id).lines ca.sidebar = lines ca.sidebar
$scoreboard players set ca.sidebar.$(id).refresh_set ca.sidebar 1

$data modify storage ca:sidebar/$(id) lines set value $(lines)
$data modify storage ca:sidebar/$(id) complex set value $(complex)

function ca:sidebar/refresh with storage ca:tmp


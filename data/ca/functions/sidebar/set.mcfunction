
# arguments: {id:"example",lines:[<A list of JSON text components>]}

$data modify storage ca:tmp lines set value $(lines)
$execute store result score ca.sidebar.$(id).lines ca.sidebar if data storage ca:tmp lines[]

$execute unless score ca.sidebar.$(id).lines ca.sidebar matches 1.. run tellraw @s [{"text":"The lines list is empty!"}]
$execute unless score ca.sidebar.$(id).lines ca.sidebar matches 1.. run return -1

$execute if score ca.sidebar.$(id).lines ca.sidebar matches 1.. run data modify storage ca:sidebar/$(id) lines set value $(lines)
$function ca:sidebar/refresh {id:"$(id)"}

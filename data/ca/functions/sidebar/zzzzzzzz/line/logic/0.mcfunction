
# arguments: {id:"example"}

$execute store result score complex ca.sidebar run data get storage ca:sidebar/$(id) complex[0]
$execute if score complex ca.sidebar matches 0 run data modify storage ca:tmp text set from storage ca:sidebar/$(id) lines[0]

$execute if score complex ca.sidebar matches 1 run data modify entity @s text set from storage ca:sidebar/$(id) lines[0]
execute if score complex ca.sidebar matches 1 run data modify storage ca:tmp text set from entity @s text

data modify storage ca:tmp line_to_refresh set value 0

function ca:sidebar/zzzzzzzz/line/team_modify with storage ca:tmp

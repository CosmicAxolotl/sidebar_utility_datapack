
# arguments: {id:"example",line_to_refresh:X}

$data modify entity @s text set from storage ca:sidebar/$(id) lines[$(line_to_refresh)]

$data modify storage ca:tmp id set value "$(id)"
data modify storage ca:tmp text set from entity @s text
$data modify storage ca:tmp line_to_refresh set value $(line_to_refresh)

function ca:sidebar/zzzzzzzz/line/team_modify with storage ca:tmp

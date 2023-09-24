

$data modify storage ca:sidebar registry[{id:{key:"$(id)"}}].lines set from storage ca: args.contents.lines
$data modify storage ca: tmp set from storage ca:sidebar registry[{id:{key:"$(id)"}}]

$scoreboard players operation ca.sidebar.old_lines_count ca.sidebar = ca.sidebar.$(id).lines ca.sidebar

data modify storage ca: input set value {}
data modify storage ca: input merge from storage ca: tmp.line_scoreholders
data modify storage ca: input.id set from storage ca: tmp.id.key

execute if score ca.sidebar.old_lines_count ca.sidebar < entries.count ca.sidebar run function ca:sidebar/z/h with storage ca: input
execute if score ca.sidebar.old_lines_count ca.sidebar > entries.count ca.sidebar run function ca:sidebar/z/i with storage ca: input

$scoreboard players operation ca.sidebar.$(id).lines ca.sidebar = entries.count ca.sidebar

$function ca:sidebar/z/g/$(lines) {id:"$(id)"}


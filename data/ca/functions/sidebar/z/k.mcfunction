

$data modify storage ca: input set value {id:"$(id)",fix:"$(fix)",line:$(line)}

tellraw @s [{"text":" ╞════ ","color":"dark_gray"},[{"text":"[P] Attempting to edit line ","color":"gray"},{"nbt":"input.line","storage":"ca:"}," (",{"nbt":"input.fix","storage":"ca:"},")"]]


$execute if data storage ca: {input:{fix:"prefix"}} run data modify storage ca: input.text set from storage ca: args.contents.lines[$(line)][0]
$execute if data storage ca: {input:{fix:"suffix"}} run data modify storage ca: input.text set from storage ca: args.contents.lines[$(line)][1]

execute store success score if ca.sidebar if data storage ca: input.text.complex
execute if score if ca.sidebar matches 0 run tellraw @s [{"text":" ╞══════ ","color":"dark_gray"},{"text":"[!] Complex flag is not defined, defaults to 0b","color":"#FFCA2A"}]

execute store result score complex ca.sidebar run data get storage ca: input.text.complex
execute store success score if ca.sidebar if score complex ca.sidebar matches 0..1
execute if score if ca.sidebar matches 0 run tellraw @s [{"text":" ╞══════ ","color":"dark_gray"},{"text":"[!] Complex flag out of range (0..1b), default: 0b","color":"#FFCA2A"}]
execute if score if ca.sidebar matches 0 run scoreboard players set complex ca.sidebar 0



execute if score complex ca.sidebar matches 1 run tellraw @s [{"text":" ╞══════ ","color":"dark_gray"},{"text":"[⏩] Skipping complex element.","color":"#20F540"}]
execute if score complex ca.sidebar matches 1 run return 1

$execute if data storage ca: {input:{fix:"prefix"}} run data modify storage ca: input.text set from storage ca: args.contents.lines[$(line)][0].text
$execute if data storage ca: {input:{fix:"suffix"}} run data modify storage ca: input.text set from storage ca: args.contents.lines[$(line)][1].text


execute store result score if ca.sidebar run function ca:sidebar/z/l with storage ca: input
execute unless score if ca.sidebar matches 4 run tellraw @s [{"text":" ╞══════ ","color":"dark_gray"},{"text":"[!] The line couldn't be modified. Perhaps it is an issue with escaping.","color":"#F8A500"}]


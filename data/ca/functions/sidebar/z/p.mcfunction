

$data modify storage ca: input set value {id:"$(id)",fix:"$(fix)",line:$(line)}

tellraw @a[tag=tmp,limit=1] [{"text":" ╞════ ","color":"dark_gray"},[{"text":"[P] Attempting to edit line ","color":"gray"},{"nbt":"input.line","storage":"ca:"}," (",{"nbt":"input.fix","storage":"ca:"},")"]]


$execute if data storage ca: {input:{fix:"prefix"}} run data modify storage ca: input.text set from storage ca:sidebar registry[{id:{key:"$(id)"}}].lines[$(line)][0]
$execute if data storage ca: {input:{fix:"suffix"}} run data modify storage ca: input.text set from storage ca:sidebar registry[{id:{key:"$(id)"}}].lines[$(line)][1]

execute store result score complex ca.sidebar run data get storage ca: input.text.complex

execute if score complex ca.sidebar matches 0 run tellraw @a[tag=tmp,limit=1] [{"text":" ╞══════ ","color":"dark_gray"},{"text":"[⏩] Skipping simple element.","color":"#20F540"}]
execute if score complex ca.sidebar matches 0 run return 1


$execute if data storage ca: {input:{fix:"prefix"}} run data modify entity @s text set from storage ca:sidebar registry[{id:{key:"$(id)"}}].lines[$(line)][0].text
$execute if data storage ca: {input:{fix:"suffix"}} run data modify entity @s text set from storage ca:sidebar registry[{id:{key:"$(id)"}}].lines[$(line)][1].text

data modify storage ca: input.text set from entity @s text

execute store result score if ca.sidebar run function ca:sidebar/z/l with storage ca: input


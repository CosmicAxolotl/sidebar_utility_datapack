

# ARGS: {
#    id: "<identifier>",
# }


$execute store success score if ca.sidebar run data get storage ca:sidebar registry[{id:{key:"$(id)"}}]
execute if score if ca.sidebar matches 0 run tellraw @s [[{"text":"[SU]: ","color":"red"}],{"text":"FATAL ERROR: There's no sidebar in the registry with that ID!","color":"red"}]
execute if score if ca.sidebar matches 0 run return 1

$data modify storage ca: args set value {id:"$(id)"}

tag @s add tmp
$execute store success score if ca.sidebar if data storage ca:sidebar {registry:[{id:{key:"$(id)"},lines:[[{complex:1b}]]}]}


execute if score if ca.sidebar matches 0 run tellraw @s [{"text":"[SU]: ","color":"#FFCA2A"},{"text":"Function abort: no complex lines were found in this sidebar.","color":"#FFCA2A"}]
execute if score if ca.sidebar matches 0 run tag @s remove tmp
execute if score if ca.sidebar matches 0 run return 1

tellraw @s [[{"text":"[SU]: ","color":"#2AFFAD"}],{"text":"Refreshing complex lines...","color":"gray"}]

$data modify storage ca: input set value {id:"$(id)"}
$execute store result storage ca: input.lines int 1 run scoreboard players get ca.sidebar.$(id).lines ca.sidebar


execute at @a[limit=1] run summon minecraft:text_display ~ -64 ~ {alignment:"center",UUID:[I;3284762,23497234,2387423,934834917]}
execute as 00321f1a-0166-8a12-0024-6ddf37b872e5 run function ca:sidebar/z/m with storage ca: input

kill 00321f1a-0166-8a12-0024-6ddf37b872e5

tag @s remove tmp

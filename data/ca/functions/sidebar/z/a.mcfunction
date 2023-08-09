

$execute store result score loop.if ca.sidebar if data storage ca:sidebar registry[{id:{uuid:$(id)}}]

execute if score loop.if ca.sidebar matches 0 run function ca:sidebar/z/b with storage ca: input
execute if score loop.if ca.sidebar matches 0 run return 0

$scoreboard players set uuid ca.sidebar $(id)

execute store result storage ca: input.id int 1 run scoreboard players add uuid ca.sidebar 1

function ca:sidebar/z/a with storage ca: input


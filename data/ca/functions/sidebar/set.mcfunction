

# ARGS: {
#    id: "<identifier>",
#    contents: {
#       lines: [
#          [
#             {
#              * text: <prefix; JSON text string>,
#             ** complex: <byte>
#             },
#             {
#              * text: <suffix; JSON text string>,
#             ** complex: <byte>
#             }
#          ],
#          <every new list states a new line using the previous structure; lines are made from to bottom, up to 16 lines>
#       ]
#    }
# }
#
# [*]: Use single quotes (') to avoid issues with escaping.
# [**]: Optional; 1b if needs JSON component solving & 0b if doesn't need JSON component solving. Omission default to 0b.


$execute store success score if ca.sidebar run data get storage ca:sidebar registry[{id:{key:"$(id)"}}]
execute if score if ca.sidebar matches 0 run tellraw @s [[{"text":"[SU]: ","color":"red"}],{"text":"FATAL ERROR: There's no sidebar in the registry with that ID!","color":"red"}]
execute if score if ca.sidebar matches 0 run return 1

$data modify storage ca: args set value {id:"$(id)",contents:$(contents)}

execute store result score if ca.sidebar if data storage ca: args.contents.lines
execute if score if ca.sidebar matches 0 run tellraw @s [[{"text":"[SU]: ","color":"#FFCA2A"}],{"text":"ARGUMENT ERROR: Lines (list) argument isn't set.","color":"#FFCA2A"}," ",[{"text":"Hover here to see the function arguments structure.","underlined":true,"color":"yellow","hoverEvent":{"action":"show_text","contents":["",{"text":"#","color":"dark_gray"},{"text":" Arguments: ","color":"yellow","bold":true},{"text":"{","color":"yellow"},{"text":"\n"},{"text":"#","color":"dark_gray"},{"text":"    id","color":"aqua"},{"text":": "},{"text":"\"","color":"green"},{"text":"<identifier>","color":"dark_green"},{"text":"\"","color":"green"},{"text":",\n"},{"text":"#","color":"dark_gray"},{"text":"    contents","color":"aqua"},{"text":": "},{"text":"{","color":"gold"},{"text":"\n"},{"text":"#","color":"dark_gray"},{"text":"       lines","color":"aqua"},{"text":": "},{"text":"[","color":"yellow"},{"text":"\n"},{"text":"#","color":"dark_gray"},{"text":"          [","color":"gold"},{"text":"\n"},{"text":"#","color":"dark_gray"},{"text":"             {","color":"yellow"},{"text":"\n"},{"text":"#","color":"dark_gray"},{"text":"              *","color":"green"},{"text":" text","color":"aqua"},{"text":": "},{"text":"<prefix; JSON text string>","color":"dark_green"},{"text":",\n"},{"text":"#","color":"dark_gray"},{"text":"             **","color":"green"},{"text":" complex","color":"aqua"},{"text":": "},{"text":"<byte>","color":"dark_green"},{"text":"\n"},{"text":"#","color":"dark_gray"},{"text":"             }","color":"yellow"},{"text":",\n"},{"text":"#","color":"dark_gray"},{"text":"             {","color":"yellow"},{"text":"\n"},{"text":"#","color":"dark_gray"},{"text":"              *","color":"green"},{"text":" text","color":"aqua"},{"text":": "},{"text":"<suffix; JSON text string>","color":"dark_green"},{"text":",\n"},{"text":"#","color":"dark_gray"},{"text":"             **","color":"green"},{"text":" complex","color":"aqua"},{"text":": "},{"text":"<byte>","color":"dark_green"},{"text":"\n"},{"text":"#","color":"dark_gray"},{"text":"             }","color":"yellow"},{"text":"\n"},{"text":"#","color":"dark_gray"},{"text":"          ]","color":"gold"},{"text":",\n"},{"text":"#","color":"dark_gray"},{"text":"          <every new list states a new line using the previous structure; lines are made from to bottom, up to 16 lines>","color":"dark_green"},{"text":"\n"},{"text":"#","color":"dark_gray"},{"text":"       ]","color":"yellow"},{"text":"\n"},{"text":"#","color":"dark_gray"},{"text":"    }","color":"gold"},{"text":"\n"},{"text":"#","color":"dark_gray"},{"text":" }","color":"yellow"},{"text":"\n"},{"text":"#","color":"dark_gray"},{"text":"\n"},{"text":"#","color":"dark_gray"},{"text":" [","color":"gold"},{"text":"*","color":"green"},{"text":"]:","color":"gold"},{"text":" Use single quotes (') to avoid issues with escaping.","color":"gray"},{"text":"\n"},{"text":"#","color":"dark_gray"},{"text":" [","color":"gold"},{"text":"**","color":"green"},{"text":"]:","color":"gold"},{"text":" Optional; 1b if needs JSON component solving & 0b if doesn't need JSON component solving. Omission default to 0b.","color":"gray"},{"text":"\n "}]}}]]
execute if score if ca.sidebar matches 0 run return 1

tellraw @s [[{"text":"[SU]: ","color":"#2AFFAD"}],{"text":"Validating function arguments...","color":"gray"}]

execute store result score if ca.sidebar if data storage ca: args.contents.lines[0][0].text
execute if score if ca.sidebar matches 0 run tellraw @s [[{"text":"[SU]: ","color":"#FFCA2A"}],{"text":"ARGUMENT ERROR: The first element of Lines (list) argument is either empty, non-existent or malformed.","color":"#FFCA2A"}," ",[{"text":"Hover here to see the function arguments structure.","underlined":true,"color":"yellow","hoverEvent":{"action":"show_text","contents":["",{"text":"#","color":"dark_gray"},{"text":" Arguments: ","color":"yellow","bold":true},{"text":"{","color":"yellow"},{"text":"\n"},{"text":"#","color":"dark_gray"},{"text":"    id","color":"aqua"},{"text":": "},{"text":"\"","color":"green"},{"text":"<identifier>","color":"dark_green"},{"text":"\"","color":"green"},{"text":",\n"},{"text":"#","color":"dark_gray"},{"text":"    contents","color":"aqua"},{"text":": "},{"text":"{","color":"gold"},{"text":"\n"},{"text":"#","color":"dark_gray"},{"text":"       lines","color":"aqua"},{"text":": "},{"text":"[","color":"yellow"},{"text":"\n"},{"text":"#","color":"dark_gray"},{"text":"          [","color":"gold"},{"text":"\n"},{"text":"#","color":"dark_gray"},{"text":"             {","color":"yellow"},{"text":"\n"},{"text":"#","color":"dark_gray"},{"text":"              *","color":"green"},{"text":" text","color":"aqua"},{"text":": "},{"text":"<prefix; JSON text string>","color":"dark_green"},{"text":",\n"},{"text":"#","color":"dark_gray"},{"text":"             **","color":"green"},{"text":" complex","color":"aqua"},{"text":": "},{"text":"<byte>","color":"dark_green"},{"text":"\n"},{"text":"#","color":"dark_gray"},{"text":"             }","color":"yellow"},{"text":",\n"},{"text":"#","color":"dark_gray"},{"text":"             {","color":"yellow"},{"text":"\n"},{"text":"#","color":"dark_gray"},{"text":"              *","color":"green"},{"text":" text","color":"aqua"},{"text":": "},{"text":"<suffix; JSON text string>","color":"dark_green"},{"text":",\n"},{"text":"#","color":"dark_gray"},{"text":"             **","color":"green"},{"text":" complex","color":"aqua"},{"text":": "},{"text":"<byte>","color":"dark_green"},{"text":"\n"},{"text":"#","color":"dark_gray"},{"text":"             }","color":"yellow"},{"text":"\n"},{"text":"#","color":"dark_gray"},{"text":"          ]","color":"gold"},{"text":",\n"},{"text":"#","color":"dark_gray"},{"text":"          <every new list states a new line using the previous structure; lines are made from to bottom, up to 16 lines>","color":"dark_green"},{"text":"\n"},{"text":"#","color":"dark_gray"},{"text":"       ]","color":"yellow"},{"text":"\n"},{"text":"#","color":"dark_gray"},{"text":"    }","color":"gold"},{"text":"\n"},{"text":"#","color":"dark_gray"},{"text":" }","color":"yellow"},{"text":"\n"},{"text":"#","color":"dark_gray"},{"text":"\n"},{"text":"#","color":"dark_gray"},{"text":" [","color":"gold"},{"text":"*","color":"green"},{"text":"]:","color":"gold"},{"text":" Use single quotes (') to avoid issues with escaping.","color":"gray"},{"text":"\n"},{"text":"#","color":"dark_gray"},{"text":" [","color":"gold"},{"text":"**","color":"green"},{"text":"]:","color":"gold"},{"text":" Optional; 1b if needs JSON component solving & 0b if doesn't need JSON component solving. Omission default to 0b.","color":"gray"},{"text":"\n "}]}}]]
execute if score if ca.sidebar matches 0 run return 1

execute store result score entries.count ca.sidebar if data storage ca: args.contents.lines[]

execute if score entries.count ca.sidebar matches 2.. run function ca:sidebar/z/check_lines
execute if score if ca.sidebar matches 0 run return 1


execute if score entries.count ca.sidebar matches 1.. run tellraw @s [{"text":" ╞══ Found 1 line...","color":"dark_gray"}]


execute if score entries.count ca.sidebar matches 17.. run scoreboard players set entries.count ca.sidebar 16

data modify storage ca: input set value {}
data modify storage ca: input.id set from storage ca: args.id
execute store result storage ca: input.lines int 1 run scoreboard players get entries.count ca.sidebar

function ca:sidebar/z/set with storage ca: input

tellraw @s [{"text":" ╘═ ","color":"dark_gray"},{"text":"[✔] Function end. Calling ca:sidebar/refresh function...","color":"#20F540"}]

$function ca:sidebar/refresh {id:"$(id)"}

return 0

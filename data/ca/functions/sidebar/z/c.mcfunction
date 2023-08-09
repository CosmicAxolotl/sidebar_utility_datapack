

execute store result score b ca.sidebar run data get storage ca: tmp.id.uuid

scoreboard players set a ca.sidebar 0


data modify storage ca: tmp.line_scoreholders.line_0 set value "‌"
data modify storage ca: tmp.line_scoreholders.line_1 set value "‌‌"
data modify storage ca: tmp.line_scoreholders.line_2 set value "‌‌‌"
data modify storage ca: tmp.line_scoreholders.line_3 set value "‌‌‌‌"
data modify storage ca: tmp.line_scoreholders.line_4 set value "‌‌‌‌‌"
data modify storage ca: tmp.line_scoreholders.line_5 set value "‌‌‌‌‌‌"
data modify storage ca: tmp.line_scoreholders.line_6 set value "‌‌‌‌‌‌‌"
data modify storage ca: tmp.line_scoreholders.line_7 set value "‌‌‌‌‌‌‌‌"
data modify storage ca: tmp.line_scoreholders.line_8 set value "‌‌‌‌‌‌‌‌‌"
data modify storage ca: tmp.line_scoreholders.line_9 set value "‌‌‌‌‌‌‌‌‌‌"
data modify storage ca: tmp.line_scoreholders.line_10 set value "‌‌‌‌‌‌‌‌‌‌"
data modify storage ca: tmp.line_scoreholders.line_11 set value "‌‌‌‌‌‌‌‌‌‌‌"
data modify storage ca: tmp.line_scoreholders.line_12 set value "‌‌‌‌‌‌‌‌‌‌‌‌"
data modify storage ca: tmp.line_scoreholders.line_13 set value "‌‌‌‌‌‌‌‌‌‌‌‌‌"
data modify storage ca: tmp.line_scoreholders.line_14 set value "‌‌‌‌‌‌‌‌‌‌‌‌‌‌"
data modify storage ca: tmp.line_scoreholders.line_15 set value "‌‌‌‌‌‌‌‌‌‌‌‌‌‌‌"


execute store result score loop.if ca.sidebar if score a ca.sidebar = b ca.sidebar
execute if score loop.if ca.sidebar matches 0 run function ca:sidebar/z/d with storage ca: tmp.line_scoreholders


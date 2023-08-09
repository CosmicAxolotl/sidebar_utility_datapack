

$data modify storage ca: tmp.line_scoreholders.line_0 set value "‌$(line_0)"
$data modify storage ca: tmp.line_scoreholders.line_1 set value "‌$(line_1)"
$data modify storage ca: tmp.line_scoreholders.line_2 set value "‌$(line_2)"
$data modify storage ca: tmp.line_scoreholders.line_3 set value "‌$(line_3)"
$data modify storage ca: tmp.line_scoreholders.line_4 set value "‌$(line_4)"
$data modify storage ca: tmp.line_scoreholders.line_5 set value "‌$(line_5)"
$data modify storage ca: tmp.line_scoreholders.line_6 set value "‌$(line_6)"
$data modify storage ca: tmp.line_scoreholders.line_7 set value "‌$(line_7)"
$data modify storage ca: tmp.line_scoreholders.line_8 set value "‌$(line_8)"
$data modify storage ca: tmp.line_scoreholders.line_9 set value "‌$(line_9)"
$data modify storage ca: tmp.line_scoreholders.line_10 set value "‌$(line_10)"
$data modify storage ca: tmp.line_scoreholders.line_11 set value "‌$(line_11)"
$data modify storage ca: tmp.line_scoreholders.line_12 set value "‌$(line_12)"
$data modify storage ca: tmp.line_scoreholders.line_13 set value "‌$(line_13)"
$data modify storage ca: tmp.line_scoreholders.line_14 set value "‌$(line_14)"
$data modify storage ca: tmp.line_scoreholders.line_15 set value "‌$(line_15)"


scoreboard players add a ca.sidebar 1


execute store result score loop.if ca.sidebar if score a ca.sidebar = b ca.sidebar
execute if score loop.if ca.sidebar matches 0 run function ca:sidebar/z/d with storage ca: tmp.line_scoreholders


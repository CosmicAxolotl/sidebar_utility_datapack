

$data modify storage ca: input set value {id:"$(id)",line:0}
$execute if data storage ca:sidebar registry[{id:{key:"$(id)"}}].lines[0][{complex:1b}] run function ca:sidebar/z/n with storage ca: input

$data modify storage ca: input set value {id:"$(id)",line:1}
$execute if data storage ca:sidebar registry[{id:{key:"$(id)"}}].lines[1][{complex:1b}] run function ca:sidebar/z/n with storage ca: input

$data modify storage ca: input set value {id:"$(id)",line:2}
$execute if data storage ca:sidebar registry[{id:{key:"$(id)"}}].lines[2][{complex:1b}] run function ca:sidebar/z/n with storage ca: input


lui	$1	0x1ff1
ori	$1	$1	0x1ff1
xori	$2	$0	4
sub	$3	$3	$2
sw	$3	0($0)
sw	$3	4($0)
sw	$3	8($0)
add	$3	$3	$2
sb	$1	4($3)
addi	$1	$3	101
add	$3	$3	$2
sb	$1	-3($3)
andi	$1	$1	-123
add	$3	$3	$2
sb	$1	-2($3)
xori	$1	$1	101
sb	$1	0($3)
sw	$3	12($0)
sw	$3	16($0)
slti	$4	$3	10005
sh	$4	4($3)
sh	$4	-6($3)

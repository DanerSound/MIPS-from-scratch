 ## Quick Summary
 
 1. arithmetic operations can only be performed on registers
 
 2. LOAD and STORE operations have a BYTE addressing
 
 _for more simple example see notebook branch_

| command | meaning |
|-|-|
| add   $t1, $t2, $t3 | $t1=$t2+$t3 |
| sub	$t1, $t2, $t3 | $t1=$t2-$t3 |
| lw	$t0, 100($t1) | $t0=Memory[$t1+100] |
| sw	$t0, 100($t1) | Memory[$t1+100]=$t0 |

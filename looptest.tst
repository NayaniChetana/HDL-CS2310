load Computer.hdl,
compare-to looptest.cmp,
output-file looptest.out,
output-list time%S1.6.1 reset%B2.1.2 ARegister[0]%D1.7.1 DRegister[0]%D1.7.1 
	RAM64[16]%D1.7.1 RAM64[17]%D1.7.1 RAM64[18]%D1.7.1;

ROM32K load looptest.hack,
set RAM64[18] 100;
output;

repeat 1400{
	tick, tock, output;
}


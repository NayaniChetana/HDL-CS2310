load Computer.hdl,
compare-to conditionaltest.cmp,
output-file conditionaltest.out,
output-list time%S1.4.1 reset%B2.1.2 ARegister[0]%D1.7.1 DRegister[0]%D1.7.1 
	RAM64[16]%D1.7.1 RAM64[17]%D1.7.1 RAM64[18]%D1.7.1;

ROM32K load conditionaltest.asm,
set RAM64[16] 3,
set RAM64[17] 5,
output;

repeat 15{
	tick, tock, output;
}

set reset 1,
set RAM64[16] 7,
set RAM64[17] 4,
set RAM64[18] 0,
tick, tock, output;

set reset 0,

repeat 12{
	tick, tock, output;
}
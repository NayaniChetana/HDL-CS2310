load Computer.hdl,
compare-to assigntest.cmp,
output-file assigntest.out,
output-list time%S1.4.1 reset%B2.1.2 ARegister[0]%D1.7.1 
DRegister[0]%D1.7.1 RAM64[16]%D1.7.1 RAM64[17]%D1.7.1 RAM64[18]%D1.7.1 RAM64[19]%D1.7.1;

ROM32K load assigntest.hack,
set RAM64[16] 9,
set RAM64[17] 7,
set RAM64[18] 5,
output;

repeat 10 {
	tick,tock,output;
}

set reset 1,
set RAM64[16] 9,
set RAM64[17] 7,
set RAM64[18] 5,
set RAM64[19] 0,
tick,tock,output;

set reset 0,
set RAM64[16] 1,
set RAM64[17] 3,
set RAM64[18] 2,
repeat 10 {
	tick,tock,output;
}

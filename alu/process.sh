iverilog alu.v alu_tb.v
./a.out > output.txt | python3 process.py
rm a.out output.txt
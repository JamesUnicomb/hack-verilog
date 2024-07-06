import sys

fmtstr = "t = {}, clk = {}, in = {}, write = {}, out = {}"

def twos_comp(val, bits):
    if (val & (1 << (bits - 1))) != 0:
        val = val - (1 << bits)
    return val 

testdata = []
with open("test.txt", 'r') as f:
    for line in f.readlines()[1:]:
        _, _, inbits, write, outbits, _ = line.split("|")
        testdata.append([int(inbits.strip()), int(write), int(outbits.strip())])

if __name__ == "__main__":
    with open("output.txt", 'r') as f:
        for line, test in zip(f.readlines(), testdata):
            _, _, (_, inbits), (_, write), (_, outbits) = [s.split(" = ") for s in line.split(", ")]

            inbits = inbits.replace('x', '0')
            outbits = outbits.replace('x', '0')

            assert test[0] == twos_comp(int(inbits,2), 16)
            assert test[1] == int(write)
            assert test[2] == twos_comp(int(outbits,2), 16)

            #print(line.rstrip())
            print("in = {}, write = {}, out = {}".format(twos_comp(int(inbits,2), 16), int(write), twos_comp(int(outbits,2), 16)))
import sys

fmtstr = "t = {}, clk = {}, outM = {}, writeM = {}, addressM = {}, pcaddr = {}"

def twos_comp(val, bits):
    if (val & (1 << (bits - 1))) != 0:
        val = val - (1 << bits)
    return val 

testdata = []
with open("test.txt", 'r') as f:
    for line in f.readlines()[1:]:
        _, _, _, instructionbits, _, outM, writeM, addressM, pc, _, _ = line.split("|")
        testdata.append([int(outM.strip()), int(writeM.strip()), int(addressM.strip()), int(pc.strip())])

if __name__ == "__main__":
    with open("output.txt", 'r') as f:
        for line, test in zip(f.readlines(), testdata):
            _, _, (_, outM), (_, writeM), (_, addressM), (_, pc) = [s.split(" = ") for s in line.split(", ")]

            print("outM    ", (outM.strip(), test[0]))
            # print("writeM  ", (writeM.strip(), test[1]))
            # print("address ", (addressM.strip(), test[2]))
            # print("pc      ", (pc.strip(), test[3]))

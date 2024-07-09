import sys

fmtstr = "t = {}, clk = {}, outM = {}, writeM = {}, addressM = {}, pcaddr = {}"

def twos_comp(val, bits):
    if (val & (1 << (bits - 1))) != 0:
        val = val - (1 << bits)
    return val 

testdata = []
with open("test.txt", 'r') as f:
    for line in f.readlines()[1:]:
        _, _, _, instructionbits, _, outM, writeM, addressM, pc, dreg, areg, _ = line.split("|")
        testdata.append([int(outM.strip()), int(writeM.strip()), int(addressM.strip()), int(pc.strip())])

if __name__ == "__main__":
    with open("output.txt", 'r') as f:
        for line, test in zip(f.readlines()[1:], testdata):
            _, _, _, (_, outMbits), (_, writeMbits), (_, addressMbits), (_, pcbits) = [s.split(" = ") for s in line.split(", ")]

            print("outM    ", (twos_comp(int(outMbits.strip(),2), 16), test[0]))
            print("writeM  ", (twos_comp(int(writeMbits.strip(),2), 16), test[1]))
            print("address ", (twos_comp(int(addressMbits.strip(),2), 16), test[2]))
            print("pc      ", (twos_comp(int(pcbits.strip(),2), 16), test[3]))

            assert (twos_comp(int(outMbits.strip(),2), 16) == test[0])
            assert (twos_comp(int(writeMbits.strip(),2), 16) == test[1])
            assert (twos_comp(int(addressMbits.strip(),2), 16), test[2])
            assert (twos_comp(int(pcbits.strip(),2), 16) == test[3])

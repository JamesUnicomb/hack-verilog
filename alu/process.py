import sys

fmtstr = "At time {}, x = {}, y = {}, zx = {}, nx = {}, zy = {}, ny = {}, f = {}, no = {}, zr = {}, ng = {}, out = {}, ({})"
ops = ["0", "1", "-1", "x", "y", "!x", "!y", "-x", "-y", "x+1", "y+1", "x-1", "y-1", "x+y", "x-y", "y-x", "x&y", "x|y"]
def twos_comp(val, bits):
    if (val & (1 << (bits - 1))) != 0:
        val = val - (1 << bits)
    return val 


if __name__ == "__main__":
    with open("output.txt", 'r') as f:
        for op, line in zip(ops, f.readlines()):
            _, (_, xbits), (_, ybits), _, _, _, _, _, _, _, _, (_, outbits) = [s.split(" = ") for s in line.split(", ")]

            #print(line.rstrip())
            print("op ({}): x = {}, y = {}, out = {}".format(op, twos_comp(int(xbits,2), 16), twos_comp(int(ybits,2), 16), twos_comp(int(outbits,2), 16)))
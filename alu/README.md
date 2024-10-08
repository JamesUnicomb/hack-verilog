# Simple 16-bit Hack Computer ALU

## Example

To run the `alu.v` file:
```
bash run.sh
```

The expected output:
```
At time                    0, x = 0000000000010001, y = 0000000000000110, zx = 1, nx = 0, zy = 1, ny = 0, f = 1, no = 0, zr = 1, ng = 0, out = 0000000000000000, (    0)
At time                    1, x = 0000000000010001, y = 0000000000000110, zx = 1, nx = 1, zy = 1, ny = 1, f = 1, no = 1, zr = 0, ng = 0, out = 0000000000000001, (    1)
At time                    2, x = 0000000000010001, y = 0000000000000110, zx = 1, nx = 1, zy = 1, ny = 0, f = 1, no = 0, zr = 0, ng = 1, out = 1111111111111111, (65535)
At time                    3, x = 0000000000010001, y = 0000000000000110, zx = 0, nx = 0, zy = 1, ny = 1, f = 0, no = 0, zr = 0, ng = 0, out = 0000000000010001, (   17)
At time                    4, x = 0000000000010001, y = 0000000000000110, zx = 1, nx = 1, zy = 0, ny = 0, f = 0, no = 0, zr = 0, ng = 0, out = 0000000000000110, (    6)
At time                    5, x = 0000000000010001, y = 0000000000000110, zx = 0, nx = 0, zy = 1, ny = 1, f = 0, no = 1, zr = 0, ng = 1, out = 1111111111101110, (65518)
At time                    6, x = 0000000000010001, y = 0000000000000110, zx = 1, nx = 1, zy = 0, ny = 0, f = 0, no = 1, zr = 0, ng = 1, out = 1111111111111001, (65529)
At time                    7, x = 0000000000010001, y = 0000000000000110, zx = 0, nx = 0, zy = 1, ny = 1, f = 1, no = 1, zr = 0, ng = 1, out = 1111111111101111, (65519)
At time                    8, x = 0000000000010001, y = 0000000000000110, zx = 1, nx = 1, zy = 0, ny = 0, f = 1, no = 1, zr = 0, ng = 1, out = 1111111111111010, (65530)
At time                    9, x = 0000000000010001, y = 0000000000000110, zx = 0, nx = 1, zy = 1, ny = 1, f = 1, no = 1, zr = 0, ng = 0, out = 0000000000010010, (   18)
At time                   10, x = 0000000000010001, y = 0000000000000110, zx = 1, nx = 1, zy = 0, ny = 1, f = 1, no = 1, zr = 0, ng = 0, out = 0000000000000111, (    7)
At time                   11, x = 0000000000010001, y = 0000000000000110, zx = 0, nx = 0, zy = 1, ny = 1, f = 1, no = 0, zr = 0, ng = 0, out = 0000000000010000, (   16)
At time                   12, x = 0000000000010001, y = 0000000000000110, zx = 1, nx = 1, zy = 0, ny = 0, f = 1, no = 0, zr = 0, ng = 0, out = 0000000000000101, (    5)
At time                   13, x = 0000000000010001, y = 0000000000000110, zx = 0, nx = 0, zy = 0, ny = 0, f = 1, no = 0, zr = 0, ng = 0, out = 0000000000010111, (   23)
At time                   14, x = 0000000000010001, y = 0000000000000110, zx = 0, nx = 1, zy = 0, ny = 0, f = 1, no = 1, zr = 0, ng = 0, out = 0000000000001011, (   11)
At time                   15, x = 0000000000010001, y = 0000000000000110, zx = 0, nx = 0, zy = 0, ny = 1, f = 1, no = 1, zr = 0, ng = 1, out = 1111111111110101, (65525)
At time                   16, x = 0000000000010001, y = 0000000000000110, zx = 0, nx = 0, zy = 0, ny = 0, f = 0, no = 0, zr = 1, ng = 0, out = 0000000000000000, (    0)
At time                   17, x = 0000000000010001, y = 0000000000000110, zx = 0, nx = 1, zy = 0, ny = 1, f = 0, no = 1, zr = 0, ng = 0, out = 0000000000010111, (   23)
```

To get a clearer look at the data (and the fact that the formatting doesnt take care of 2's complement):

```
bash process.sh
```

The expected output:
```
op (0): x = 17, y = 6, out = 0
op (1): x = 17, y = 6, out = 1
op (-1): x = 17, y = 6, out = -1
op (x): x = 17, y = 6, out = 17
op (y): x = 17, y = 6, out = 6
op (!x): x = 17, y = 6, out = -18
op (!y): x = 17, y = 6, out = -7
op (-x): x = 17, y = 6, out = -17
op (-y): x = 17, y = 6, out = -6
op (x+1): x = 17, y = 6, out = 18
op (y+1): x = 17, y = 6, out = 7
op (x-1): x = 17, y = 6, out = 16
op (y-1): x = 17, y = 6, out = 5
op (x+y): x = 17, y = 6, out = 23
op (x-y): x = 17, y = 6, out = 11
op (y-x): x = 17, y = 6, out = -11
op (x&y): x = 17, y = 6, out = 0
op (x|y): x = 17, y = 6, out = 23
```
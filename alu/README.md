# Simple Hack Computer ALU

## Example

To run the `alu.v` file:
```
bash run.sh
```

The expected output:
```
At time                    0, x = 00010001, y = 00000110, zx = 1, nx = 0, zy = 1, ny = 0, f = 1, no = 0, zr = 1, ng = 0, out = 00000000, (  0)
At time                    1, x = 00010001, y = 00000110, zx = 1, nx = 1, zy = 1, ny = 1, f = 1, no = 1, zr = 0, ng = 0, out = 00000001, (  1)
At time                    2, x = 00010001, y = 00000110, zx = 1, nx = 1, zy = 1, ny = 0, f = 1, no = 0, zr = 0, ng = 1, out = 11111111, (255)
At time                    3, x = 00010001, y = 00000110, zx = 0, nx = 0, zy = 1, ny = 1, f = 0, no = 0, zr = 0, ng = 0, out = 00010001, ( 17)
At time                    4, x = 00010001, y = 00000110, zx = 1, nx = 1, zy = 0, ny = 0, f = 0, no = 0, zr = 0, ng = 0, out = 00000110, (  6)
At time                    5, x = 00010001, y = 00000110, zx = 0, nx = 0, zy = 1, ny = 1, f = 0, no = 1, zr = 0, ng = 1, out = 11101110, (238)
At time                    6, x = 00010001, y = 00000110, zx = 1, nx = 1, zy = 0, ny = 0, f = 0, no = 1, zr = 0, ng = 1, out = 11111001, (249)
At time                    7, x = 00010001, y = 00000110, zx = 0, nx = 0, zy = 1, ny = 1, f = 1, no = 1, zr = 0, ng = 1, out = 11101111, (239)
At time                    8, x = 00010001, y = 00000110, zx = 1, nx = 1, zy = 0, ny = 0, f = 1, no = 1, zr = 0, ng = 1, out = 11111010, (250)
At time                    9, x = 00010001, y = 00000110, zx = 0, nx = 1, zy = 1, ny = 1, f = 1, no = 1, zr = 0, ng = 0, out = 00010010, ( 18)
At time                   10, x = 00010001, y = 00000110, zx = 1, nx = 1, zy = 0, ny = 1, f = 1, no = 1, zr = 0, ng = 0, out = 00000111, (  7)
At time                   11, x = 00010001, y = 00000110, zx = 0, nx = 0, zy = 1, ny = 1, f = 1, no = 0, zr = 0, ng = 0, out = 00010000, ( 16)
At time                   12, x = 00010001, y = 00000110, zx = 1, nx = 1, zy = 0, ny = 0, f = 1, no = 0, zr = 0, ng = 0, out = 00000101, (  5)
At time                   13, x = 00010001, y = 00000110, zx = 0, nx = 0, zy = 0, ny = 0, f = 1, no = 0, zr = 0, ng = 0, out = 00010111, ( 23)
At time                   14, x = 00010001, y = 00000110, zx = 0, nx = 1, zy = 0, ny = 0, f = 1, no = 1, zr = 0, ng = 0, out = 00001011, ( 11)
At time                   15, x = 00010001, y = 00000110, zx = 0, nx = 0, zy = 0, ny = 1, f = 1, no = 1, zr = 0, ng = 1, out = 11110101, (245)
At time                   16, x = 00010001, y = 00000110, zx = 0, nx = 0, zy = 0, ny = 0, f = 0, no = 0, zr = 1, ng = 0, out = 00000000, (  0)
At time                   17, x = 00010001, y = 00000110, zx = 0, nx = 1, zy = 0, ny = 1, f = 0, no = 1, zr = 0, ng = 0, out = 00010111, ( 23)
```
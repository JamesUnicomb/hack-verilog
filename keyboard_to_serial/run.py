from pynput.keyboard import Key, Listener
from pylibftdi import Device

device = Device(interface_select=2)
device.baudrate = 1000000

device.open()

def send(key):
    c = '{0}'.format(key.char)
    device.write(c)

with Listener(on_press=send, suppress=True) as listener:   
    listener.join()

device.close()
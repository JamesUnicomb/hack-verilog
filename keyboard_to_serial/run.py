from pynput import keyboard
from pylibftdi import Device

device = Device(interface_select=2)
device.baudrate = 1000000

device.open()

def on_press(key):
    try:
        c = '{0}'.format(key.char)
        device.write(c)
    except AttributeError:
        c = '{0}'.format(key)
        device.write(c)
        if key == keyboard.Key.esc:
            return False

def on_release(key):
    c = '\0'
    device.write(c)

with keyboard.Listener(on_press=on_press, on_release=on_release, suppress=True) as listener:   
    listener.join()

device.close()
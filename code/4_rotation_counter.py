# Rui Santos & Sara Santos - Random Nerd Tutorials
# Complete project details at https://RandomNerdTutorials.com/raspberry-pi-pico-i2c-lcd-display-micropython/

from machine import Pin, SoftI2C
from pico_i2c_lcd import I2cLcd
from time import sleep

# Define the LCD I2C address and dimensions
I2C_ADDR = 0x27
I2C_NUM_ROWS = 2
I2C_NUM_COLS = 16

# Initialize I2C and LCD objects
i2c = SoftI2C(sda=Pin(4), scl=Pin(5), freq=400000)
lcd = I2cLcd(i2c, I2C_ADDR, I2C_NUM_ROWS, I2C_NUM_COLS)

encoder = Pin(15, Pin.IN, Pin.PULL_UP)
led = Pin('LED', Pin.OUT)
lcd.clear()

counter=0
lcd.putstr("counter:" + str(counter))
old_state = encoder.value()
print("old_state:" + str(old_state))
print("encoder.value():" + str(encoder.value()))

try:
    while True:
        if encoder.value() != old_state:
            print("state change")
            counter = counter +1
            old_state = encoder.value()
            lcd.clear()
            lcd.putstr("counter:" + str(counter))
            print("counter" + str(counter))


except KeyboardInterrupt:
    # Turn off the display
    print("Keyboard interrupt")
    lcd.backlight_off()
    lcd.display_off()
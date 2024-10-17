from machine import Pin, SoftI2C, PWM
from pico_i2c_lcd import I2cLcd
from time import sleep


# Define the LCD I2C address and dimensions
I2C_ADDR = 0x27
I2C_NUM_ROWS = 2
I2C_NUM_COLS = 16

# Initialize I2C and LCD objects
i2c = SoftI2C(sda=Pin(4), scl=Pin(5), freq=400000)
lcd = I2cLcd(i2c, I2C_ADDR, I2C_NUM_ROWS, I2C_NUM_COLS)

In2 = Pin(18, Pin.OUT)
In1 = Pin(19, Pin.OUT)

pwm = PWM(Pin(20))
pwm.freq(50)
#enA = Pin(20, Pin.OUT)
led = Pin('LED', Pin.OUT)
lcd.clear()

#forward
In1.value(1)
In2.value(0)

lcd.putstr("start:")
pwm.duty_u16(16000)
sleep(2)
pwm.duty_u16(32000)
sleep(2)
lcd.putstr("finish:")
pwm.deinit()
In1.value(0)
In2.value(0)
    

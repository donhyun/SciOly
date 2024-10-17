from machine import Pin
from time import sleep

encoder = Pin(15, Pin.IN, Pin.PULL_UP)
led = Pin('LED', Pin.OUT)

while True:
  print(encoder.value())
  led.value(encoder.value())
  sleep(0.1)
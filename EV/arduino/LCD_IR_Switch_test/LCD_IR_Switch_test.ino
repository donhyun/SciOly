// |———————————————————————————————————————————————————————| 
// |  made by Arduino_uno_guy 11/13/2019                   |
// |   https://create.arduino.cc/projecthub/arduino_uno_guy|
//  |———————————————————————————————————————————————————————|


#include "LiquidCrystal_I2C.h"

#include "Wire.h"


//initialize the liquid crystal library
//the first parameter is  the I2C address
//the second parameter is how many rows are on your screen
//the  third parameter is how many columns are on your screen
LiquidCrystal_I2C lcd(0x27,  16, 2);

int counter = 0;
int lastSensorRead = 0;
int val = 0;
bool sw1 = 0;

void setup() {
  
  //initialize lcd screen
  lcd.init();
  // turn on the backlight
  lcd.backlight();

  pinMode(2, INPUT);
}
void loop() {
  val = analogRead(A0);
  sw1 = digitalRead(2);
  String strVal = String(val);
  //Serial.println("val:" + strVal);
    if (val >= 50)
    {
      if (lastSensorRead==0){
        Serial.println("valhigh:" + strVal);
        digitalWrite(LED_BUILTIN, HIGH);
        lastSensorRead = 1;
        counter+=1;
        String strCounter = String(counter);
        lcd.clear();
        lcd.print("counter:" + strCounter);
      }
    }
    else
    {
      if (lastSensorRead==1){
        Serial.println("vallow:" + strVal);
        digitalWrite(LED_BUILTIN, LOW);
        lastSensorRead = 0;
        counter+=1;
        String strCounter = String(counter);
        lcd.clear();
        lcd.print("counter:" + strCounter );
        
      }
    }
    lcd.setCursor(0,1);
    lcd.print(sw1);


}

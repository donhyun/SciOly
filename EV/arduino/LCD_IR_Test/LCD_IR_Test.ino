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


int SensorPin = 12;
int counter = 0;
int status1 = 0;
int val = 0;

void setup() {
  
  //initialize lcd screen
  lcd.init();
  // turn on the backlight
  lcd.backlight();
}
void loop() {
  val = analogRead(A0);
  String strVal = String(val);
  //Serial.println("val:" + strVal);
    if (val >= 50)
    {
      if (status1==0){
        Serial.println("valhigh:" + strVal);
        digitalWrite(LED_BUILTIN, HIGH);
        status1 = 1;
        counter+=1;
        String strCounter = String(counter);
        lcd.clear();
        lcd.print("counter:" + strCounter);
      }
    }
    else
    {
      if (status1==1){
        Serial.println("vallow:" + strVal);
        digitalWrite(LED_BUILTIN, LOW);
        status1 = 0;
        counter+=1;
        String strCounter = String(counter);
        lcd.clear();
        lcd.print("counter:" + strCounter );
      }
    }


}

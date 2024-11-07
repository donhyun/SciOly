
#include "LiquidCrystal_I2C.h"


#define enA 9
#define in1 6
#define in2 7
#define goButton 2
#define upButton 3
#define downButton 4

LiquidCrystal_I2C lcd(0x27,  16, 2);

int lastSensorRead = 0;
bool goPressed = false;
bool upPressed = false;
bool downPressed = false;
bool goState = false;
int finalDistance = 20;
int counter = 0;

void setup() {

  //initialize lcd screen
  lcd.init();
  // turn on the backlight
  lcd.backlight();
  
  pinMode(enA, OUTPUT);
  pinMode(in1, OUTPUT);
  pinMode(in2, OUTPUT);
  pinMode(goButton, INPUT);
  pinMode(upButton, INPUT);
  pinMode(downButton, INPUT);
  
  digitalWrite(in1, LOW);
  digitalWrite(in2, LOW);

}

void loop() {
  String strFinalDistance = String(finalDistance);
  if (!goState){
      
      //set current ir sensor for initial state
      int val = analogRead(A0);
      if (val >= 50)
      {
        lastSensorRead=1;
      } else {
        lastSensorRead=0;
      }

      //  get button presses 
      goPressed = digitalRead(goButton);
      upPressed = digitalRead(upButton);
      downPressed = digitalRead(downButton);

      //  Initial LCD screen output
      lcd.clear();
      lcd.print("Ready!" );  
      lcd.setCursor(0,1);
      lcd.print("Final Dist:" + strFinalDistance);
      delay(50);   


      //  Add to final distance
      if (upPressed){
          finalDistance +=1;
          delay(200);
        }

      //  Subtract from final distance
      if (downPressed){
          finalDistance -=1;
          delay(200);
        }


      //  Go!
      if (goPressed){
        goState = true;
        delay(500);
      }

      
  } else {

    //  read IR sensor
    int val = analogRead(A0);

    //  If IR sensor is high
    if (val >= 50)
    {
      // If IR sensor value has changed
      if (lastSensorRead==0){
        lastSensorRead = 1;
        counter+=1;
        String strCounter = String(counter);
        lcd.clear();
        lcd.print("counter:" + strCounter);
        lcd.setCursor(0,1);
        lcd.print("Final Dist:" + strFinalDistance);
      }
    }
    else
    {
      // If IR Sensor is low and has changed
      if (lastSensorRead==1){
        lastSensorRead = 0;
        counter+=1;
        String strCounter = String(counter);
        lcd.clear();
        lcd.print("counter:" + strCounter );   
        lcd.setCursor(0,1);
        lcd.print("Final Dist:" + strFinalDistance);  
        
      }
    }

    //  If the counter is less than the final distance - move forward
    if (counter < finalDistance){
      int potValue = 1023;
      int pwmOutput = map(potValue, 0, 1023, 0 , 255); // Map the potentiometer value from 0 to 1023
      analogWrite(enA, pwmOutput); // Send PWM signal to L298N Enable pin
    
      digitalWrite(in1, HIGH);
      digitalWrite(in2, LOW);
      delay(20);
    } else {

      //  reverse (briefly)
      digitalWrite(in1, LOW);
      digitalWrite(in2, HIGH);
      int pwmOutput = map(255, 0, 1023, 0 , 255); // Map the potentiometer value from 0 to 1023
      delay(100);

      // stop
      digitalWrite(in1, LOW);
      digitalWrite(in2, LOW);
      
      // reset values
      goState = false;  
      counter = 0;
    }
  }



}

#define enA 9
#define in1 6
#define in2 7
#define button 2

int rotDirection = 0;
bool pressed = false;

void setup() {
  pinMode(enA, OUTPUT);
  pinMode(in1, OUTPUT);
  pinMode(in2, OUTPUT);
  pinMode(button, INPUT);
  
  digitalWrite(in1, LOW);
  digitalWrite(in2, LOW);

}

void loop() {
  pressed = digitalRead(button);

  if (pressed) {
    int potValue = 1023;
    int pwmOutput = map(potValue, 0, 1023, 0 , 255); // Map the potentiometer value from 0 to 255
    analogWrite(enA, pwmOutput); // Send PWM signal to L298N Enable pin
  
    digitalWrite(in1, HIGH);
    digitalWrite(in2, LOW);
    rotDirection = 1;
    delay(20);
  } else {
    digitalWrite(in1, LOW);
    digitalWrite(in2, LOW);
    
    
    }

}

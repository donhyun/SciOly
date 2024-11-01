

int SensorPin = 13;
int status1 = 0;
int val = 0;

void setup()
{
  //pinMode(SensorPin, INPUT);
  pinMode(LED_BUILTIN, OUTPUT);
  Serial.begin(9600);

}

void loop()
{

    val = analogRead(SensorPin);
    if (val >= 50)
    {
      digitalWrite(LED_BUILTIN, HIGH);
      status1 = 1;//black
    }
    else 
    {
      digitalWrite(LED_BUILTIN, LOW);
      status1 = 0;//white
    }

  
}

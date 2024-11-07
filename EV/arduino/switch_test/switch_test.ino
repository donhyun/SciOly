

int SwitchPin = 2;
int status1 = 0;
int val = 0;

void setup()
{
  pinMode(SwitchPin, INPUT);
  pinMode(LED_BUILTIN, OUTPUT);
  Serial.begin(9600);

}

void loop()
{

    val = digitalRead(SwitchPin);
    if (val)
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

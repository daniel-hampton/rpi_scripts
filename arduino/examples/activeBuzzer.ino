int buzzerPin = 13; // Define LED interface
int buttonPin = 3;
int value; // define numeric variable val

int sBeep = 250;
int lBeep = 1000;
int waitBeep = 500;

void setup()
{
  // put your setup code here, to run once:
  pinMode(buzzerPin, OUTPUT); // Define LED as output interface.
  pinMode(buttonPin, INPUT);  //Define key switch sensor as output interface.
}

void loop()
{
  // put your main code here, to run repeatedly:
  value = digitalRead(buttonPin); // Read the value of the value of the digital interface 3 to val
  if (value == LOW)
  {
    // digitalWrite(buzzerPin, HIGH);
    buzzSOS(buzzerPin);
  }
  else
  {
    digitalWrite(buzzerPin, LOW);
  }
}

void buzzSOS(int pin)
{
  int i;
  for (i = 0; i < 3; i++) {
    longBeep(pin);
  }
  for (i = 0; i < 3; i++) {
    shortBeep(pin);
  }
  for (i = 0; i < 3; i++) {
    longBeep(pin);
  }
}

void longBeep(int pin)
{
  digitalWrite(pin, HIGH);
  delay(lBeep);
  digitalWrite(pin, LOW);
  delay(waitBeep);
}

void shortBeep(int pin) {
  digitalWrite(pin, HIGH);
  delay(sBeep);
  digitalWrite(pin, LOW);
  delay(waitBeep);
}

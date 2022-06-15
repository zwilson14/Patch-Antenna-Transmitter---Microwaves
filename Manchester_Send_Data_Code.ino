////////////////////////////////////////
// Manchester Send Data Code
// Microwaves
// Zach Wilson
// 11/16/2017
// Rev_1
////////////////////////////////////////


/*

        This is Manchester for "110"

       delta-t    delta-t     delta-t
    |----------|-----------|-----------|
     _____       _____            _____
    |     |     |     |          |     |
    |     |     |     |          |     |
  ____|     |_____|     |__________|     |_____


*/

#define DELTA (250) // micro-seconds
#define HALF_DELTA (DELTA/2) //half period
#define ARRAY_LENGTH (8)
#define DATA_PIN (7)
#define POWER_PIN (8)
#define TEST_HIGH_PIN (2)
#define TEST_LOW_PIN (4)

bool dataArray[ARRAY_LENGTH] = {0, 1, 1, 0, 1, 1, 0, 0};
bool var = 1;
bool test = false;

void setup()
{
  pinMode(DATA_PIN, OUTPUT);
  pinMode(POWER_PIN, OUTPUT);
  pinMode(TEST_HIGH_PIN, OUTPUT);
  pinMode(TEST_LOW_PIN, OUTPUT);
  //  Serial.begin(9600);
  digitalWrite(TEST_HIGH_PIN, LOW);
  digitalWrite(TEST_LOW_PIN, LOW);
  digitalWrite(POWER_PIN, LOW);
}

void loop()
{

  delay(1000);
  if (!test)
  {

    //    Serial.println("-------");

    for (int x = 0; x < ARRAY_LENGTH; x++)
    {

      digitalWrite(POWER_PIN, HIGH);

      if (dataArray[x] == HIGH)
      {
        var = 1;
        //      digitalWrite(DATA_PIN, HIGH);
        //      delayMicroseconds(HALF_DELTA);
        //      digitalWrite(DATA_PIN, LOW);
        //      delayMicroseconds(HALF_DELTA);

        //Testing in Milli Seconds:
        digitalWrite(TEST_HIGH_PIN, HIGH);
        digitalWrite(TEST_LOW_PIN, LOW);
        delay(HALF_DELTA);
        digitalWrite(TEST_HIGH_PIN, LOW);
        digitalWrite(TEST_LOW_PIN, HIGH);
        delay(HALF_DELTA);
      }

      else
      {
        var = 0;
        //      digitalWrite(DATA_PIN, LOW);
        //      delayMicroseconds(HALF_DELTA);
        //      digitalWrite(DATA_PIN, HIGH);
        //      delayMicroseconds(HALF_DELTA);

        digitalWrite(TEST_HIGH_PIN, LOW);
        digitalWrite(TEST_LOW_PIN, HIGH);
        delay(HALF_DELTA);
        digitalWrite(TEST_HIGH_PIN, HIGH);
        digitalWrite(TEST_LOW_PIN, LOW);
        delay(HALF_DELTA);
      }

      //      Serial.print(var);
      test = true;
    }

    digitalWrite(TEST_HIGH_PIN, LOW);
    digitalWrite(TEST_LOW_PIN, LOW);
    digitalWrite(POWER_PIN, LOW);

    //    Serial.println();
  }
}

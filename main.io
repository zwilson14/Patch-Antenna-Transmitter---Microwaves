////////////////////////////////////////
// Manchester Send Data Code
// Microwaves
// Zach Wilson
// 11/16/2017
// Rev_1
////////////////////////////////////////


#define DELTA (1250) // micro-seconds
#define HALF_DELTA (DELTA/2) //half period
#define ARRAY_LENGTH (9)
#define DATA_PIN (7)
#define POWER_PIN (8)
#define TEST_HIGH_PIN (2)
#define TEST_LOW_PIN (4)

//bool dataArray[ARRAY_LENGTH];
bool dataArray[ARRAY_LENGTH] = {1, 1, 0, 0, 1, 0, 0, 1, 0};
bool test = false;

void setup()
{

  pinMode(DATA_PIN, OUTPUT);
  pinMode(POWER_PIN, OUTPUT);
  pinMode(TEST_HIGH_PIN, OUTPUT);
  pinMode(TEST_LOW_PIN, OUTPUT);

  digitalWrite(TEST_HIGH_PIN, LOW);
  digitalWrite(TEST_LOW_PIN, LOW);
  digitalWrite(POWER_PIN, LOW);
  digitalWrite(DATA_PIN, LOW);
}

void loop()
{

//  if (!test)
//  {
//
//    //    Serial.println("-------");
//
//    for (int x = 0; x < ARRAY_LENGTH; x++)
//    {
//
//      digitalWrite(POWER_PIN, HIGH);
//
//      if (dataArray[x] == HIGH)
//      {
//        digitalWrite(DATA_PIN, HIGH);
//        digitalWrite(TEST_HIGH_PIN, HIGH);
//        digitalWrite(TEST_LOW_PIN, LOW);
//        delayMicroseconds(HALF_DELTA);
//        digitalWrite(DATA_PIN, LOW);
//        digitalWrite(TEST_LOW_PIN, HIGH);
//        digitalWrite(TEST_HIGH_PIN, LOW);
//        delayMicroseconds(HALF_DELTA);
//      }
//
//      else
//      {
//        digitalWrite(DATA_PIN, LOW);
//        digitalWrite(TEST_LOW_PIN, HIGH);
//        digitalWrite(TEST_HIGH_PIN, LOW);
//        delayMicroseconds(HALF_DELTA);
//        digitalWrite(DATA_PIN, HIGH);
//        digitalWrite(TEST_HIGH_PIN, HIGH);
//        digitalWrite(TEST_LOW_PIN, LOW);
//        delayMicroseconds(HALF_DELTA);
//      }
//
//      test = true;
//    }

    digitalWrite(TEST_HIGH_PIN, LOW);
    digitalWrite(TEST_LOW_PIN, LOW);
    digitalWrite(POWER_PIN, LOW);


//  }
//    // For Testing without the Receiver group
//    delay(1000);
//    digitalWrite(POWER_PIN, HIGH);
//    digitalWrite(DATA_PIN, HIGH);
//    delay(3000);
//    digitalWrite(DATA_PIN, LOW);
//    delay(3000);
//    digitalWrite(DATA_PIN, HIGH);
//    delay(3000);
//    digitalWrite(POWER_PIN, LOW);  
//    while (1);

// Square Wave Test:
    digitalWrite(POWER_PIN, HIGH);
    digitalWrite(DATA_PIN, HIGH);
    delay(3000);
    digitalWrite(DATA_PIN, LOW);
    delay(3000);    
    digitalWrite(DATA_PIN, HIGH);
    delay(3000);
    digitalWrite(POWER_PIN, LOW);  
    while(1);          
}

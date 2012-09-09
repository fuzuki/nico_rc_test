/*
  Radio Control System
            2011.12 Fuzuki
 */
#define F 13
#define B 12
#define R 11
#define L 10

void setup() {
  // Open serial communications:
  Serial.begin(9600);
  pinMode(F, OUTPUT); 
  pinMode(B, OUTPUT); 
  pinMode(R, OUTPUT); 
  pinMode(L, OUTPUT); 
}

void loop() {
  // get any incoming bytes:
  if (Serial.available() > 0) {
    int thisChar = Serial.read();

    // say what was sent:
    if(thisChar == 'q'){
      digitalWrite(F, HIGH);
      digitalWrite(L, HIGH);
      delay(500);
    }else if(thisChar == 'w'){
      digitalWrite(F, HIGH);
      delay(500);
    }else if(thisChar == 'e'){
      digitalWrite(F, HIGH);
      digitalWrite(R, HIGH);
      delay(500);
    }else if(thisChar == 'a'){
      digitalWrite(B, HIGH);
      digitalWrite(L, HIGH);
      delay(500);
    }else if(thisChar == 's'){
      digitalWrite(B, HIGH);
      delay(500);
    }else if(thisChar == 'd'){
      digitalWrite(B, HIGH);
      digitalWrite(R, HIGH);
      delay(500);
    }else{
      //nothing to do.
    }
    digitalWrite(F,LOW);
    digitalWrite(B,LOW);
    digitalWrite(R,LOW);
    digitalWrite(L,LOW);        
  }
}

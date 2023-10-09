#include <Wire.h>
 
byte RxByte;
 
void I2C_RxHandler(int numBytes)
{
  while(Wire.available()) {  // Read Any Received Data
    RxByte = Wire.read();
    Serial.println(RxByte);
  }
}
 
void setup() {
  Serial.begin(9600);
  Wire.begin(0x55); // Initialize I2C (Slave Mode: address=0x55 )
  Wire.onReceive(I2C_RxHandler);
}
 
void loop() {
  // Nothing To Be Done Here
}
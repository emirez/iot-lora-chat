// rf95_reliable_datagram_client.pde
// -*- mode: C++ -*-
// Example sketch showing how to create a simple addressed, reliable messaging client
// with the RHReliableDatagram class, using the RH_RF95 driver to control a RF95 radio.
// It is designed to work with the other example rf95_reliable_datagram_server
// Tested with Anarduino MiniWirelessLoRa

#include <SoftwareSerial.h>
#include <RHReliableDatagram.h>
#include <RH_RF95.h>

#define MY_ADDRESS 1
#define OTHER_ADDRESS 2


RH_RF95 driver;

// Class to manage message delivery and receipt, using the driver declared above
RHReliableDatagram manager(driver, MY_ADDRESS);

void setup()
{
  Serial.begin(9600);
  if (!manager.init())Serial.println("init failed");

  // Defaults after init are 434.0MHz, 13dBm, Bw = 125 kHz, Cr = 4/5, Sf = 128chips/symbol, CRC on

  // The default transmitter power is 13dBm, using PA_BOOST.
  // If you are using RFM95/96/97/98 modules which uses the PA_BOOST transmitter pin, then
  // you can set transmitter powers from 5 to 23 dBm:
  driver.setTxPower(5, false);
  //
  pinMode(LED_BUILTIN, OUTPUT);
  digitalWrite(LED_BUILTIN, 0);
}

uint8_t buf[RH_RF95_MAX_MESSAGE_LEN];
uint8_t inbuf[RH_RF95_MAX_MESSAGE_LEN];
uint8_t idx = 0;

void send(int l) {
  digitalWrite(LED_BUILTIN, 0);
  manager.sendtoWait(buf, l, OTHER_ADDRESS);
  digitalWrite(LED_BUILTIN, 0);
}

void loop() {
	if (Serial.available() > 0) {
		uint8_t c = Serial.read();
		buf[idx++] = c;
		if ( c == '\n') {
			send(idx-1);
			idx = 0;
			memset(buf,0,sizeof(buf));
		}
	}
if(manager.available()){
	uint8_t len = sizeof(inbuf);
	uint8_t from = 0;
	if(manager.recvfromAck(inbuf, &len, &from)) {
		Serial.print("> ");
    Serial.println(len);
		Serial.println((const char *)inbuf);
    }
	}
}

win32 {
    HOMEDIR += $$(USERPROFILE)
}
else {
    HOMEDIR += $$(HOME)
}

INCLUDEPATH += "$${HOMEDIR}/.platformio/packages/framework-arduinoavr/cores/arduino"
INCLUDEPATH += "$${HOMEDIR}/.platformio/packages/framework-arduinoavr/variants/standard"
INCLUDEPATH += "$${HOMEDIR}/Documents/GitHub/dragino_868_chat/src"
INCLUDEPATH += "$${HOMEDIR}/.platformio/packages/framework-arduinoavr/libraries/__cores__/arduino/SPI/src"
INCLUDEPATH += "$${HOMEDIR}/.platformio/packages/framework-arduinoavr/libraries/__cores__/arduino/SoftwareSerial/src"
INCLUDEPATH += "$${HOMEDIR}/.platformio/packages/framework-arduinoavr/libraries/__cores__/arduino/EEPROM/src"
INCLUDEPATH += "$${HOMEDIR}/.platformio/packages/framework-arduinoavr/libraries/__cores__/arduino/SPI/src"
INCLUDEPATH += "$${HOMEDIR}/.platformio/packages/framework-arduinoavr/libraries/__cores__/arduino/SPI1/src"
INCLUDEPATH += "$${HOMEDIR}/.platformio/packages/framework-arduinoavr/libraries/__cores__/arduino/Servo/src"
INCLUDEPATH += "$${HOMEDIR}/.platformio/packages/framework-arduinoavr/libraries/__cores__/arduino/SoftwareSerial/src"
INCLUDEPATH += "$${HOMEDIR}/.platformio/packages/framework-arduinoavr/libraries/__cores__/arduino/Wire/src"
INCLUDEPATH += "$${HOMEDIR}/.platformio/packages/framework-arduinoavr/libraries/__cores__/arduino/Wire1/src"
INCLUDEPATH += "$${HOMEDIR}/.platformio/packages/framework-arduinoavr/libraries/Adafruit_CircuitPlayground"
INCLUDEPATH += "$${HOMEDIR}/.platformio/packages/framework-arduinoavr/libraries/Adafruit_CircuitPlayground/utility"
INCLUDEPATH += "$${HOMEDIR}/.platformio/packages/framework-arduinoavr/libraries/Bridge/src"
INCLUDEPATH += "$${HOMEDIR}/.platformio/packages/framework-arduinoavr/libraries/Esplora/src"
INCLUDEPATH += "$${HOMEDIR}/.platformio/packages/framework-arduinoavr/libraries/Ethernet/src"
INCLUDEPATH += "$${HOMEDIR}/.platformio/packages/framework-arduinoavr/libraries/Firmata"
INCLUDEPATH += "$${HOMEDIR}/.platformio/packages/framework-arduinoavr/libraries/Firmata/utility"
INCLUDEPATH += "$${HOMEDIR}/.platformio/packages/framework-arduinoavr/libraries/GSM/src"
INCLUDEPATH += "$${HOMEDIR}/.platformio/packages/framework-arduinoavr/libraries/HID/src"
INCLUDEPATH += "$${HOMEDIR}/.platformio/packages/framework-arduinoavr/libraries/Keyboard/src"
INCLUDEPATH += "$${HOMEDIR}/.platformio/packages/framework-arduinoavr/libraries/LiquidCrystal/src"
INCLUDEPATH += "$${HOMEDIR}/.platformio/packages/framework-arduinoavr/libraries/Mouse/src"
INCLUDEPATH += "$${HOMEDIR}/.platformio/packages/framework-arduinoavr/libraries/Robot_Control/src"
INCLUDEPATH += "$${HOMEDIR}/.platformio/packages/framework-arduinoavr/libraries/Robot_Motor/src"
INCLUDEPATH += "$${HOMEDIR}/.platformio/packages/framework-arduinoavr/libraries/SD/src"
INCLUDEPATH += "$${HOMEDIR}/.platformio/packages/framework-arduinoavr/libraries/Scheduler/src"
INCLUDEPATH += "$${HOMEDIR}/.platformio/packages/framework-arduinoavr/libraries/SpacebrewYun/src"
INCLUDEPATH += "$${HOMEDIR}/.platformio/packages/framework-arduinoavr/libraries/Stepper/src"
INCLUDEPATH += "$${HOMEDIR}/.platformio/packages/framework-arduinoavr/libraries/TFT/src"
INCLUDEPATH += "$${HOMEDIR}/.platformio/packages/framework-arduinoavr/libraries/Temboo/src"
INCLUDEPATH += "$${HOMEDIR}/.platformio/packages/framework-arduinoavr/libraries/USBHost/src"
INCLUDEPATH += "$${HOMEDIR}/.platformio/packages/framework-arduinoavr/libraries/WiFi/src"
INCLUDEPATH += "$${HOMEDIR}/.platformio/packages/toolchain-atmelavr/avr/include"
INCLUDEPATH += "$${HOMEDIR}/.platformio/packages/toolchain-atmelavr/lib/gcc/avr/4.9.2/include"
INCLUDEPATH += "$${HOMEDIR}/.platformio/packages/toolchain-atmelavr/lib/gcc/avr/4.9.2/include-fixed"
INCLUDEPATH += "$${HOMEDIR}/.platformio/packages/tool-unity"

DEFINES += "F_CPU=16000000L"
DEFINES += "PLATFORMIO=30500"
DEFINES += "ARDUINO_ARCH_AVR"
DEFINES += "ARDUINO_AVR_UNO"
DEFINES += "ARDUINO=10618"
DEFINES += "__AVR_ATmega328P__"

OTHER_FILES += platformio.ini

SOURCES += src/RHMesh.cpp
SOURCES += src/RHHardwareSPI.cpp
SOURCES += src/RH_RF95.cpp
SOURCES += src/RHReliableDatagram.cpp
SOURCES += src/RHGenericDriver.cpp
HEADERS += src/RHMesh.h
SOURCES += src/RHRouter.cpp
HEADERS += src/RHGenericDriver.h
HEADERS += src/RHHardwareSPI.h
HEADERS += src/RHGenericSPI.h
SOURCES += src/RHGenericSPI.cpp
SOURCES += src/RHSPIDriver.cpp
HEADERS += src/RadioHead.h
HEADERS += src/RHDatagram.h
HEADERS += src/RHSPIDriver.h
HEADERS += src/RH_RF95.h
HEADERS += src/RHReliableDatagram.h
HEADERS += src/RHRouter.h
SOURCES += src/RHDatagram.cpp
SOURCES += src/main.cpp

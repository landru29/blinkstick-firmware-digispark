#!/bin/bash

# Serial
printf '\0BS012345-1.4' > eeprom.dat

# mode:
# - 0 => RGB
# - 1 => RGB_INVERSE
# - 2 => WS2812
printf '\2' >> eeprom.dat
for i in {1..498}
do
   printf '\0' >>eeprom.dat
done

intelhex write eeprom.dat >eeprom.hex
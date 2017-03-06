#!/bin/bash

printf '\0BS012345-1.4' > eeprom.dat
for i in {1..499}
do
   printf '\0' >>eeprom.dat
done

intelhex write eeprom.dat >eeprom.hex
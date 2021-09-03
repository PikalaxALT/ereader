#!/bin/bash

OBJDUMP="$DEVKITARM/bin/arm-none-eabi-objdump -D -bbinary -marmv4t"
OPTIONS="--start-address=$(($1)) --stop-address=$(($1 + $2))"
$OBJDUMP $OPTIONS baserom.gba > baserom.dump
$OBJDUMP $OPTIONS ereader.gba > ereader.dump
diff -u baserom.dump ereader.dump

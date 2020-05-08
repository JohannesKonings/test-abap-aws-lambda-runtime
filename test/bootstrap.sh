#!/bin/sh

echo "start"
sourcecode=$(cat ./test/zcl_handler.clas.abap)
echo $sourcecode
sourcecode=$sourcecode _HANDLER='zcl_handler.clas.abap' node ./test/runtime.js
echo "ende"

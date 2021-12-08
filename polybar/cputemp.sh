#!/bin/bash

echo $(sensors | grep Tccd1 | awk '{print $2}') 

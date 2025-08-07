#!/bin/bash

echo "all varibles are pass to the sript;: $@"
echo "number of varibles passed: $#"
echo "sript name: $0"
echo "present working dirctory: $pwd"
echo "home dirictory of the current user: $HOME"
echo "PID of the sript execute now: $$"
slep 100 &
echo "pid of the last command: $!"
#!/bin/bash

## Change screenresolution
brew install screenresolution
screenresolution list
screenresolution set 1280x800x32

# Connect Jump Desktop
/Applications/Jump\ Desktop\ Connect.app/Contents/MacOS/JumpConnect --connectcode $CONNECT_CODE

#!/bin/sh
make -C /Users/moliver/Documents/Code/OLIreverb/build -f /Users/moliver/Documents/Code/OLIreverb/build/CMakeScripts/OLIreverb_postBuildPhase.make$CONFIGURATION OBJDIR=$(basename "$OBJECT_FILE_DIR_normal") all


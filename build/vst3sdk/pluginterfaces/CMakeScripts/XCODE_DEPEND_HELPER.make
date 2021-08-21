# DO NOT EDIT
# This makefile makes sure all linkable targets are
# up-to-date with anything they link to
default:
	echo "Do not invoke directly"

# Rules to remove targets that are older than anything to which they
# link.  This forces Xcode to relink the targets from scratch.  It
# does not seem to check these dependencies itself.
PostBuild.pluginterfaces.Debug:
/Users/moliver/Documents/Code/OLIreverb/build/lib/Debug/libpluginterfaces.a:
	/bin/rm -f /Users/moliver/Documents/Code/OLIreverb/build/lib/Debug/libpluginterfaces.a


PostBuild.pluginterfaces.Release:
/Users/moliver/Documents/Code/OLIreverb/build/lib/Release/libpluginterfaces.a:
	/bin/rm -f /Users/moliver/Documents/Code/OLIreverb/build/lib/Release/libpluginterfaces.a




# For each target create a dummy ruleso the target does not have to exist

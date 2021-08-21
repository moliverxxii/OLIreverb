# DO NOT EDIT
# This makefile makes sure all linkable targets are
# up-to-date with anything they link to
default:
	echo "Do not invoke directly"

# Rules to remove targets that are older than anything to which they
# link.  This forces Xcode to relink the targets from scratch.  It
# does not seem to check these dependencies itself.
PostBuild.base.Debug:
/Users/moliver/Documents/Code/OLIreverb/build/lib/Debug/libbase.a:
	/bin/rm -f /Users/moliver/Documents/Code/OLIreverb/build/lib/Debug/libbase.a


PostBuild.base.Release:
/Users/moliver/Documents/Code/OLIreverb/build/lib/Release/libbase.a:
	/bin/rm -f /Users/moliver/Documents/Code/OLIreverb/build/lib/Release/libbase.a




# For each target create a dummy ruleso the target does not have to exist

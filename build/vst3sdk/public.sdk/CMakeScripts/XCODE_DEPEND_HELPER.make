# DO NOT EDIT
# This makefile makes sure all linkable targets are
# up-to-date with anything they link to
default:
	echo "Do not invoke directly"

# Rules to remove targets that are older than anything to which they
# link.  This forces Xcode to relink the targets from scratch.  It
# does not seem to check these dependencies itself.
PostBuild.sdk.Debug:
/Users/moliver/Documents/Code/OLIreverb/build/lib/Debug/libsdk.a:
	/bin/rm -f /Users/moliver/Documents/Code/OLIreverb/build/lib/Debug/libsdk.a


PostBuild.sdk_common.Debug:
/Users/moliver/Documents/Code/OLIreverb/build/lib/Debug/libsdk_common.a:
	/bin/rm -f /Users/moliver/Documents/Code/OLIreverb/build/lib/Debug/libsdk_common.a


PostBuild.sdk_hosting.Debug:
/Users/moliver/Documents/Code/OLIreverb/build/lib/Debug/libsdk_hosting.a:
	/bin/rm -f /Users/moliver/Documents/Code/OLIreverb/build/lib/Debug/libsdk_hosting.a


PostBuild.sdk.Release:
/Users/moliver/Documents/Code/OLIreverb/build/lib/Release/libsdk.a:
	/bin/rm -f /Users/moliver/Documents/Code/OLIreverb/build/lib/Release/libsdk.a


PostBuild.sdk_common.Release:
/Users/moliver/Documents/Code/OLIreverb/build/lib/Release/libsdk_common.a:
	/bin/rm -f /Users/moliver/Documents/Code/OLIreverb/build/lib/Release/libsdk_common.a


PostBuild.sdk_hosting.Release:
/Users/moliver/Documents/Code/OLIreverb/build/lib/Release/libsdk_hosting.a:
	/bin/rm -f /Users/moliver/Documents/Code/OLIreverb/build/lib/Release/libsdk_hosting.a




# For each target create a dummy ruleso the target does not have to exist

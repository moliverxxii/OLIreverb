# DO NOT EDIT
# This makefile makes sure all linkable targets are
# up-to-date with anything they link to
default:
	echo "Do not invoke directly"

# Rules to remove targets that are older than anything to which they
# link.  This forces Xcode to relink the targets from scratch.  It
# does not seem to check these dependencies itself.
PostBuild.OLIreverb.Debug:
PostBuild.vstgui_support.Debug: /Users/moliver/Documents/Code/OLIreverb/build/VST3/Debug/OLIreverb.bundle/Contents/MacOS/OLIreverb
PostBuild.sdk.Debug: /Users/moliver/Documents/Code/OLIreverb/build/VST3/Debug/OLIreverb.bundle/Contents/MacOS/OLIreverb
PostBuild.vstgui_uidescription.Debug: /Users/moliver/Documents/Code/OLIreverb/build/VST3/Debug/OLIreverb.bundle/Contents/MacOS/OLIreverb
PostBuild.vstgui.Debug: /Users/moliver/Documents/Code/OLIreverb/build/VST3/Debug/OLIreverb.bundle/Contents/MacOS/OLIreverb
PostBuild.sdk_common.Debug: /Users/moliver/Documents/Code/OLIreverb/build/VST3/Debug/OLIreverb.bundle/Contents/MacOS/OLIreverb
PostBuild.base.Debug: /Users/moliver/Documents/Code/OLIreverb/build/VST3/Debug/OLIreverb.bundle/Contents/MacOS/OLIreverb
PostBuild.pluginterfaces.Debug: /Users/moliver/Documents/Code/OLIreverb/build/VST3/Debug/OLIreverb.bundle/Contents/MacOS/OLIreverb
/Users/moliver/Documents/Code/OLIreverb/build/VST3/Debug/OLIreverb.bundle/Contents/MacOS/OLIreverb:\
	/Users/moliver/Documents/Code/OLIreverb/build/lib/Debug/libvstgui_support.a\
	/Users/moliver/Documents/Code/OLIreverb/build/lib/Debug/libsdk.a\
	/Users/moliver/Documents/Code/OLIreverb/build/lib/Debug/libvstgui_uidescription.a\
	/Users/moliver/Documents/Code/OLIreverb/build/lib/Debug/libvstgui.a\
	/Users/moliver/Documents/Code/OLIreverb/build/lib/Debug/libsdk_common.a\
	/Users/moliver/Documents/Code/OLIreverb/build/lib/Debug/libbase.a\
	/Users/moliver/Documents/Code/OLIreverb/build/lib/Debug/libpluginterfaces.a
	/bin/rm -f /Users/moliver/Documents/Code/OLIreverb/build/VST3/Debug/OLIreverb.bundle/Contents/MacOS/OLIreverb


PostBuild.base.Debug:
/Users/moliver/Documents/Code/OLIreverb/build/lib/Debug/libbase.a:
	/bin/rm -f /Users/moliver/Documents/Code/OLIreverb/build/lib/Debug/libbase.a


PostBuild.pluginterfaces.Debug:
/Users/moliver/Documents/Code/OLIreverb/build/lib/Debug/libpluginterfaces.a:
	/bin/rm -f /Users/moliver/Documents/Code/OLIreverb/build/lib/Debug/libpluginterfaces.a


PostBuild.sdk.Debug:
/Users/moliver/Documents/Code/OLIreverb/build/lib/Debug/libsdk.a:
	/bin/rm -f /Users/moliver/Documents/Code/OLIreverb/build/lib/Debug/libsdk.a


PostBuild.sdk_common.Debug:
/Users/moliver/Documents/Code/OLIreverb/build/lib/Debug/libsdk_common.a:
	/bin/rm -f /Users/moliver/Documents/Code/OLIreverb/build/lib/Debug/libsdk_common.a


PostBuild.sdk_hosting.Debug:
/Users/moliver/Documents/Code/OLIreverb/build/lib/Debug/libsdk_hosting.a:
	/bin/rm -f /Users/moliver/Documents/Code/OLIreverb/build/lib/Debug/libsdk_hosting.a


PostBuild.validator.Debug:
PostBuild.sdk_hosting.Debug: /Users/moliver/Documents/Code/OLIreverb/build/bin/Debug/validator
PostBuild.sdk_common.Debug: /Users/moliver/Documents/Code/OLIreverb/build/bin/Debug/validator
PostBuild.base.Debug: /Users/moliver/Documents/Code/OLIreverb/build/bin/Debug/validator
PostBuild.pluginterfaces.Debug: /Users/moliver/Documents/Code/OLIreverb/build/bin/Debug/validator
/Users/moliver/Documents/Code/OLIreverb/build/bin/Debug/validator:\
	/Users/moliver/Documents/Code/OLIreverb/build/lib/Debug/libsdk_hosting.a\
	/Users/moliver/Documents/Code/OLIreverb/build/lib/Debug/libsdk_common.a\
	/Users/moliver/Documents/Code/OLIreverb/build/lib/Debug/libbase.a\
	/Users/moliver/Documents/Code/OLIreverb/build/lib/Debug/libpluginterfaces.a
	/bin/rm -f /Users/moliver/Documents/Code/OLIreverb/build/bin/Debug/validator


PostBuild.vstgui.Debug:
/Users/moliver/Documents/Code/OLIreverb/build/lib/Debug/libvstgui.a:
	/bin/rm -f /Users/moliver/Documents/Code/OLIreverb/build/lib/Debug/libvstgui.a


PostBuild.vstgui_support.Debug:
/Users/moliver/Documents/Code/OLIreverb/build/lib/Debug/libvstgui_support.a:
	/bin/rm -f /Users/moliver/Documents/Code/OLIreverb/build/lib/Debug/libvstgui_support.a


PostBuild.vstgui_uidescription.Debug:
/Users/moliver/Documents/Code/OLIreverb/build/lib/Debug/libvstgui_uidescription.a:
	/bin/rm -f /Users/moliver/Documents/Code/OLIreverb/build/lib/Debug/libvstgui_uidescription.a


PostBuild.OLIreverb.Release:
PostBuild.vstgui_support.Release: /Users/moliver/Documents/Code/OLIreverb/build/VST3/Release/OLIreverb.bundle/Contents/MacOS/OLIreverb
PostBuild.sdk.Release: /Users/moliver/Documents/Code/OLIreverb/build/VST3/Release/OLIreverb.bundle/Contents/MacOS/OLIreverb
PostBuild.vstgui_uidescription.Release: /Users/moliver/Documents/Code/OLIreverb/build/VST3/Release/OLIreverb.bundle/Contents/MacOS/OLIreverb
PostBuild.vstgui.Release: /Users/moliver/Documents/Code/OLIreverb/build/VST3/Release/OLIreverb.bundle/Contents/MacOS/OLIreverb
PostBuild.sdk_common.Release: /Users/moliver/Documents/Code/OLIreverb/build/VST3/Release/OLIreverb.bundle/Contents/MacOS/OLIreverb
PostBuild.base.Release: /Users/moliver/Documents/Code/OLIreverb/build/VST3/Release/OLIreverb.bundle/Contents/MacOS/OLIreverb
PostBuild.pluginterfaces.Release: /Users/moliver/Documents/Code/OLIreverb/build/VST3/Release/OLIreverb.bundle/Contents/MacOS/OLIreverb
/Users/moliver/Documents/Code/OLIreverb/build/VST3/Release/OLIreverb.bundle/Contents/MacOS/OLIreverb:\
	/Users/moliver/Documents/Code/OLIreverb/build/lib/Release/libvstgui_support.a\
	/Users/moliver/Documents/Code/OLIreverb/build/lib/Release/libsdk.a\
	/Users/moliver/Documents/Code/OLIreverb/build/lib/Release/libvstgui_uidescription.a\
	/Users/moliver/Documents/Code/OLIreverb/build/lib/Release/libvstgui.a\
	/Users/moliver/Documents/Code/OLIreverb/build/lib/Release/libsdk_common.a\
	/Users/moliver/Documents/Code/OLIreverb/build/lib/Release/libbase.a\
	/Users/moliver/Documents/Code/OLIreverb/build/lib/Release/libpluginterfaces.a
	/bin/rm -f /Users/moliver/Documents/Code/OLIreverb/build/VST3/Release/OLIreverb.bundle/Contents/MacOS/OLIreverb


PostBuild.base.Release:
/Users/moliver/Documents/Code/OLIreverb/build/lib/Release/libbase.a:
	/bin/rm -f /Users/moliver/Documents/Code/OLIreverb/build/lib/Release/libbase.a


PostBuild.pluginterfaces.Release:
/Users/moliver/Documents/Code/OLIreverb/build/lib/Release/libpluginterfaces.a:
	/bin/rm -f /Users/moliver/Documents/Code/OLIreverb/build/lib/Release/libpluginterfaces.a


PostBuild.sdk.Release:
/Users/moliver/Documents/Code/OLIreverb/build/lib/Release/libsdk.a:
	/bin/rm -f /Users/moliver/Documents/Code/OLIreverb/build/lib/Release/libsdk.a


PostBuild.sdk_common.Release:
/Users/moliver/Documents/Code/OLIreverb/build/lib/Release/libsdk_common.a:
	/bin/rm -f /Users/moliver/Documents/Code/OLIreverb/build/lib/Release/libsdk_common.a


PostBuild.sdk_hosting.Release:
/Users/moliver/Documents/Code/OLIreverb/build/lib/Release/libsdk_hosting.a:
	/bin/rm -f /Users/moliver/Documents/Code/OLIreverb/build/lib/Release/libsdk_hosting.a


PostBuild.validator.Release:
PostBuild.sdk_hosting.Release: /Users/moliver/Documents/Code/OLIreverb/build/bin/Release/validator
PostBuild.sdk_common.Release: /Users/moliver/Documents/Code/OLIreverb/build/bin/Release/validator
PostBuild.base.Release: /Users/moliver/Documents/Code/OLIreverb/build/bin/Release/validator
PostBuild.pluginterfaces.Release: /Users/moliver/Documents/Code/OLIreverb/build/bin/Release/validator
/Users/moliver/Documents/Code/OLIreverb/build/bin/Release/validator:\
	/Users/moliver/Documents/Code/OLIreverb/build/lib/Release/libsdk_hosting.a\
	/Users/moliver/Documents/Code/OLIreverb/build/lib/Release/libsdk_common.a\
	/Users/moliver/Documents/Code/OLIreverb/build/lib/Release/libbase.a\
	/Users/moliver/Documents/Code/OLIreverb/build/lib/Release/libpluginterfaces.a
	/bin/rm -f /Users/moliver/Documents/Code/OLIreverb/build/bin/Release/validator


PostBuild.vstgui.Release:
/Users/moliver/Documents/Code/OLIreverb/build/lib/Release/libvstgui.a:
	/bin/rm -f /Users/moliver/Documents/Code/OLIreverb/build/lib/Release/libvstgui.a


PostBuild.vstgui_support.Release:
/Users/moliver/Documents/Code/OLIreverb/build/lib/Release/libvstgui_support.a:
	/bin/rm -f /Users/moliver/Documents/Code/OLIreverb/build/lib/Release/libvstgui_support.a


PostBuild.vstgui_uidescription.Release:
/Users/moliver/Documents/Code/OLIreverb/build/lib/Release/libvstgui_uidescription.a:
	/bin/rm -f /Users/moliver/Documents/Code/OLIreverb/build/lib/Release/libvstgui_uidescription.a




# For each target create a dummy ruleso the target does not have to exist
/Users/moliver/Documents/Code/OLIreverb/build/lib/Debug/libbase.a:
/Users/moliver/Documents/Code/OLIreverb/build/lib/Debug/libpluginterfaces.a:
/Users/moliver/Documents/Code/OLIreverb/build/lib/Debug/libsdk.a:
/Users/moliver/Documents/Code/OLIreverb/build/lib/Debug/libsdk_common.a:
/Users/moliver/Documents/Code/OLIreverb/build/lib/Debug/libsdk_hosting.a:
/Users/moliver/Documents/Code/OLIreverb/build/lib/Debug/libvstgui.a:
/Users/moliver/Documents/Code/OLIreverb/build/lib/Debug/libvstgui_support.a:
/Users/moliver/Documents/Code/OLIreverb/build/lib/Debug/libvstgui_uidescription.a:
/Users/moliver/Documents/Code/OLIreverb/build/lib/Release/libbase.a:
/Users/moliver/Documents/Code/OLIreverb/build/lib/Release/libpluginterfaces.a:
/Users/moliver/Documents/Code/OLIreverb/build/lib/Release/libsdk.a:
/Users/moliver/Documents/Code/OLIreverb/build/lib/Release/libsdk_common.a:
/Users/moliver/Documents/Code/OLIreverb/build/lib/Release/libsdk_hosting.a:
/Users/moliver/Documents/Code/OLIreverb/build/lib/Release/libvstgui.a:
/Users/moliver/Documents/Code/OLIreverb/build/lib/Release/libvstgui_support.a:
/Users/moliver/Documents/Code/OLIreverb/build/lib/Release/libvstgui_uidescription.a:

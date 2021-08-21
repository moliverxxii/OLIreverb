cmake_minimum_required(VERSION 3.14.0)

set(vst3sdk_SOURCE_DIR /Users/moliver/Documents/Code/VST_SDK/VST3_SDK)
if(NOT vst3sdk_SOURCE_DIR)
    message(FATAL_ERROR "Path to VST3 SDK is empty!")
endif()

project(OLIreverb)
  
set(SMTG_VSTGUI_ROOT "${vst3sdk_SOURCE_DIR}")

add_subdirectory(${vst3sdk_SOURCE_DIR} ${PROJECT_BINARY_DIR}/vst3sdk)
smtg_enable_vst3_sdk()

smtg_add_vst3plugin(OLIreverb     
    source/version.h
    source/cids.h
    source/processor.h
    source/processor.cpp
    source/controller.h
    source/controller.cpp
    source/entry.cpp
)

#- VSTGUI Wanted ----
if(SMTG_ADD_VSTGUI)
	target_sources(OLIreverb
		PRIVATE
			resource/editor.uidesc
	)
    target_link_libraries(OLIreverb
        PRIVATE
            vstgui_support
    )
    smtg_add_vst3_resource(OLIreverb "resource/editor.uidesc")
endif()
# -------------------

smtg_add_vst3_snapshot(OLIreverb resource/1F47CB991F695EC5B98EDD2DC627B7A7_snapshot.png)
smtg_add_vst3_snapshot(OLIreverb resource/1F47CB991F695EC5B98EDD2DC627B7A7_snapshot_2.0x.png)

target_link_libraries(OLIreverb
    PRIVATE
        sdk
)

if(SMTG_MAC)
    smtg_set_bundle(OLIreverb INFOPLIST 
        "${CMAKE_CURRENT_LIST_DIR}/resource/Info.plist" 
        PREPROCESS
    )
elseif(SMTG_WIN)
    target_sources(OLIreverb PRIVATE 
        resource/win32resource.rc
    )
    set_property(DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR} PROPERTY VS_STARTUP_PROJECT OLIreverb)
	
	set_target_properties(OLIreverb PROPERTIES
		VS_DEBUGGER_COMMAND
			"$(ProgramW6432)/Steinberg/VST3PluginTestHost/VST3PluginTestHost.exe"
		VS_DEBUGGER_COMMAND_ARGUMENTS
			" --pluginfolder \"$(OutDir)\" "
	)
endif()



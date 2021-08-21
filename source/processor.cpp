//------------------------------------------------------------------------
// Copyright(c) 2021 .
//------------------------------------------------------------------------

#include "processor.h"
#include "cids.h"
#include <math.h>

#include "base/source/fstreamer.h"
#include "pluginterfaces/vst/ivstparameterchanges.h"

using namespace Steinberg;

namespace MyCompanyName {
//------------------------------------------------------------------------
// OLIreverbProcessor
//------------------------------------------------------------------------
OLIreverbProcessor::OLIreverbProcessor ()
{
	//--- set the wanted controller for our processor
	setControllerClass (kOLIreverbControllerUID);
}

//------------------------------------------------------------------------
OLIreverbProcessor::~OLIreverbProcessor ()
{}

//------------------------------------------------------------------------
tresult PLUGIN_API OLIreverbProcessor::initialize (FUnknown* context)
{
	// Here the Plug-in will be instanciated
	
	//---always initialize the parent-------
	tresult result = AudioEffect::initialize (context);
	// if everything Ok, continue
	if (result != kResultOk)
	{
		return result;
	}

	//--- create Audio IO ------
	addAudioInput (STR16 ("Stereo In"), Steinberg::Vst::SpeakerArr::kStereo);
	addAudioOutput (STR16 ("Stereo Out"), Steinberg::Vst::SpeakerArr::kStereo);

	/* If you don't need an event bus, you can remove the next line */
	addEventInput (STR16 ("Event In"), 1);
    
    response = new AudioFile<Vst::Sample32>();
    std::string path = "/Users/moliver/Documents/Code/OLIreverb/sh A108L RI.wav";
    response->load(path);
    


	return kResultOk;
}

//------------------------------------------------------------------------
tresult PLUGIN_API OLIreverbProcessor::terminate ()
{
	// Here the Plug-in will be de-instanciated, last possibility to remove some memory!
	
	//---do not forget to call parent ------
	return AudioEffect::terminate ();
}

//------------------------------------------------------------------------
tresult PLUGIN_API OLIreverbProcessor::setActive (TBool state)
{
    //--- called when the Plug-in is enable/disable (On/Off) -----
	return AudioEffect::setActive (state);
}

//------------------------------------------------------------------------
tresult PLUGIN_API OLIreverbProcessor::process (Vst::ProcessData& data)
{
	//--- First : Read inputs parameter changes-----------

    if (data.inputParameterChanges)
    {
        int32 numParamsChanged = data.inputParameterChanges->getParameterCount ();
        for (int32 index = 0; index < numParamsChanged; index++)
        {
            if (auto* paramQueue = data.inputParameterChanges->getParameterData (index))
            {
                Vst::ParamValue value;
                int32 sampleOffset;
                int32 numPoints = paramQueue->getPointCount ();
                switch (paramQueue->getParameterId ())
                {
				}
			}
		}
	}
    if(data.numSamples > 0 && data.inputs->numChannels == 2 && data.inputs->numChannels == 2)
    {
        for(int n=0; n<data.numSamples; ++n)
        {
            Vst::Sample32 temp = data.inputs->channelBuffers32[0][n] + data.inputs->channelBuffers32[1][n];
            memory[n_mem] = temp;
            temp =0;

            for(int i=0;i<0x800; ++i)
            {
                temp += response->samples[0][i]*memory[(n_mem-i)&0xFFF];
            }
             
            for(int buffer=0; buffer<data.outputs->numChannels;++buffer)
            {
                data.outputs->channelBuffers32[buffer][n] = temp;
            }
            ++n_mem;
            n_mem &= 0xFFF;
        }
    }
	//--- Here you have to implement your processing

	return kResultOk;
}

//------------------------------------------------------------------------
tresult PLUGIN_API OLIreverbProcessor::setupProcessing (Vst::ProcessSetup& newSetup)
{
    
    

    Vst::Sample32 procMemory[200] = {0};
    Vst::Sample32 h[100] = {0};
    for(int i=0; i<100; ++i)
    {
        h[i] = 1. - (Vst::Sample32) i/100;
    }
	//--- called before any processing ----
	return AudioEffect::setupProcessing (newSetup);
}

//------------------------------------------------------------------------
tresult PLUGIN_API OLIreverbProcessor::canProcessSampleSize (int32 symbolicSampleSize)
{
	// by default kSample32 is supported
	if (symbolicSampleSize == Vst::kSample32)
		return kResultTrue;

	// disable the following comment if your processing support kSample64
	/* if (symbolicSampleSize == Vst::kSample64)
		return kResultTrue; */

	return kResultFalse;
}

//------------------------------------------------------------------------
tresult PLUGIN_API OLIreverbProcessor::setState (IBStream* state)
{
	// called when we load a preset, the model has to be reloaded
	IBStreamer streamer (state, kLittleEndian);
	
	return kResultOk;
}

//------------------------------------------------------------------------
tresult PLUGIN_API OLIreverbProcessor::getState (IBStream* state)
{
	// here we need to save the model
	IBStreamer streamer (state, kLittleEndian);

	return kResultOk;
}

//------------------------------------------------------------------------
} // namespace MyCompanyName

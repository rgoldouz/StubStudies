#!/bin/bash
fail_exit() { echo "$@" 1>&2; exit 1; }

echo "Start of job on " `date`

cd /home/hep/adm10/CMSSW/CMSSW_11_2_0_pre6/src/L1Trigger/StubStudies

source /cvmfs/cms.cern.ch/cmsset_default.sh

eval `scramv1 runtime -sh`

export LD_LIBRARY_PATH=`pwd`/lib/:`pwd`/lib64/:${LD_LIBRARY_PATH}

cmsRun test/L1TrackNtupleMaker_cfg.py inputMC=./TTBar_PU200.txt Events=-1 output=file:./TTbar_output/outputTmttOldTight.root L1Algo=TMTT StubWindow=OLD_TIGHT
cmsRun test/L1TrackNtupleMaker_cfg.py inputMC=./TTBar_PU200.txt Events=-1 output=file:./TTbar_output/outputTmttOldLoose.root L1Algo=TMTT StubWindow=OLD_LOOSE

cmsRun test/L1TrackNtupleMaker_cfg.py inputMC=./SingleElPt1p5to8_PU0.txt Events=-1 output=file:./SingleElPt1p5to8_output/outputTmttOldTight.root L1Algo=TMTT StubWindow=OLD_TIGHT
cmsRun test/L1TrackNtupleMaker_cfg.py inputMC=./SingleElPt1p5to8_PU0.txt Events=-1 output=file:./SingleElPt1p5to8_output/outputTmttOldLoose.root L1Algo=TMTT StubWindow=OLD_LOOSE

cmsRun test/L1TrackNtupleMaker_cfg.py inputMC=./SingleMuPt1p5to8_PU0.txt Events=-1 output=file:./SingleMuPt1p5to8_output/outputTmttOldTight.root L1Algo=TMTT StubWindow=OLD_TIGHT
cmsRun test/L1TrackNtupleMaker_cfg.py inputMC=./SingleMuPt1p5to8_PU0.txt Events=-1 output=file:./SingleMuPt1p5to8_output/outputTmttOldLoose.root L1Algo=TMTT StubWindow=OLD_LOOSE

echo "\nEnd of job on " `date` "\n"


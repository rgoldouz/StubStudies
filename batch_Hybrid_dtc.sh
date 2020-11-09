#!/bin/bash
fail_exit() { echo "$@" 1>&2; exit 1; }

echo "Start of job on " `date`

cd /home/hep/adm10/CMSSW/CMSSW_11_2_0_pre6/src/L1Trigger/StubStudies

source /cvmfs/cms.cern.ch/cmsset_default.sh

eval `scramv1 runtime -sh`

export LD_LIBRARY_PATH=`pwd`/lib/:`pwd`/lib64/:${LD_LIBRARY_PATH}

cmsRun test/L1TrackNtupleMaker_DTC_cfg.py inputMC=./TTBar_PU200.txt Events=-1 output=file:/vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU200_output/dtc_outputHybridOldTight.root L1Algo=HYBRID StubWindow=OLD_TIGHT Truncation=True
cmsRun test/L1TrackNtupleMaker_DTC_cfg.py inputMC=./TTBar_PU200.txt Events=-1 output=file:/vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU200_output/dtc_outputHybridOldLoose.root L1Algo=HYBRID StubWindow=OLD_LOOSE Truncation=True
cmsRun test/L1TrackNtupleMaker_DTC_cfg.py inputMC=./TTBar_PU200.txt Events=-1 output=file:/vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU200_output/dtc_noTruncation_outputHybridOldTight.root L1Algo=HYBRID StubWindow=OLD_TIGHT Truncation=False
cmsRun test/L1TrackNtupleMaker_DTC_cfg.py inputMC=./TTBar_PU200.txt Events=-1 output=file:/vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU200_output/dtc_noTruncation_outputHybridOldLoose.root L1Algo=HYBRID StubWindow=OLD_LOOSE Truncation=False

cmsRun test/L1TrackNtupleMaker_DTC_cfg.py inputMC=./TTBar_PU0.txt Events=-1 output=file:/vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU0_output/dtc_outputHybridOldTight.root L1Algo=HYBRID StubWindow=OLD_TIGHT Truncation=True
cmsRun test/L1TrackNtupleMaker_DTC_cfg.py inputMC=./TTBar_PU0.txt Events=-1 output=file:/vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU0_output/dtc_outputHybridOldLoose.root L1Algo=HYBRID StubWindow=OLD_LOOSE Truncation=True
cmsRun test/L1TrackNtupleMaker_DTC_cfg.py inputMC=./TTBar_PU0.txt Events=-1 output=file:/vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU0_output/dtc_noTruncation_outputHybridOldTight.root L1Algo=HYBRID StubWindow=OLD_TIGHT Truncation=False
cmsRun test/L1TrackNtupleMaker_DTC_cfg.py inputMC=./TTBar_PU0.txt Events=-1 output=file:/vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU0_output/dtc_noTruncation_outputHybridOldLoose.root L1Algo=HYBRID StubWindow=OLD_LOOSE Truncation=False

cmsRun test/L1TrackNtupleMaker_DTC_cfg.py inputMC=./SingleElPt1p5to8_PU0.txt Events=-1 output=file:/vols/cms/adm10/MC/TMTT/StubStudies/SingleElPt1p5to8_output/dtc_outputHybridOldTight.root L1Algo=HYBRID StubWindow=OLD_TIGHT Truncation=True
cmsRun test/L1TrackNtupleMaker_DTC_cfg.py inputMC=./SingleElPt1p5to8_PU0.txt Events=-1 output=file:/vols/cms/adm10/MC/TMTT/StubStudies/SingleElPt1p5to8_output/dtc_outputHybridOldLoose.root L1Algo=HYBRID StubWindow=OLD_LOOSE Truncation=True
cmsRun test/L1TrackNtupleMaker_DTC_cfg.py inputMC=./SingleElPt1p5to8_PU0.txt Events=-1 output=file:/vols/cms/adm10/MC/TMTT/StubStudies/SingleElPt1p5to8_output/dtc_noTruncation_outputHybridOldTight.root L1Algo=HYBRID StubWindow=OLD_TIGHT Truncation=False
cmsRun test/L1TrackNtupleMaker_DTC_cfg.py inputMC=./SingleElPt1p5to8_PU0.txt Events=-1 output=file:/vols/cms/adm10/MC/TMTT/StubStudies/SingleElPt1p5to8_output/dtc_noTruncation_outputHybridOldLoose.root L1Algo=HYBRID StubWindow=OLD_LOOSE Truncation=False

cmsRun test/L1TrackNtupleMaker_DTC_cfg.py inputMC=./SingleMuPt1p5to8_PU0.txt Events=-1 output=file:/vols/cms/adm10/MC/TMTT/StubStudies/SingleMuPt1p5to8_output/dtc_outputHybridOldTight.root L1Algo=HYBRID StubWindow=OLD_TIGHT Truncation=True
cmsRun test/L1TrackNtupleMaker_DTC_cfg.py inputMC=./SingleMuPt1p5to8_PU0.txt Events=-1 output=file:/vols/cms/adm10/MC/TMTT/StubStudies/SingleMuPt1p5to8_output/dtc_outputHybridOldLoose.root L1Algo=HYBRID StubWindow=OLD_LOOSE Truncation=True
cmsRun test/L1TrackNtupleMaker_DTC_cfg.py inputMC=./SingleMuPt1p5to8_PU0.txt Events=-1 output=file:/vols/cms/adm10/MC/TMTT/StubStudies/SingleMuPt1p5to8_output/dtc_noTruncation_outputHybridOldTight.root L1Algo=HYBRID StubWindow=OLD_TIGHT Truncation=False
cmsRun test/L1TrackNtupleMaker_DTC_cfg.py inputMC=./SingleMuPt1p5to8_PU0.txt Events=-1 output=file:/vols/cms/adm10/MC/TMTT/StubStudies/SingleMuPt1p5to8_output/dtc_noTruncation_outputHybridOldLoose.root L1Algo=HYBRID StubWindow=OLD_LOOSE Truncation=False

echo "\nEnd of job on " `date` "\n"


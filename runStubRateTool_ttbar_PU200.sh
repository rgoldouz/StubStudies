#!/bin/bash
fail_exit() { echo "$@" 1>&2; exit 1; }

echo "Start of job on " `date`

cd /home/hep/adm10/CMSSW/CMSSW_11_2_0_pre6/src/L1Trigger/StubStudies

source /cvmfs/cms.cern.ch/cmsset_default.sh

eval `scramv1 runtime -sh`

export LD_LIBRARY_PATH=`pwd`/lib/:`pwd`/lib64/:${LD_LIBRARY_PATH}

echo TTbar + PU200 output
# all particles
StubRateTool -i /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU200_output/outputHybridOldLoose.root -o /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU200_output/StubRateToolOutput/outputHybridOldLoose_all.root --particle="all"
StubRateTool -i /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU200_output/outputHybridOldTight.root -o /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU200_output/StubRateToolOutput/outputHybridOldTight_all.root --particle="all"
StubRateTool -i /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU200_output/outputTmttOldLoose.root -o /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU200_output/StubRateToolOutput/outputTmttOldLoose_all.root --particle="all"
StubRateTool -i /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU200_output/outputTmttOldTight.root -o /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU200_output/StubRateToolOutput/outputTmttOldTight_all.root --particle="all"
#electrons
StubRateTool -i /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU200_output/outputHybridOldLoose.root -o /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU200_output/StubRateToolOutput/outputHybridOldLoose_ele.root --particle="ele"
StubRateTool -i /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU200_output/outputHybridOldTight.root -o /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU200_output/StubRateToolOutput/outputHybridOldTight_ele.root --particle="ele"
StubRateTool -i /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU200_output/outputTmttOldLoose.root -o /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU200_output/StubRateToolOutput/outputTmttOldLoose_ele.root --particle="ele"
StubRateTool -i /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU200_output/outputTmttOldTight.root -o /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU200_output/StubRateToolOutput/outputTmttOldTight_ele.root --particle="ele"
#muons
StubRateTool -i /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU200_output/outputHybridOldLoose.root -o /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU200_output/StubRateToolOutput/outputHybridOldLoose_mu.root --particle="mu"
StubRateTool -i /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU200_output/outputHybridOldTight.root -o /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU200_output/StubRateToolOutput/outputHybridOldTight_mu.root --particle="mu"
StubRateTool -i /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU200_output/outputTmttOldLoose.root -o /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU200_output/StubRateToolOutput/outputTmttOldLoose_mu.root --particle="mu"
StubRateTool -i /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU200_output/outputTmttOldTight.root -o /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU200_output/StubRateToolOutput/outputTmttOldTight_mu.root --particle="mu"
#pions
StubRateTool -i /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU200_output/outputHybridOldLoose.root -o /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU200_output/StubRateToolOutput/outputHybridOldLoose_pion.root --particle="pion"
StubRateTool -i /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU200_output/outputHybridOldTight.root -o /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU200_output/StubRateToolOutput/outputHybridOldTight_pion.root --particle="pion"
StubRateTool -i /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU200_output/outputTmttOldLoose.root -o /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU200_output/StubRateToolOutput/outputTmttOldLoose_pion.root --particle="pion"
StubRateTool -i /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU200_output/outputTmttOldTight.root -o /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU200_output/StubRateToolOutput/outputTmttOldTight_pion.root --particle="pion"
#
echo TTbar output + PU200 + dtc emulation
# all particles
StubRateTool -i /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU200_output/dtc_outputHybridOldLoose.root -o /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU200_output/StubRateToolOutput/dtc_outputHybridOldLoose_all.root --particle="all"
StubRateTool -i /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU200_output/dtc_outputHybridOldTight.root -o /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU200_output/StubRateToolOutput/dtc_outputHybridOldTight_all.root --particle="all"
StubRateTool -i /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU200_output/dtc_outputTmttOldLoose.root -o /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU200_output/StubRateToolOutput/dtc_outputTmttOldLoose_all.root --particle="all"
StubRateTool -i /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU200_output/dtc_outputTmttOldTight.root -o /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU200_output/StubRateToolOutput/dtc_outputTmttOldTight_all.root --particle="all"
StubRateTool -i /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU200_output/dtc_noTruncation_outputHybridOldLoose.root -o /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU200_output/StubRateToolOutput/dtc_noTruncation_outputHybridOldLoose_all.root --particle="all"
StubRateTool -i /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU200_output/dtc_noTruncation_outputHybridOldTight.root -o /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU200_output/StubRateToolOutput/dtc_noTruncation_outputHybridOldTight_all.root --particle="all"
StubRateTool -i /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU200_output/dtc_noTruncation_outputTmttOldLoose.root -o /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU200_output/StubRateToolOutput/dtc_noTruncation_outputTmttOldLoose_all.root --particle="all"
StubRateTool -i /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU200_output/dtc_noTruncation_outputTmttOldTight.root -o /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU200_output/StubRateToolOutput/dtc_noTruncation_outputTmttOldTight_all.root --particle="all"
#electrons
StubRateTool -i /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU200_output/dtc_outputHybridOldLoose.root -o /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU200_output/StubRateToolOutput/dtc_outputHybridOldLoose_ele.root --particle="ele"
StubRateTool -i /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU200_output/dtc_outputHybridOldTight.root -o /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU200_output/StubRateToolOutput/dtc_outputHybridOldTight_ele.root --particle="ele"
StubRateTool -i /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU200_output/dtc_outputTmttOldLoose.root -o /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU200_output/StubRateToolOutput/dtc_outputTmttOldLoose_ele.root --particle="ele"
StubRateTool -i /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU200_output/dtc_outputTmttOldTight.root -o /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU200_output/StubRateToolOutput/dtc_outputTmttOldTight_ele.root --particle="ele"
StubRateTool -i /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU200_output/dtc_noTruncation_outputHybridOldLoose.root -o /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU200_output/StubRateToolOutput/dtc_noTruncation_outputHybridOldLoose_ele.root --particle="ele"
StubRateTool -i /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU200_output/dtc_noTruncation_outputHybridOldTight.root -o /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU200_output/StubRateToolOutput/dtc_noTruncation_outputHybridOldTight_ele.root --particle="ele"
StubRateTool -i /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU200_output/dtc_noTruncation_outputTmttOldLoose.root -o /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU200_output/StubRateToolOutput/dtc_noTruncation_outputTmttOldLoose_ele.root --particle="ele"
StubRateTool -i /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU200_output/dtc_noTruncation_outputTmttOldTight.root -o /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU200_output/StubRateToolOutput/dtc_noTruncation_outputTmttOldTight_ele.root --particle="ele"
#muons
StubRateTool -i /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU200_output/dtc_outputHybridOldLoose.root -o /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU200_output/StubRateToolOutput/dtc_outputHybridOldLoose_mu.root --particle="mu"
StubRateTool -i /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU200_output/dtc_outputHybridOldTight.root -o /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU200_output/StubRateToolOutput/dtc_outputHybridOldTight_mu.root --particle="mu"
StubRateTool -i /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU200_output/dtc_outputTmttOldLoose.root -o /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU200_output/StubRateToolOutput/dtc_outputTmttOldLoose_mu.root --particle="mu"
StubRateTool -i /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU200_output/dtc_outputTmttOldTight.root -o /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU200_output/StubRateToolOutput/dtc_outputTmttOldTight_mu.root --particle="mu"
StubRateTool -i /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU200_output/dtc_noTruncation_outputHybridOldLoose.root -o /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU200_output/StubRateToolOutput/dtc_noTruncation_outputHybridOldLoose_mu.root --particle="mu"
StubRateTool -i /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU200_output/dtc_noTruncation_outputHybridOldTight.root -o /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU200_output/StubRateToolOutput/dtc_noTruncation_outputHybridOldTight_mu.root --particle="mu"
StubRateTool -i /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU200_output/dtc_noTruncation_outputTmttOldLoose.root -o /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU200_output/StubRateToolOutput/dtc_noTruncation_outputTmttOldLoose_mu.root --particle="mu"
StubRateTool -i /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU200_output/dtc_noTruncation_outputTmttOldTight.root -o /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU200_output/StubRateToolOutput/dtc_noTruncation_outputTmttOldTight_mu.root --particle="mu"
#pions
StubRateTool -i /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU200_output/dtc_outputHybridOldLoose.root -o /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU200_output/StubRateToolOutput/dtc_outputHybridOldLoose_pion.root --particle="pion"
StubRateTool -i /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU200_output/dtc_outputHybridOldTight.root -o /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU200_output/StubRateToolOutput/dtc_outputHybridOldTight_pion.root --particle="pion"
StubRateTool -i /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU200_output/dtc_outputTmttOldLoose.root -o /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU200_output/StubRateToolOutput/dtc_outputTmttOldLoose_pion.root --particle="pion"
StubRateTool -i /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU200_output/dtc_outputTmttOldTight.root -o /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU200_output/StubRateToolOutput/dtc_outputTmttOldTight_pion.root --particle="pion"
StubRateTool -i /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU200_output/dtc_noTruncation_outputHybridOldLoose.root -o /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU200_output/StubRateToolOutput/dtc_noTruncation_outputHybridOldLoose_pion.root --particle="pion"
StubRateTool -i /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU200_output/dtc_noTruncation_outputHybridOldTight.root -o /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU200_output/StubRateToolOutput/dtc_noTruncation_outputHybridOldTight_pion.root --particle="pion"
StubRateTool -i /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU200_output/dtc_noTruncation_outputTmttOldLoose.root -o /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU200_output/StubRateToolOutput/dtc_noTruncation_outputTmttOldLoose_pion.root --particle="pion"
StubRateTool -i /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU200_output/dtc_noTruncation_outputTmttOldTight.root -o /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU200_output/StubRateToolOutput/dtc_noTruncation_outputTmttOldTight_pion.root --particle="pion"
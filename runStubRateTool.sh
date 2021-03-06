#!/bin/bash

#!/bin/bash
fail_exit() { echo "$@" 1>&2; exit 1; }

echo "Start of job on " `date`

cd /home/hep/adm10/CMSSW/CMSSW_11_2_0_pre6/src/L1Trigger/StubStudies/

source /cvmfs/cms.cern.ch/cmsset_default.sh

eval `scramv1 runtime -sh`

export LD_LIBRARY_PATH=`pwd`/lib/:`pwd`/lib64/:${LD_LIBRARY_PATH}

echo TTbar + PU0 output
# all particles
StubRateTool -i /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU0_output/Hybrid_OldLoose/ -o /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU0_output/StubRateToolOutput/outputHybridOldLoose_all.root --particle="all"
StubRateTool -i /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU0_output/Hybrid_OldTight/ -o /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU0_output/StubRateToolOutput/outputHybridOldTight_all.root --particle="all"
StubRateTool -i /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU0_output/Tmtt_OldLoose/ -o /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU0_output/StubRateToolOutput/outputTmttOldLoose_all.root --particle="all"
StubRateTool -i /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU0_output/Tmtt_OldLoose/ -o /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU0_output/StubRateToolOutput/outputTmttOldTight_all.root --particle="all"
#electrons
StubRateTool -i /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU0_output/Hybrid_OldLoose/ -o /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU0_output/StubRateToolOutput/outputHybridOldLoose_ele.root --particle="ele"
StubRateTool -i /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU0_output/Hybrid_OldTight/ -o /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU0_output/StubRateToolOutput/outputHybridOldTight_ele.root --particle="ele"
StubRateTool -i /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU0_output/Tmtt_OldLoose/ -o /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU0_output/StubRateToolOutput/outputTmttOldLoose_ele.root --particle="ele"
StubRateTool -i /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU0_output/Tmtt_OldTight/ -o /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU0_output/StubRateToolOutput/outputTmttOldTight_ele.root --particle="ele"
#muons
StubRateTool -i /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU0_output/Hybrid_OldLoose/ -o /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU0_output/StubRateToolOutput/outputHybridOldLoose_mu.root --particle="mu"
StubRateTool -i /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU0_output/Hybrid_OldTight/ -o /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU0_output/StubRateToolOutput/outputHybridOldTight_mu.root --particle="mu"
StubRateTool -i /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU0_output/Tmtt_OldLoose/ -o /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU0_output/StubRateToolOutput/outputTmttOldLoose_mu.root --particle="mu"
StubRateTool -i /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU0_output/Tmtt_OldTight/ -o /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU0_output/StubRateToolOutput/outputTmttOldTight_mu.root --particle="mu"
#pions
StubRateTool -i /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU0_output/Hybrid_OldLoose/ -o /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU0_output/StubRateToolOutput/outputHybridOldLoose_pion.root --particle="pion"
StubRateTool -i /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU0_output/Hybrid_OldTight/ -o /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU0_output/StubRateToolOutput/outputHybridOldTight_pion.root --particle="pion"
StubRateTool -i /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU0_output/Tmtt_OldLoose/ -o /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU0_output/StubRateToolOutput/outputTmttOldLoose_pion.root --particle="pion"
StubRateTool -i /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU0_output/Tmtt_OldTight/ -o /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU0_output/StubRateToolOutput/outputTmttOldTight_pion.root --particle="pion"
#
echo TTbar output + PU0 + dtc emulation
# all particles
StubRateTool -i /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU0_output/dtc_Hybrid_OldLoose/ -o /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU0_output/StubRateToolOutput/dtc_outputHybridOldLoose_all.root --particle="all"
StubRateTool -i /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU0_output/dtc_Hybrid_OldTight/ -o /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU0_output/StubRateToolOutput/dtc_outputHybridOldTight_all.root --particle="all"
StubRateTool -i /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU0_output/dtc_Tmtt_OldLoose/ -o /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU0_output/StubRateToolOutput/dtc_outputTmttOldLoose_all.root --particle="all"
StubRateTool -i /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU0_output/dtc_Tmtt_OldTight/ -o /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU0_output/StubRateToolOutput/dtc_outputTmttOldTight_all.root --particle="all"
StubRateTool -i /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU0_output/dtc_Hybrid_OldLoose_noTruncation/ -o /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU0_output/StubRateToolOutput/dtc_noTruncation_outputHybridOldLoose_all.root --particle="all"
StubRateTool -i /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU0_output/dtc_Hybrid_OldTight_noTruncation/ -o /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU0_output/StubRateToolOutput/dtc_noTruncation_outputHybridOldTight_all.root --particle="all"
StubRateTool -i /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU0_output/dtc_Tmtt_OldLoose_noTruncation/ -o /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU0_output/StubRateToolOutput/dtc_noTruncation_outputTmttOldLoose_all.root --particle="all"
StubRateTool -i /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU0_output/dtc_Tmtt_OldTight_noTruncation/ -o /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU0_output/StubRateToolOutput/dtc_noTruncation_outputTmttOldTight_all.root --particle="all"
#electrons
StubRateTool -i /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU0_output/dtc_Hybrid_OldLoose/ -o /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU0_output/StubRateToolOutput/dtc_outputHybridOldLoose_ele.root --particle="ele"
StubRateTool -i /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU0_output/dtc_Hybrid_OldTight/ -o /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU0_output/StubRateToolOutput/dtc_outputHybridOldTight_ele.root --particle="ele"
StubRateTool -i /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU0_output/dtc_Tmtt_OldLoose/ -o /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU0_output/StubRateToolOutput/dtc_outputTmttOldLoose_ele.root --particle="ele"
StubRateTool -i /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU0_output/dtc_Tmtt_OldTight/ -o /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU0_output/StubRateToolOutput/dtc_outputTmttOldTight_ele.root --particle="ele"
StubRateTool -i /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU0_output/dtc_Hybrid_OldLoose_noTruncation/ -o /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU0_output/StubRateToolOutput/dtc_noTruncation_outputHybridOldLoose_ele.root --particle="ele"
StubRateTool -i /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU0_output/dtc_Hybrid_OldTight_noTruncation/ -o /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU0_output/StubRateToolOutput/dtc_noTruncation_outputHybridOldTight_ele.root --particle="ele"
StubRateTool -i /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU0_output/dtc_Tmtt_OldLoose_noTruncation/ -o /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU0_output/StubRateToolOutput/dtc_noTruncation_outputTmttOldLoose_ele.root --particle="ele"
StubRateTool -i /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU0_output/dtc_Tmtt_OldTight_noTruncation/ -o /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU0_output/StubRateToolOutput/dtc_noTruncation_outputTmttOldTight_ele.root --particle="ele"
#muons
StubRateTool -i /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU0_output/dtc_Hybrid_OldLoose/ -o /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU0_output/StubRateToolOutput/dtc_outputHybridOldLoose_mu.root --particle="mu"
StubRateTool -i /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU0_output/dtc_Hybrid_OldTight/ -o /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU0_output/StubRateToolOutput/dtc_outputHybridOldTight_mu.root --particle="mu"
StubRateTool -i /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU0_output/dtc_Tmtt_OldLoose/ -o /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU0_output/StubRateToolOutput/dtc_outputTmttOldLoose_mu.root --particle="mu"
StubRateTool -i /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU0_output/dtc_Tmtt_OldTight/ -o /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU0_output/StubRateToolOutput/dtc_outputTmttOldTight_mu.root --particle="mu"
StubRateTool -i /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU0_output/dtc_Hybrid_OldLoose_noTruncation/ -o /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU0_output/StubRateToolOutput/dtc_noTruncation_outputHybridOldLoose_mu.root --particle="mu"
StubRateTool -i /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU0_output/dtc_Hybrid_OldTight_noTruncation/ -o /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU0_output/StubRateToolOutput/dtc_noTruncation_outputHybridOldTight_mu.root --particle="mu"
StubRateTool -i /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU0_output/dtc_Tmtt_OldLoose_noTruncation/ -o /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU0_output/StubRateToolOutput/dtc_noTruncation_outputTmttOldLoose_mu.root --particle="mu"
StubRateTool -i /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU0_output/dtc_Tmtt_OldTight_noTruncation/ -o /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU0_output/StubRateToolOutput/dtc_noTruncation_outputTmttOldTight_mu.root --particle="mu"
#pions
StubRateTool -i /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU0_output/dtc_Hybrid_OldLoose/ -o /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU0_output/StubRateToolOutput/dtc_outputHybridOldLoose_pion.root --particle="pion"
StubRateTool -i /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU0_output/dtc_Hybrid_OldTight/ -o /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU0_output/StubRateToolOutput/dtc_outputHybridOldTight_pion.root --particle="pion"
StubRateTool -i /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU0_output/dtc_Tmtt_OldLoose/ -o /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU0_output/StubRateToolOutput/dtc_outputTmttOldLoose_pion.root --particle="pion"
StubRateTool -i /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU0_output/dtc_Tmtt_OldTight/ -o /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU0_output/StubRateToolOutput/dtc_outputTmttOldTight_pion.root --particle="pion"
StubRateTool -i /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU0_output/dtc_Hybrid_OldLoose_noTruncation/ -o /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU0_output/StubRateToolOutput/dtc_noTruncation_outputHybridOldLoose_pion.root --particle="pion"
StubRateTool -i /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU0_output/dtc_Hybrid_OldTight_noTruncation/ -o /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU0_output/StubRateToolOutput/dtc_noTruncation_outputHybridOldTight_pion.root --particle="pion"
StubRateTool -i /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU0_output/dtc_Tmtt_OldLoose_noTruncation/ -o /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU0_output/StubRateToolOutput/dtc_noTruncation_outputTmttOldLoose_pion.root --particle="pion"
StubRateTool -i /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU0_output/dtc_Tmtt_OldTight_noTruncation/ -o /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU0_output/StubRateToolOutput/dtc_noTruncation_outputTmttOldTight_pion.root --particle="pion"
#
echo TTbar + PU200 output
# all particles
StubRateTool -i /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU200_output/Hybrid_OldLoose/ -o /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU200_output/StubRateToolOutput/outputHybridOldLoose_all.root --particle="all"
StubRateTool -i /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU200_output/Hybrid_OldTight/ -o /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU200_output/StubRateToolOutput/outputHybridOldTight_all.root --particle="all"
StubRateTool -i /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU200_output/Tmtt_OldLoose/ -o /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU200_output/StubRateToolOutput/outputTmttOldLoose_all.root --particle="all"
StubRateTool -i /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU200_output/Tmtt_OldTight/ -o /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU200_output/StubRateToolOutput/outputTmttOldTight_all.root --particle="all"
#electrons
StubRateTool -i /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU200_output/Hybrid_OldLoose/ -o /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU200_output/StubRateToolOutput/outputHybridOldLoose_ele.root --particle="ele"
StubRateTool -i /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU200_output/Hybrid_OldTight/ -o /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU200_output/StubRateToolOutput/outputHybridOldTight_ele.root --particle="ele"
StubRateTool -i /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU200_output/Tmtt_OldLoose/ -o /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU200_output/StubRateToolOutput/outputTmttOldLoose_ele.root --particle="ele"
StubRateTool -i /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU200_output/Tmtt_OldTight/ -o /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU200_output/StubRateToolOutput/outputTmttOldTight_ele.root --particle="ele"
#muons
StubRateTool -i /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU200_output/Hybrid_OldLoose/ -o /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU200_output/StubRateToolOutput/outputHybridOldLoose_mu.root --particle="mu"
StubRateTool -i /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU200_output/Hybrid_OldTight/ -o /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU200_output/StubRateToolOutput/outputHybridOldTight_mu.root --particle="mu"
StubRateTool -i /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU200_output/Tmtt_OldLoose/ -o /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU200_output/StubRateToolOutput/outputTmttOldLoose_mu.root --particle="mu"
StubRateTool -i /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU200_output/Tmtt_OldTight/ -o /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU200_output/StubRateToolOutput/outputTmttOldTight_mu.root --particle="mu"
#pions
StubRateTool -i /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU200_output/Hybrid_OldLoose/ -o /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU200_output/StubRateToolOutput/outputHybridOldLoose_pion.root --particle="pion"
StubRateTool -i /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU200_output/Hybrid_OldTight/ -o /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU200_output/StubRateToolOutput/outputHybridOldTight_pion.root --particle="pion"
StubRateTool -i /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU200_output/Tmtt_OldLoose/ -o /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU200_output/StubRateToolOutput/outputTmttOldLoose_pion.root --particle="pion"
StubRateTool -i /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU200_output/Tmtt_OldTight/ -o /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU200_output/StubRateToolOutput/outputTmttOldTight_pion.root --particle="pion"
#
echo TTbar output + PU200 + dtc emulation
# all particles
StubRateTool -i /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU200_output/dtc_Hybrid_OldLoose/ -o /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU200_output/StubRateToolOutput/dtc_outputHybridOldLoose_all.root --particle="all"
StubRateTool -i /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU200_output/dtc_Hybrid_OldTight/ -o /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU200_output/StubRateToolOutput/dtc_outputHybridOldTight_all.root --particle="all"
StubRateTool -i /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU200_output/dtc_Tmtt_OldLoose/ -o /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU200_output/StubRateToolOutput/dtc_outputTmttOldLoose_all.root --particle="all"
StubRateTool -i /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU200_output/dtc_Tmtt_OldTight/ -o /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU200_output/StubRateToolOutput/dtc_outputTmttOldTight_all.root --particle="all"
StubRateTool -i /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU200_output/dtc_Hybrid_OldLoose_noTruncation/ -o /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU200_output/StubRateToolOutput/dtc_noTruncation_outputHybridOldLoose_all.root --particle="all"
StubRateTool -i /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU200_output/dtc_Hybrid_OldTight_noTruncation/ -o /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU200_output/StubRateToolOutput/dtc_noTruncation_outputHybridOldTight_all.root --particle="all"
StubRateTool -i /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU200_output/dtc_Tmtt_OldLoose_noTruncation/ -o /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU200_output/StubRateToolOutput/dtc_noTruncation_outputTmttOldLoose_all.root --particle="all"
StubRateTool -i /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU200_output/dtc_Tmtt_OldTight_noTruncation/ -o /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU200_output/StubRateToolOutput/dtc_noTruncation_outputTmttOldTight_all.root --particle="all"
#electrons
StubRateTool -i /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU200_output/dtc_Hybrid_OldLoose/ -o /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU200_output/StubRateToolOutput/dtc_outputHybridOldLoose_ele.root --particle="ele"
StubRateTool -i /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU200_output/dtc_Hybrid_OldTight/ -o /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU200_output/StubRateToolOutput/dtc_outputHybridOldTight_ele.root --particle="ele"
StubRateTool -i /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU200_output/dtc_Tmtt_OldLoose/ -o /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU200_output/StubRateToolOutput/dtc_outputTmttOldLoose_ele.root --particle="ele"
StubRateTool -i /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU200_output/dtc_Tmtt_OldTight/ -o /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU200_output/StubRateToolOutput/dtc_outputTmttOldTight_ele.root --particle="ele"
StubRateTool -i /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU200_output/dtc_Hybrid_OldLoose_noTruncation/ -o /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU200_output/StubRateToolOutput/dtc_noTruncation_outputHybridOldLoose_ele.root --particle="ele"
StubRateTool -i /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU200_output/dtc_Hybrid_OldTight_noTruncation/ -o /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU200_output/StubRateToolOutput/dtc_noTruncation_outputHybridOldTight_ele.root --particle="ele"
StubRateTool -i /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU200_output/dtc_Tmtt_OldLoose_noTruncation/ -o /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU200_output/StubRateToolOutput/dtc_noTruncation_outputTmttOldLoose_ele.root --particle="ele"
StubRateTool -i /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU200_output/dtc_Tmtt_OldTight_noTruncation/ -o /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU200_output/StubRateToolOutput/dtc_noTruncation_outputTmttOldTight_ele.root --particle="ele"
#muons
StubRateTool -i /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU200_output/dtc_Hybrid_OldLoose/ -o /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU200_output/StubRateToolOutput/dtc_outputHybridOldLoose_mu.root --particle="mu"
StubRateTool -i /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU200_output/dtc_Hybrid_OldTight/ -o /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU200_output/StubRateToolOutput/dtc_outputHybridOldTight_mu.root --particle="mu"
StubRateTool -i /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU200_output/dtc_Tmtt_OldLoose/ -o /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU200_output/StubRateToolOutput/dtc_outputTmttOldLoose_mu.root --particle="mu"
StubRateTool -i /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU200_output/dtc_Tmtt_OldTight/ -o /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU200_output/StubRateToolOutput/dtc_outputTmttOldTight_mu.root --particle="mu"
StubRateTool -i /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU200_output/dtc_Hybrid_OldLoose_noTruncation/ -o /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU200_output/StubRateToolOutput/dtc_noTruncation_outputHybridOldLoose_mu.root --particle="mu"
StubRateTool -i /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU200_output/dtc_Hybrid_OldTight_noTruncation/ -o /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU200_output/StubRateToolOutput/dtc_noTruncation_outputHybridOldTight_mu.root --particle="mu"
StubRateTool -i /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU200_output/dtc_Tmtt_OldLoose_noTruncation/ -o /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU200_output/StubRateToolOutput/dtc_noTruncation_outputTmttOldLoose_mu.root --particle="mu"
StubRateTool -i /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU200_output/dtc_Tmtt_OldTight_noTruncation/ -o /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU200_output/StubRateToolOutput/dtc_noTruncation_outputTmttOldTight_mu.root --particle="mu"
#pions
StubRateTool -i /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU200_output/dtc_Hybrid_OldLoose/ -o /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU200_output/StubRateToolOutput/dtc_outputHybridOldLoose_pion.root --particle="pion"
StubRateTool -i /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU200_output/dtc_Hybrid_OldTight/ -o /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU200_output/StubRateToolOutput/dtc_outputHybridOldTight_pion.root --particle="pion"
StubRateTool -i /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU200_output/dtc_Tmtt_OldLoose/ -o /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU200_output/StubRateToolOutput/dtc_outputTmttOldLoose_pion.root --particle="pion"
StubRateTool -i /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU200_output/dtc_Tmtt_OldTight/ -o /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU200_output/StubRateToolOutput/dtc_outputTmttOldTight_pion.root --particle="pion"
StubRateTool -i /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU200_output/dtc_Hybrid_OldLoose_noTruncation/ -o /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU200_output/StubRateToolOutput/dtc_noTruncation_outputHybridOldLoose_pion.root --particle="pion"
StubRateTool -i /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU200_output/dtc_Hybrid_OldTight_noTruncation/ -o /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU200_output/StubRateToolOutput/dtc_noTruncation_outputHybridOldTight_pion.root --particle="pion"
StubRateTool -i /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU200_output/dtc_Tmtt_OldLoose_noTruncation/ -o /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU200_output/StubRateToolOutput/dtc_noTruncation_outputTmttOldLoose_pion.root --particle="pion"
StubRateTool -i /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU200_output/dtc_Tmtt_OldTight_noTruncation/ -o /vols/cms/adm10/MC/TMTT/StubStudies/TTbar_PU200_output/StubRateToolOutput/dtc_noTruncation_outputTmttOldTight_pion.root --particle="pion"
#
echo SingleEl + PU0 output
StubRateTool -i /vols/cms/adm10/MC/TMTT/StubStudies/SingleElPt1p5to8_PU0_output/Hybrid_OldLoose/ -o /vols/cms/adm10/MC/TMTT/StubStudies/SingleElPt1p5to8_PU0_output/StubRateToolOutput/outputHybridOldLoose.root --particle="ele"
StubRateTool -i /vols/cms/adm10/MC/TMTT/StubStudies/SingleElPt1p5to8_PU0_output/Hybrid_OldTight/ -o /vols/cms/adm10/MC/TMTT/StubStudies/SingleElPt1p5to8_PU0_output/StubRateToolOutput/outputHybridOldTight.root --particle="ele"
StubRateTool -i /vols/cms/adm10/MC/TMTT/StubStudies/SingleElPt1p5to8_PU0_output/Tmtt_OldLoose/ -o /vols/cms/adm10/MC/TMTT/StubStudies/SingleElPt1p5to8_PU0_output/StubRateToolOutput/outputTmttOldLoose.root --particle="ele" 
StubRateTool -i /vols/cms/adm10/MC/TMTT/StubStudies/SingleElPt1p5to8_PU0_output/Tmtt_OldTight/ -o /vols/cms/adm10/MC/TMTT/StubStudies/SingleElPt1p5to8_PU0_output/StubRateToolOutput/outputTmttOldTight.root --particle="ele"
echo SingleEl output + PU0 + dtc emulation
StubRateTool -i /vols/cms/adm10/MC/TMTT/StubStudies/SingleElPt1p5to8_PU0_output/dtc_Hybrid_OldLoose/ -o /vols/cms/adm10/MC/TMTT/StubStudies/SingleElPt1p5to8_PU0_output/StubRateToolOutput/dtc_outputHybridOldLoose.root --particle="ele"
StubRateTool -i /vols/cms/adm10/MC/TMTT/StubStudies/SingleElPt1p5to8_PU0_output/dtc_Hybrid_OldTight/ -o /vols/cms/adm10/MC/TMTT/StubStudies/SingleElPt1p5to8_PU0_output/StubRateToolOutput/dtc_outputHybridOldTight.root --particle="ele"
StubRateTool -i /vols/cms/adm10/MC/TMTT/StubStudies/SingleElPt1p5to8_PU0_output/dtc_Tmtt_OldLoose/ -o /vols/cms/adm10/MC/TMTT/StubStudies/SingleElPt1p5to8_PU0_output/StubRateToolOutput/dtc_outputTmttOldLoose.root --particle="ele"
StubRateTool -i /vols/cms/adm10/MC/TMTT/StubStudies/SingleElPt1p5to8_PU0_output/dtc_Tmtt_OldTight/ -o /vols/cms/adm10/MC/TMTT/StubStudies/SingleElPt1p5to8_PU0_output/StubRateToolOutput/dtc_outputTmttOldTight.root --particle="ele"
StubRateTool -i /vols/cms/adm10/MC/TMTT/StubStudies/SingleElPt1p5to8_PU0_output/dtc_Hybrid_OldLoose_noTruncation/ -o /vols/cms/adm10/MC/TMTT/StubStudies/SingleElPt1p5to8_PU0_output/StubRateToolOutput/dtc_noTruncation_outputHybridOldLoose.root --particle="ele"
StubRateTool -i /vols/cms/adm10/MC/TMTT/StubStudies/SingleElPt1p5to8_PU0_output/dtc_Hybrid_OldTight_noTruncation/ -o /vols/cms/adm10/MC/TMTT/StubStudies/SingleElPt1p5to8_PU0_output/StubRateToolOutput/dtc_noTruncation_outputHybridOldTight.root --particle="ele"
StubRateTool -i /vols/cms/adm10/MC/TMTT/StubStudies/SingleElPt1p5to8_PU0_output/dtc_Tmtt_OldLoose_noTruncation/ -o /vols/cms/adm10/MC/TMTT/StubStudies/SingleElPt1p5to8_PU0_output/StubRateToolOutput/dtc_noTruncation_outputTmttOldLoose.root --particle="ele"
StubRateTool -i /vols/cms/adm10/MC/TMTT/StubStudies/SingleElPt1p5to8_PU0_output/dtc_Tmtt_OldTight_noTruncation/ -o /vols/cms/adm10/MC/TMTT/StubStudies/SingleElPt1p5to8_PU0_output/StubRateToolOutput/dtc_noTruncation_outputTmttOldTight.root --particle="ele"
#
echo SingleEl + PU200 output
StubRateTool -i /vols/cms/adm10/MC/TMTT/StubStudies/SingleElPt1p5to8_PU200_output/Hybrid_OldLoose/ -o /vols/cms/adm10/MC/TMTT/StubStudies/SingleElPt1p5to8_PU200_output/StubRateToolOutput/outputHybridOldLoose.root --particle="ele"
StubRateTool -i /vols/cms/adm10/MC/TMTT/StubStudies/SingleElPt1p5to8_PU200_output/Hybrid_OldTight/ -o /vols/cms/adm10/MC/TMTT/StubStudies/SingleElPt1p5to8_PU200_output/StubRateToolOutput/outputHybridOldTight.root --particle="ele"
StubRateTool -i /vols/cms/adm10/MC/TMTT/StubStudies/SingleElPt1p5to8_PU200_output/Tmtt_OldLoose/ -o /vols/cms/adm10/MC/TMTT/StubStudies/SingleElPt1p5to8_PU200_output/StubRateToolOutput/outputTmttOldLoose.root --particle="ele" 
StubRateTool -i /vols/cms/adm10/MC/TMTT/StubStudies/SingleElPt1p5to8_PU200_output/Tmtt_OldTight/ -o /vols/cms/adm10/MC/TMTT/StubStudies/SingleElPt1p5to8_PU200_output/StubRateToolOutput/outputTmttOldTight.root --particle="ele"
echo SingleEl output + PU200 + dtc emulation
StubRateTool -i /vols/cms/adm10/MC/TMTT/StubStudies/SingleElPt1p5to8_PU200_output/dtc_Hybrid_OldLoose/ -o /vols/cms/adm10/MC/TMTT/StubStudies/SingleElPt1p5to8_PU200_output/StubRateToolOutput/dtc_outputHybridOldLoose.root --particle="ele"
StubRateTool -i /vols/cms/adm10/MC/TMTT/StubStudies/SingleElPt1p5to8_PU200_output/dtc_Hybrid_OldTight/ -o /vols/cms/adm10/MC/TMTT/StubStudies/SingleElPt1p5to8_PU200_output/StubRateToolOutput/dtc_outputHybridOldTight.root --particle="ele"
StubRateTool -i /vols/cms/adm10/MC/TMTT/StubStudies/SingleElPt1p5to8_PU200_output/dtc_Tmtt_OldLoose/ -o /vols/cms/adm10/MC/TMTT/StubStudies/SingleElPt1p5to8_PU200_output/StubRateToolOutput/dtc_outputTmttOldLoose.root --particle="ele"
StubRateTool -i /vols/cms/adm10/MC/TMTT/StubStudies/SingleElPt1p5to8_PU200_output/dtc_Tmtt_OldTight/ -o /vols/cms/adm10/MC/TMTT/StubStudies/SingleElPt1p5to8_PU200_output/StubRateToolOutput/dtc_outputTmttOldTight.root --particle="ele"
StubRateTool -i /vols/cms/adm10/MC/TMTT/StubStudies/SingleElPt1p5to8_PU200_output/dtc_Hybrid_OldLoose_noTruncation/ -o /vols/cms/adm10/MC/TMTT/StubStudies/SingleElPt1p5to8_PU200_output/StubRateToolOutput/dtc_noTruncation_outputHybridOldLoose.root --particle="ele"
StubRateTool -i /vols/cms/adm10/MC/TMTT/StubStudies/SingleElPt1p5to8_PU200_output/dtc_Hybrid_OldTight_noTruncation/ -o /vols/cms/adm10/MC/TMTT/StubStudies/SingleElPt1p5to8_PU200_output/StubRateToolOutput/dtc_noTruncation_outputHybridOldTight.root --particle="ele"
StubRateTool -i /vols/cms/adm10/MC/TMTT/StubStudies/SingleElPt1p5to8_PU200_output/dtc_Tmtt_OldLoose_noTruncation/ -o /vols/cms/adm10/MC/TMTT/StubStudies/SingleElPt1p5to8_PU200_output/StubRateToolOutput/dtc_noTruncation_outputTmttOldLoose.root --particle="ele"
StubRateTool -i /vols/cms/adm10/MC/TMTT/StubStudies/SingleElPt1p5to8_PU200_output/dtc_Tmtt_OldTight_noTruncation/ -o /vols/cms/adm10/MC/TMTT/StubStudies/SingleElPt1p5to8_PU200_output/StubRateToolOutput/dtc_noTruncation_outputTmttOldTight.root --particle="ele"
#
echo SingleMu + PU0 output
StubRateTool -i /vols/cms/adm10/MC/TMTT/StubStudies/SingleMuPt1p5to8_PU0_output/Hybrid_OldLoose/ -o /vols/cms/adm10/MC/TMTT/StubStudies/SingleMuPt1p5to8_PU0_output/StubRateToolOutput/outputHybridOldLoose.root --particle="mu"
StubRateTool -i /vols/cms/adm10/MC/TMTT/StubStudies/SingleMuPt1p5to8_PU0_output/Hybrid_OldTight/ -o /vols/cms/adm10/MC/TMTT/StubStudies/SingleMuPt1p5to8_PU0_output/StubRateToolOutput/outputHybridOldTight.root --particle="mu"
StubRateTool -i /vols/cms/adm10/MC/TMTT/StubStudies/SingleMuPt1p5to8_PU0_output/Tmtt_OldLoose/ -o /vols/cms/adm10/MC/TMTT/StubStudies/SingleMuPt1p5to8_PU0_output/StubRateToolOutput/outputTmttOldLoose.root --particle="mu"
StubRateTool -i /vols/cms/adm10/MC/TMTT/StubStudies/SingleMuPt1p5to8_PU0_output/Tmtt_OldTight/ -o /vols/cms/adm10/MC/TMTT/StubStudies/SingleMuPt1p5to8_PU0_output/StubRateToolOutput/outputTmttOldTight.root --particle="mu"
echo SingleMu output + PU0 + dtc emulation
StubRateTool -i /vols/cms/adm10/MC/TMTT/StubStudies/SingleMuPt1p5to8_PU0_output/dtc_Hybrid_OldLoose/ -o /vols/cms/adm10/MC/TMTT/StubStudies/SingleMuPt1p5to8_PU0_output/StubRateToolOutput/dtc_outputHybridOldLoose.root --particle="mu"
StubRateTool -i /vols/cms/adm10/MC/TMTT/StubStudies/SingleMuPt1p5to8_PU0_output/dtc_Hybrid_OldTight/ -o /vols/cms/adm10/MC/TMTT/StubStudies/SingleMuPt1p5to8_PU0_output/StubRateToolOutput/dtc_outputHybridOldTight.root --particle="mu"
StubRateTool -i /vols/cms/adm10/MC/TMTT/StubStudies/SingleMuPt1p5to8_PU0_output/dtc_Tmtt_OldLoose/ -o /vols/cms/adm10/MC/TMTT/StubStudies/SingleMuPt1p5to8_PU0_output/StubRateToolOutput/dtc_outputTmttOldLoose.root --particle="mu"
StubRateTool -i /vols/cms/adm10/MC/TMTT/StubStudies/SingleMuPt1p5to8_PU0_output/dtc_Tmtt_OldTight/ -o /vols/cms/adm10/MC/TMTT/StubStudies/SingleMuPt1p5to8_PU0_output/StubRateToolOutput/dtc_outputTmttOldTight.root --particle="mu"
StubRateTool -i /vols/cms/adm10/MC/TMTT/StubStudies/SingleMuPt1p5to8_PU0_output/dtc_Hybrid_OldLoose_noTruncation/ -o /vols/cms/adm10/MC/TMTT/StubStudies/SingleMuPt1p5to8_PU0_output/StubRateToolOutput/dtc_noTruncation_outputHybridOldLoose.root --particle="mu"
StubRateTool -i /vols/cms/adm10/MC/TMTT/StubStudies/SingleMuPt1p5to8_PU0_output/dtc_Hybrid_OldTight_noTruncation/ -o /vols/cms/adm10/MC/TMTT/StubStudies/SingleMuPt1p5to8_PU0_output/StubRateToolOutput/dtc_noTruncation_outputHybridOldTight.root --particle="mu"
StubRateTool -i /vols/cms/adm10/MC/TMTT/StubStudies/SingleMuPt1p5to8_PU0_output/dtc_Tmtt_OldLoose_noTruncation/ -o /vols/cms/adm10/MC/TMTT/StubStudies/SingleMuPt1p5to8_PU0_output/StubRateToolOutput/dtc_noTruncation_outputTmttOldLoose.root --particle="mu"
StubRateTool -i /vols/cms/adm10/MC/TMTT/StubStudies/SingleMuPt1p5to8_PU0_output/dtc_Tmtt_OldTight_noTruncation/ -o /vols/cms/adm10/MC/TMTT/StubStudies/SingleMuPt1p5to8_PU0_output/StubRateToolOutput/dtc_noTruncation_outputTmttOldTight.root --particle="mu"
#
echo SingleMu + PU200 output
StubRateTool -i /vols/cms/adm10/MC/TMTT/StubStudies/SingleMuPt1p5to8_PU200_output/Hybrid_OldLoose/ -o /vols/cms/adm10/MC/TMTT/StubStudies/SingleMuPt1p5to8_PU200_output/StubRateToolOutput/outputHybridOldLoose.root --particle="mu"
StubRateTool -i /vols/cms/adm10/MC/TMTT/StubStudies/SingleMuPt1p5to8_PU200_output/Hybrid_OldTight/ -o /vols/cms/adm10/MC/TMTT/StubStudies/SingleMuPt1p5to8_PU200_output/StubRateToolOutput/outputHybridOldTight.root --particle="mu"
StubRateTool -i /vols/cms/adm10/MC/TMTT/StubStudies/SingleMuPt1p5to8_PU200_output/Tmtt_OldLoose/ -o /vols/cms/adm10/MC/TMTT/StubStudies/SingleMuPt1p5to8_PU200_output/StubRateToolOutput/outputTmttOldLoose.root --particle="mu"
StubRateTool -i /vols/cms/adm10/MC/TMTT/StubStudies/SingleMuPt1p5to8_PU200_output/Tmtt_OldTight/ -o /vols/cms/adm10/MC/TMTT/StubStudies/SingleMuPt1p5to8_PU200_output/StubRateToolOutput/outputTmttOldTight.root --particle="mu"
echo SingleMu output + PU200 + dtc emulation
StubRateTool -i /vols/cms/adm10/MC/TMTT/StubStudies/SingleMuPt1p5to8_PU200_output/dtc_Hybrid_OldLoose/ -o /vols/cms/adm10/MC/TMTT/StubStudies/SingleMuPt1p5to8_PU200_output/StubRateToolOutput/dtc_outputHybridOldLoose.root --particle="mu"
StubRateTool -i /vols/cms/adm10/MC/TMTT/StubStudies/SingleMuPt1p5to8_PU200_output/dtc_Hybrid_OldTight/ -o /vols/cms/adm10/MC/TMTT/StubStudies/SingleMuPt1p5to8_PU200_output/StubRateToolOutput/dtc_outputHybridOldTight.root --particle="mu"
StubRateTool -i /vols/cms/adm10/MC/TMTT/StubStudies/SingleMuPt1p5to8_PU200_output/dtc_Tmtt_OldLoose/ -o /vols/cms/adm10/MC/TMTT/StubStudies/SingleMuPt1p5to8_PU200_output/StubRateToolOutput/dtc_outputTmttOldLoose.root --particle="mu"
StubRateTool -i /vols/cms/adm10/MC/TMTT/StubStudies/SingleMuPt1p5to8_PU200_output/dtc_Tmtt_OldTight/ -o /vols/cms/adm10/MC/TMTT/StubStudies/SingleMuPt1p5to8_PU200_output/StubRateToolOutput/dtc_outputTmttOldTight.root --particle="mu"
StubRateTool -i /vols/cms/adm10/MC/TMTT/StubStudies/SingleMuPt1p5to8_PU200_output/dtc_Hybrid_OldLoose_noTruncation/ -o /vols/cms/adm10/MC/TMTT/StubStudies/SingleMuPt1p5to8_PU200_output/StubRateToolOutput/dtc_noTruncation_outputHybridOldLoose.root --particle="mu"
StubRateTool -i /vols/cms/adm10/MC/TMTT/StubStudies/SingleMuPt1p5to8_PU200_output/dtc_Hybrid_OldTight_noTruncation/ -o /vols/cms/adm10/MC/TMTT/StubStudies/SingleMuPt1p5to8_PU200_output/StubRateToolOutput/dtc_noTruncation_outputHybridOldTight.root --particle="mu"
StubRateTool -i /vols/cms/adm10/MC/TMTT/StubStudies/SingleMuPt1p5to8_PU200_output/dtc_Tmtt_OldLoose_noTruncation/ -o /vols/cms/adm10/MC/TMTT/StubStudies/SingleMuPt1p5to8_PU200_output/StubRateToolOutput/dtc_noTruncation_outputTmttOldLoose.root --particle="mu"
StubRateTool -i /vols/cms/adm10/MC/TMTT/StubStudies/SingleMuPt1p5to8_PU200_output/dtc_Tmtt_OldTight_noTruncation/ -o /vols/cms/adm10/MC/TMTT/StubStudies/SingleMuPt1p5to8_PU200_output/StubRateToolOutput/dtc_noTruncation_outputTmttOldTight.root --particle="mu"
#
echo DisplacedMu + PU0 output
StubRateTool -i /vols/cms/adm10/MC/TMTT/StubStudies/DisplacedMuPt1p5To8_PU0_output/Hybrid_OldLoose/ -o /vols/cms/adm10/MC/TMTT/StubStudies/DisplacedMuPt1p5To8_PU0_output/StubRateToolOutput/outputHybridOldLoose.root --particle="mu"
StubRateTool -i /vols/cms/adm10/MC/TMTT/StubStudies/DisplacedMuPt1p5To8_PU0_output/Hybrid_OldTight/ -o /vols/cms/adm10/MC/TMTT/StubStudies/DisplacedMuPt1p5To8_PU0_output/StubRateToolOutput/outputHybridOldTight.root --particle="mu"
StubRateTool -i /vols/cms/adm10/MC/TMTT/StubStudies/DisplacedMuPt1p5To8_PU0_output/Tmtt_OldLoose/ -o /vols/cms/adm10/MC/TMTT/StubStudies/DisplacedMuPt1p5To8_PU0_output/StubRateToolOutput/outputTmttOldLoose.root --particle="mu"
StubRateTool -i /vols/cms/adm10/MC/TMTT/StubStudies/DisplacedMuPt1p5To8_PU0_output/Tmtt_OldTight/ -o /vols/cms/adm10/MC/TMTT/StubStudies/DisplacedMuPt1p5To8_PU0_output/StubRateToolOutput/outputTmttOldTight.root --particle="mu"
echo DisplacedMu output + PU0 + dtc emulation
StubRateTool -i /vols/cms/adm10/MC/TMTT/StubStudies/DisplacedMuPt1p5To8_PU0_output/dtc_Hybrid_OldLoose/ -o /vols/cms/adm10/MC/TMTT/StubStudies/DisplacedMuPt1p5To8_PU0_output/StubRateToolOutput/dtc_outputHybridOldLoose.root --particle="mu"
StubRateTool -i /vols/cms/adm10/MC/TMTT/StubStudies/DisplacedMuPt1p5To8_PU0_output/dtc_Hybrid_OldTight/ -o /vols/cms/adm10/MC/TMTT/StubStudies/DisplacedMuPt1p5To8_PU0_output/StubRateToolOutput/dtc_outputHybridOldTight.root --particle="mu"
StubRateTool -i /vols/cms/adm10/MC/TMTT/StubStudies/DisplacedMuPt1p5To8_PU0_output/dtc_Tmtt_OldLoose/ -o /vols/cms/adm10/MC/TMTT/StubStudies/DisplacedMuPt1p5To8_PU0_output/StubRateToolOutput/dtc_outputTmttOldLoose.root --particle="mu"
StubRateTool -i /vols/cms/adm10/MC/TMTT/StubStudies/DisplacedMuPt1p5To8_PU0_output/dtc_Tmtt_OldTight/ -o /vols/cms/adm10/MC/TMTT/StubStudies/DisplacedMuPt1p5To8_PU0_output/StubRateToolOutput/dtc_outputTmttOldTight.root --particle="mu"
StubRateTool -i /vols/cms/adm10/MC/TMTT/StubStudies/DisplacedMuPt1p5To8_PU0_output/dtc_Hybrid_OldLoose_noTruncation/ -o /vols/cms/adm10/MC/TMTT/StubStudies/DisplacedMuPt1p5To8_PU0_output/StubRateToolOutput/dtc_noTruncation_outputHybridOldLoose.root --particle="mu"
StubRateTool -i /vols/cms/adm10/MC/TMTT/StubStudies/DisplacedMuPt1p5To8_PU0_output/dtc_Hybrid_OldTight_noTruncation/ -o /vols/cms/adm10/MC/TMTT/StubStudies/DisplacedMuPt1p5To8_PU0_output/StubRateToolOutput/dtc_noTruncation_outputHybridOldTight.root --particle="mu"
StubRateTool -i /vols/cms/adm10/MC/TMTT/StubStudies/DisplacedMuPt1p5To8_PU0_output/dtc_Tmtt_OldLoose_noTruncation/ -o /vols/cms/adm10/MC/TMTT/StubStudies/DisplacedMuPt1p5To8_PU0_output/StubRateToolOutput/dtc_noTruncation_outputTmttOldLoose.root --particle="mu"
StubRateTool -i /vols/cms/adm10/MC/TMTT/StubStudies/DisplacedMuPt1p5To8_PU0_output/dtc_Tmtt_OldTight_noTruncation/ -o /vols/cms/adm10/MC/TMTT/StubStudies/DisplacedMuPt1p5To8_PU0_output/StubRateToolOutput/dtc_noTruncation_outputTmttOldTight.root --particle="mu"
#
echo DisplacedMu + PU200 output
StubRateTool -i /vols/cms/adm10/MC/TMTT/StubStudies/DisplacedMuPt1p5To8_PU200_output/Hybrid_OldLoose/ -o /vols/cms/adm10/MC/TMTT/StubStudies/DisplacedMuPt1p5To8_PU200_output/StubRateToolOutput/outputHybridOldLoose.root --particle="mu"
StubRateTool -i /vols/cms/adm10/MC/TMTT/StubStudies/DisplacedMuPt1p5To8_PU200_output/Hybrid_OldTight/ -o /vols/cms/adm10/MC/TMTT/StubStudies/DisplacedMuPt1p5To8_PU200_output/StubRateToolOutput/outputHybridOldTight.root --particle="mu"
StubRateTool -i /vols/cms/adm10/MC/TMTT/StubStudies/DisplacedMuPt1p5To8_PU200_output/Tmtt_OldLoose/ -o /vols/cms/adm10/MC/TMTT/StubStudies/DisplacedMuPt1p5To8_PU200_output/StubRateToolOutput/outputTmttOldLoose.root --particle="mu"
StubRateTool -i /vols/cms/adm10/MC/TMTT/StubStudies/DisplacedMuPt1p5To8_PU200_output/Tmtt_OldTight/ -o /vols/cms/adm10/MC/TMTT/StubStudies/DisplacedMuPt1p5To8_PU200_output/StubRateToolOutput/outputTmttOldTight.root --particle="mu"
echo DisplacedMu output + PU200 + dtc emulation
StubRateTool -i /vols/cms/adm10/MC/TMTT/StubStudies/DisplacedMuPt1p5To8_PU200_output/dtc_Hybrid_OldLoose/ -o /vols/cms/adm10/MC/TMTT/StubStudies/DisplacedMuPt1p5To8_PU200_output/StubRateToolOutput/dtc_outputHybridOldLoose.root --particle="mu"
StubRateTool -i /vols/cms/adm10/MC/TMTT/StubStudies/DisplacedMuPt1p5To8_PU200_output/dtc_Hybrid_OldTight/ -o /vols/cms/adm10/MC/TMTT/StubStudies/DisplacedMuPt1p5To8_PU200_output/StubRateToolOutput/dtc_outputHybridOldTight.root --particle="mu"
StubRateTool -i /vols/cms/adm10/MC/TMTT/StubStudies/DisplacedMuPt1p5To8_PU200_output/dtc_Tmtt_OldLoose/ -o /vols/cms/adm10/MC/TMTT/StubStudies/DisplacedMuPt1p5To8_PU200_output/StubRateToolOutput/dtc_outputTmttOldLoose.root --particle="mu"
StubRateTool -i /vols/cms/adm10/MC/TMTT/StubStudies/DisplacedMuPt1p5To8_PU200_output/dtc_Tmtt_OldTight/ -o /vols/cms/adm10/MC/TMTT/StubStudies/DisplacedMuPt1p5To8_PU200_output/StubRateToolOutput/dtc_outputTmttOldTight.root --particle="mu"
StubRateTool -i /vols/cms/adm10/MC/TMTT/StubStudies/DisplacedMuPt1p5To8_PU200_output/dtc_Hybrid_OldLoose_noTruncation/ -o /vols/cms/adm10/MC/TMTT/StubStudies/DisplacedMuPt1p5To8_PU200_output/StubRateToolOutput/dtc_noTruncation_outputHybridOldLoose.root --particle="mu"
StubRateTool -i /vols/cms/adm10/MC/TMTT/StubStudies/DisplacedMuPt1p5To8_PU200_output/dtc_Hybrid_OldTight_noTruncation/ -o /vols/cms/adm10/MC/TMTT/StubStudies/DisplacedMuPt1p5To8_PU200_output/StubRateToolOutput/dtc_noTruncation_outputHybridOldTight.root --particle="mu"
StubRateTool -i /vols/cms/adm10/MC/TMTT/StubStudies/DisplacedMuPt1p5To8_PU200_output/dtc_Tmtt_OldLoose_noTruncation/ -o /vols/cms/adm10/MC/TMTT/StubStudies/DisplacedMuPt1p5To8_PU200_output/StubRateToolOutput/dtc_noTruncation_outputTmttOldLoose.root --particle="mu"
StubRateTool -i /vols/cms/adm10/MC/TMTT/StubStudies/DisplacedMuPt1p5To8_PU200_output/dtc_Tmtt_OldTight_noTruncation/ -o /vols/cms/adm10/MC/TMTT/StubStudies/DisplacedMuPt1p5To8_PU200_output/StubRateToolOutput/dtc_noTruncation_outputTmttOldTight.root --particle="mu"

echo "\nEnd of job on " `date` "\n"


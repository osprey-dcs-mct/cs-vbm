#!../../bin/darwin-x86/cs_vbm

## You may have to change cs_vbm to something else
## everywhere it appears in this file

< envPaths

epicsEnvSet("ENGINEER", "Engineer")
epicsEnvSet("LOCATION", "Location")

epicsEnvSet("AS_PATH", "${TOP}/autosave")
epicsEnvSet("IOC_PREFIX","MCT:CS_Y_VBM")

cd ${TOP}

## Register all support components
dbLoadDatabase("dbd/cs_vbm.dbd",0,0)
cs_vbm_registerRecordDeviceDriver(pdbbase) 

## Load record instances
dbLoadRecords("db/3jack_mirror.db","P=MCT:VBM:,Q=CS_Y:,M1=US_OB,M2=US_IB,M3=DS,LENGTH=1500,WIDTH=250")
dbLoadRecords("db/iocAdminSoft.db", "IOC=$(IOC_PREFIX)")
dbLoadRecords("db/save_restoreStatus.db", "P=$(IOC_PREFIX):")

# Load the autosave configuration
cd iocBoot/${IOC}
< autosave.cmd

iocInit()

cd ${AS_PATH}/req 
makeAutosaveFiles()
create_monitor_set("info_positions.req", 5, "")
create_monitor_set("info_settings.req", 15, "")

cd ${TOP}


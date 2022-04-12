#!../../bin/linux-x86_64/cs_vfm

## You may have to change cs_vfm to something else
## everywhere it appears in this file

< envPaths

epicsEnvSet("ENGINEER", "Engineer")
epicsEnvSet("LOCATION", "Location")

epicsEnvSet("AS_PATH", "${TOP}/autosave")
epicsEnvSet("IOC_PREFIX","D08-CS-IOC-CS04")
epicsEnvSet("EPICS_CA_ADDR_LIST", "10.3.1.255")
epicsEnvSet("EPICS_CA_AUTO_ADDR_LIST", "NO")

cd ${TOP}

## Register all support components
dbLoadDatabase("dbd/cs_vfm.dbd",0,0)
cs_vfm_registerRecordDeviceDriver(pdbbase) 

## Load record instances
dbLoadRecords("db/3jack_mirror.db","P=D08-OP-,Q=VFM:,M1=VFM-STP-Y1,M2=VFM-STP-Y2,M3=VFM-STP-Y3,LENGTH=1500,WIDTH=250")
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


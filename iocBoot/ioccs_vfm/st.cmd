#!../../bin/linux-x86_64/cs_vfm

## You may have to change cs_vfm to something else
## everywhere it appears in this file

< envPaths

epicsEnvSet("IOC_PREFIX","D08-CS-IOC-MC01")

cd ${TOP}

## Register all support components
dbLoadDatabase("dbd/cs_vfm.dbd",0,0)
cs_vfm_registerRecordDeviceDriver(pdbbase) 

## Load record instances
dbLoadRecords("db/3jack_mirror.db","P=D08-OP-,Q=VFM:,M1=VFM-STP-Y1,M2=VFM-STP-Y2,M3=VFM-STP-Y3,LENGTH=1500,WIDTH=250")
dbLoadRecords("db/iocAdminSoft.db", "IOC=$(IOC_PREFIX)")
dbLoadRecords("db/save_restoreStatus.db", "P=$(IOC_PREFIX):")

iocInit()


#!../../bin/darwin-x86/cs_vcm

## You may have to change cs_vcm to something else
## everywhere it appears in this file

< envPaths

cd ${TOP}

## Register all support components
dbLoadDatabase("dbd/cs_vcm.dbd",0,0)
cs_vcm_registerRecordDeviceDriver(pdbbase) 

## Load record instances
dbLoadRecords("db/3jack_mirror.db","P=D08-OP-,Q=VCM:,M1=STP-Y1,M2=STP-Y2,M3=STP-Y3")

iocInit()


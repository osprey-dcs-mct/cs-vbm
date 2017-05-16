#!../../bin/darwin-x86/cs_vcm

## You may have to change cs_vcm to something else
## everywhere it appears in this file

#< envPaths

## Register all support components
dbLoadDatabase("../../dbd/cs_vcm.dbd",0,0)
cs_vcm_registerRecordDeviceDriver(pdbbase) 

## Load record instances
dbLoadRecords("../../db/cs_vcm.db","user=control")

iocInit()

## Start any sequence programs
#seq snccs_vcm,"user=control"

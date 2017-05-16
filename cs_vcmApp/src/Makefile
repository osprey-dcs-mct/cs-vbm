TOP=../..

include $(TOP)/configure/CONFIG
#----------------------------------------
#  ADD MACRO DEFINITIONS AFTER THIS LINE
#=============================

#=============================
# Build the IOC application

PROD_IOC = cs_vcm
# cs_vcm.dbd will be created and installed
DBD += cs_vcm.dbd

# cs_vcm.dbd will be made up from these files:
cs_vcm_DBD += base.dbd

# Include dbd files from all support applications:
cs_vcm_DBD += opticsSupport.dbd
cs_vcm_DBD += calcSupport.dbd
cs_vcm_DBD += asSupport.dbd
cs_vcm_DBD += calcSupport.dbd
cs_vcm_DBD += devIocStats.dbd

# Add all the support libraries needed by this IOC
cs_vcm_LIBS += optics
cs_vcm_LIBS += calc
cs_vcm_LIBS += autosave
cs_vcm_LIBS += calc
cs_vcm_LIBS += devIocStats

# cs_vcm_registerRecordDeviceDriver.cpp derives from cs_vcm.dbd
cs_vcm_SRCS += cs_vcm_registerRecordDeviceDriver.cpp

# Build the main IOC entry point on workstation OSs.
cs_vcm_SRCS_DEFAULT += cs_vcmMain.cpp
cs_vcm_SRCS_vxWorks += -nil-

# Add support from base/src/vxWorks if needed
#cs_vcm_OBJS_vxWorks += $(EPICS_BASE_BIN)/vxComLibrary

# Finally link to the EPICS Base libraries
cs_vcm_LIBS += $(EPICS_BASE_IOC_LIBS)

#===========================

include $(TOP)/configure/RULES
#----------------------------------------
#  ADD RULES AFTER THIS LINE


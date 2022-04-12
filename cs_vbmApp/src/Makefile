TOP=../..

include $(TOP)/configure/CONFIG
#----------------------------------------
#  ADD MACRO DEFINITIONS AFTER THIS LINE
#=============================

#=============================
# Build the IOC application

PROD_IOC = cs_vfm
# cs_vfm.dbd will be created and installed
DBD += cs_vfm.dbd

# cs_vfm.dbd will be made up from these files:
cs_vfm_DBD += base.dbd

# Include dbd files from all support applications:
cs_vfm_DBD += opticsSupport.dbd
cs_vfm_DBD += calcSupport.dbd
cs_vfm_DBD += asSupport.dbd
cs_vfm_DBD += devIocStats.dbd

# Add all the support libraries needed by this IOC
cs_vfm_LIBS += optics
cs_vfm_LIBS += calc
cs_vfm_LIBS += autosave
cs_vfm_LIBS += devIocStats

# cs_vfm_registerRecordDeviceDriver.cpp derives from cs_vfm.dbd
cs_vfm_SRCS += cs_vfm_registerRecordDeviceDriver.cpp

# Build the main IOC entry point on workstation OSs.
cs_vfm_SRCS_DEFAULT += cs_vfmMain.cpp
cs_vfm_SRCS_vxWorks += -nil-

# Add support from base/src/vxWorks if needed
#cs_vfm_OBJS_vxWorks += $(EPICS_BASE_BIN)/vxComLibrary

# Finally link to the EPICS Base libraries
cs_vfm_LIBS += $(EPICS_BASE_IOC_LIBS)

#===========================

include $(TOP)/configure/RULES
#----------------------------------------
#  ADD RULES AFTER THIS LINE


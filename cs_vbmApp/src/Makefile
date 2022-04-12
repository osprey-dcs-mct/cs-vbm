TOP=../..

include $(TOP)/configure/CONFIG
#----------------------------------------
#  ADD MACRO DEFINITIONS AFTER THIS LINE
#=============================

#=============================
# Build the IOC application

PROD_IOC = cs_vbm
# cs_vbm.dbd will be created and installed
DBD += cs_vbm.dbd

# cs_vbm.dbd will be made up from these files:
cs_vbm_DBD += base.dbd

# Include dbd files from all support applications:
cs_vbm_DBD += opticsSupport.dbd
cs_vbm_DBD += calcSupport.dbd
cs_vbm_DBD += asSupport.dbd
cs_vbm_DBD += devIocStats.dbd

# Add all the support libraries needed by this IOC
cs_vbm_LIBS += optics
cs_vbm_LIBS += calc
cs_vbm_LIBS += autosave
cs_vbm_LIBS += devIocStats

# cs_vbm_registerRecordDeviceDriver.cpp derives from cs_vbm.dbd
cs_vbm_SRCS += cs_vbm_registerRecordDeviceDriver.cpp

# Build the main IOC entry point on workstation OSs.
cs_vbm_SRCS_DEFAULT += cs_vbmMain.cpp
cs_vbm_SRCS_vxWorks += -nil-

# Add support from base/src/vxWorks if needed
#cs_vbm_OBJS_vxWorks += $(EPICS_BASE_BIN)/vxComLibrary

# Finally link to the EPICS Base libraries
cs_vbm_LIBS += $(EPICS_BASE_IOC_LIBS)

#===========================

include $(TOP)/configure/RULES
#----------------------------------------
#  ADD RULES AFTER THIS LINE


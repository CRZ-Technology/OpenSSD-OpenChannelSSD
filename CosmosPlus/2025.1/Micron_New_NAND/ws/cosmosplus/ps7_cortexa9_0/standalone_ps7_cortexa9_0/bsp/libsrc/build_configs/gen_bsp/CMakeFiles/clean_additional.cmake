# Additional clean files
cmake_minimum_required(VERSION 3.16)

if("${CONFIG}" STREQUAL "" OR "${CONFIG}" STREQUAL "")
  file(REMOVE_RECURSE
  "D:\\tmp\\CosmosPlus_micron_new_260225_2\\ws\\cosmosplus\\ps7_cortexa9_0\\standalone_ps7_cortexa9_0\\bsp\\include\\sleep.h"
  "D:\\tmp\\CosmosPlus_micron_new_260225_2\\ws\\cosmosplus\\ps7_cortexa9_0\\standalone_ps7_cortexa9_0\\bsp\\include\\xiltimer.h"
  "D:\\tmp\\CosmosPlus_micron_new_260225_2\\ws\\cosmosplus\\ps7_cortexa9_0\\standalone_ps7_cortexa9_0\\bsp\\include\\xtimer_config.h"
  "D:\\tmp\\CosmosPlus_micron_new_260225_2\\ws\\cosmosplus\\ps7_cortexa9_0\\standalone_ps7_cortexa9_0\\bsp\\lib\\libxiltimer.a"
  )
endif()

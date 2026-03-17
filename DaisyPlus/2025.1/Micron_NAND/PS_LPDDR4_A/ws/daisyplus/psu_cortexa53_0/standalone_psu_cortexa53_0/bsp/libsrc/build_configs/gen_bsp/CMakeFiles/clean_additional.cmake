# Additional clean files
cmake_minimum_required(VERSION 3.16)

if("${CONFIG}" STREQUAL "" OR "${CONFIG}" STREQUAL "")
  file(REMOVE_RECURSE
  "D:\\tmp\\daisyplus_micron_multi_lpddr4_a_25.1_260310\\ws\\daisyplus\\psu_cortexa53_0\\standalone_psu_cortexa53_0\\bsp\\include\\sleep.h"
  "D:\\tmp\\daisyplus_micron_multi_lpddr4_a_25.1_260310\\ws\\daisyplus\\psu_cortexa53_0\\standalone_psu_cortexa53_0\\bsp\\include\\xiltimer.h"
  "D:\\tmp\\daisyplus_micron_multi_lpddr4_a_25.1_260310\\ws\\daisyplus\\psu_cortexa53_0\\standalone_psu_cortexa53_0\\bsp\\include\\xtimer_config.h"
  "D:\\tmp\\daisyplus_micron_multi_lpddr4_a_25.1_260310\\ws\\daisyplus\\psu_cortexa53_0\\standalone_psu_cortexa53_0\\bsp\\lib\\libxiltimer.a"
  )
endif()

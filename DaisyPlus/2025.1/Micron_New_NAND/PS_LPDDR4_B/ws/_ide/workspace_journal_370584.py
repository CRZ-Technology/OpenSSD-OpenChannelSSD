# 2026-02-25T10:02:15.250592200
import vitis

client = vitis.create_client()
client.set_workspace(path="ws")

platform = client.get_component(name="daisyplus")
status = platform.update_hw(hw_design = "$COMPONENT_LOCATION/../../sys_top_wrapper.xsa")

status = platform.build()

status = client.add_platform_repos(platform=["/d:/tmp/daisyplus_micron_lpddr4_b_25.1_250819/ws2/daisyplus/export/daisyplus"])

comp = client.create_app_component(name="run-gr3ftl",platform = "$COMPONENT_LOCATION/../../../daisyplus_micron_lpddr4_b_25.1_250819/ws2/daisyplus/export/daisyplus/daisyplus.xpfm",domain = "standalone_psu_cortexa53_0")

comp = client.get_component(name="run-gr3ftl")
status = comp.import_files(from_loc="", files=["D:\tmp\daisyplus_micron_new_lpddr4_b_260224\ws\run-gr3ftl_"])

comp = client.get_component(name="run-gr3ftl")
comp.build()

client.delete_component(name="daisyplus")

client.delete_component(name="daisyplus")

client.delete_component(name="run-gr3ftl")

client.delete_component(name="componentName")

advanced_options = client.create_advanced_options_dict(dt_overlay="0")

platform = client.create_platform_component(name = "daisyplus",hw_design = "$COMPONENT_LOCATION/../../sys_top_wrapper.xsa",os = "standalone",cpu = "psu_cortexa53_0",domain_name = "standalone_psu_cortexa53_0",generate_dtb = False,advanced_options = advanced_options,architecture = "64-bit",compiler = "gcc")

status = platform.build()

client.delete_component(name="daisyplus")

advanced_options = client.create_advanced_options_dict(dt_overlay="0")

platform = client.create_platform_component(name = "daisyplus",hw_design = "$COMPONENT_LOCATION/../../sys_top_wrapper.xsa",os = "standalone",cpu = "psu_cortexa53_0",domain_name = "standalone_psu_cortexa53_0",generate_dtb = False,advanced_options = advanced_options,architecture = "64-bit",compiler = "gcc")

status = platform.build()

comp = client.create_app_component(name="run-gr3ftl",platform = "$COMPONENT_LOCATION/../daisyplus/export/daisyplus/daisyplus.xpfm",domain = "standalone_psu_cortexa53_0")

comp = client.get_component(name="run-gr3ftl")
status = comp.import_files(from_loc="", files=["D:\tmp\src"])

comp = client.get_component(name="run-gr3ftl")
comp.build()

comp = client.get_component(name="run-gr3ftl")
status = comp.import_files(from_loc="$COMPONENT_LOCATION/../../../daisyplus_micron_lpddr4_a_25.1_250708/ws/run-gr3ftl/src", files=["address_translation.c", "address_translation.h", "data_buffer.c", "data_buffer.h", "ftl_config.c", "ftl_config.h", "garbage_collection.c", "garbage_collection.h", "main.c", "memory_map.h", "nsc_driver.c", "nsc_driver.h", "request_allocation.c", "request_allocation.h", "request_format.h", "request_queue.h", "request_schedule.c", "request_schedule.h", "request_transform.c", "request_transform.h", "t4nsc_pm.h", "t4nsc_ucode.h"], dest_dir_in_cmp = "src")

comp = client.get_component(name="run-gr3ftl")
comp.build()

comp = client.get_component(name="run-gr3ftl")
status = comp.import_files(from_loc="$COMPONENT_LOCATION/../../../daisyplus_micron_lpddr4_a_25.1_250708/ws/run-gr3ftl/src", files=["nvme"], dest_dir_in_cmp = "src")

comp = client.get_component(name="run-gr3ftl")
comp.build()

comp.build()

comp.build()

client.delete_component(name="daisyplus")

client.delete_component(name="componentName")

client.delete_component(name="run-gr3ftl")

client.delete_component(name="componentName")

advanced_options = client.create_advanced_options_dict(dt_overlay="0")

platform = client.create_platform_component(name = "daisyplus",hw_design = "$COMPONENT_LOCATION/../../sys_top_wrapper.xsa",os = "standalone",cpu = "psu_cortexa53_0",domain_name = "standalone_psu_cortexa53_0",generate_dtb = False,advanced_options = advanced_options,architecture = "64-bit",compiler = "gcc")

status = platform.build()

comp = client.create_app_component(name="run-gr3ftl",platform = "$COMPONENT_LOCATION/../daisyplus/export/daisyplus/daisyplus.xpfm",domain = "standalone_psu_cortexa53_0")

comp = client.get_component(name="run-gr3ftl")
status = comp.import_files(from_loc="", files=["D:\tmp\run-gr3ftl\src\address_translation.c", "D:\tmp\run-gr3ftl\src\address_translation.h", "D:\tmp\run-gr3ftl\src\data_buffer.c", "D:\tmp\run-gr3ftl\src\data_buffer.h", "D:\tmp\run-gr3ftl\src\ftl_config.c", "D:\tmp\run-gr3ftl\src\ftl_config.h", "D:\tmp\run-gr3ftl\src\garbage_collection.c", "D:\tmp\run-gr3ftl\src\garbage_collection.h", "D:\tmp\run-gr3ftl\src\main.c", "D:\tmp\run-gr3ftl\src\memory_map.h", "D:\tmp\run-gr3ftl\src\nsc_driver.c", "D:\tmp\run-gr3ftl\src\nsc_driver.h", "D:\tmp\run-gr3ftl\src\README.txt", "D:\tmp\run-gr3ftl\src\request_allocation.c", "D:\tmp\run-gr3ftl\src\request_allocation.h", "D:\tmp\run-gr3ftl\src\request_format.h", "D:\tmp\run-gr3ftl\src\request_queue.h", "D:\tmp\run-gr3ftl\src\request_schedule.c", "D:\tmp\run-gr3ftl\src\request_schedule.h", "D:\tmp\run-gr3ftl\src\request_transform.c", "D:\tmp\run-gr3ftl\src\request_transform.h", "D:\tmp\run-gr3ftl\src\t4nsc_pm.h", "D:\tmp\run-gr3ftl\src\t4nsc_ucode.h"])

status = comp.import_files(from_loc="$COMPONENT_LOCATION/../../../run-gr3ftl/src", files=["nvme"], dest_dir_in_cmp = "run-gr3ftl")

status = comp.import_files(from_loc="$COMPONENT_LOCATION/../../../run-gr3ftl/src", files=["nvme"], dest_dir_in_cmp = "run-gr3ftl")

status = comp.import_files(from_loc="$COMPONENT_LOCATION/../../../run-gr3ftl/src", files=["nvme"], dest_dir_in_cmp = "run-gr3ftl")

comp = client.get_component(name="run-gr3ftl")
comp.build()

comp.build()

comp.build()

vitis.dispose()


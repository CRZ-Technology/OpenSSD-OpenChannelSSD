# 2025-07-17T15:59:29.227960200
import vitis

client = vitis.create_client()
client.set_workspace(path="ws")

advanced_options = client.create_advanced_options_dict(dt_overlay="0")

platform = client.create_platform_component(name = "cosmosplus",hw_design = "$COMPONENT_LOCATION/../../sys_top_wrapper.xsa",os = "standalone",cpu = "ps7_cortexa9_0",domain_name = "standalone_ps7_cortexa9_0",generate_dtb = False,advanced_options = advanced_options,compiler = "gcc")

platform = client.get_component(name="cosmosplus")
status = platform.build()

comp = client.create_app_component(name="run-gftl3",platform = "$COMPONENT_LOCATION/../cosmosplus/export/cosmosplus/cosmosplus.xpfm",domain = "standalone_ps7_cortexa9_0")

comp = client.get_component(name="run-gftl3")
status = comp.import_files(from_loc="", files=["D:\sources\CosmosPlus\2025.1\CosmosPlus_25.1_220717\cosm-plus-sys.sdk\run-gftl3\address_translation.c", "D:\sources\CosmosPlus\2025.1\CosmosPlus_25.1_220717\cosm-plus-sys.sdk\run-gftl3\address_translation.h", "D:\sources\CosmosPlus\2025.1\CosmosPlus_25.1_220717\cosm-plus-sys.sdk\run-gftl3\data_buffer.c", "D:\sources\CosmosPlus\2025.1\CosmosPlus_25.1_220717\cosm-plus-sys.sdk\run-gftl3\data_buffer.h", "D:\sources\CosmosPlus\2025.1\CosmosPlus_25.1_220717\cosm-plus-sys.sdk\run-gftl3\ftl_config.c", "D:\sources\CosmosPlus\2025.1\CosmosPlus_25.1_220717\cosm-plus-sys.sdk\run-gftl3\ftl_config.h", "D:\sources\CosmosPlus\2025.1\CosmosPlus_25.1_220717\cosm-plus-sys.sdk\run-gftl3\garbage_collection.c", "D:\sources\CosmosPlus\2025.1\CosmosPlus_25.1_220717\cosm-plus-sys.sdk\run-gftl3\garbage_collection.h", "D:\sources\CosmosPlus\2025.1\CosmosPlus_25.1_220717\cosm-plus-sys.sdk\run-gftl3\main.c", "D:\sources\CosmosPlus\2025.1\CosmosPlus_25.1_220717\cosm-plus-sys.sdk\run-gftl3\memory_map.h", "D:\sources\CosmosPlus\2025.1\CosmosPlus_25.1_220717\cosm-plus-sys.sdk\run-gftl3\nsc_driver.c", "D:\sources\CosmosPlus\2025.1\CosmosPlus_25.1_220717\cosm-plus-sys.sdk\run-gftl3\nsc_driver.h", "D:\sources\CosmosPlus\2025.1\CosmosPlus_25.1_220717\cosm-plus-sys.sdk\run-gftl3\request_allocation.c", "D:\sources\CosmosPlus\2025.1\CosmosPlus_25.1_220717\cosm-plus-sys.sdk\run-gftl3\request_allocation.h", "D:\sources\CosmosPlus\2025.1\CosmosPlus_25.1_220717\cosm-plus-sys.sdk\run-gftl3\request_format.h", "D:\sources\CosmosPlus\2025.1\CosmosPlus_25.1_220717\cosm-plus-sys.sdk\run-gftl3\request_queue.h", "D:\sources\CosmosPlus\2025.1\CosmosPlus_25.1_220717\cosm-plus-sys.sdk\run-gftl3\request_schedule.c", "D:\sources\CosmosPlus\2025.1\CosmosPlus_25.1_220717\cosm-plus-sys.sdk\run-gftl3\request_schedule.h", "D:\sources\CosmosPlus\2025.1\CosmosPlus_25.1_220717\cosm-plus-sys.sdk\run-gftl3\request_transform.c", "D:\sources\CosmosPlus\2025.1\CosmosPlus_25.1_220717\cosm-plus-sys.sdk\run-gftl3\request_transform.h", "D:\sources\CosmosPlus\2025.1\CosmosPlus_25.1_220717\cosm-plus-sys.sdk\run-gftl3\t4nsc_pm.h", "D:\sources\CosmosPlus\2025.1\CosmosPlus_25.1_220717\cosm-plus-sys.sdk\run-gftl3\t4nsc_ucode.h", "D:\sources\CosmosPlus\2025.1\CosmosPlus_25.1_220717\cosm-plus-sys.sdk\run-gftl3\nvme"])

status = platform.build()

comp = client.get_component(name="run-gftl3")
comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

vitis.dispose()

vitis.dispose()


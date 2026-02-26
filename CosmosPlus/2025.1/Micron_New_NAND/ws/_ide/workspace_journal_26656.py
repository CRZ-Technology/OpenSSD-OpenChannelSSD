# 2026-02-25T17:24:02.862556300
import vitis

client = vitis.create_client()
client.set_workspace(path="ws")

client.delete_component(name="run-gftl3")

client.delete_component(name="run-gftl3")

client.delete_component(name="componentName")

client.delete_component(name="componentName")

client.delete_component(name="componentName")

client.delete_component(name="componentName")

client.delete_component(name="componentName")

client.delete_component(name="componentName")

client.delete_component(name="componentName")

client.delete_component(name="componentName")

client.delete_component(name="componentName")

client.delete_component(name="componentName")

client.delete_component(name="componentName")

client.delete_component(name="componentName")

client.delete_component(name="componentName")

client.delete_component(name="componentName")

client.delete_component(name="componentName")

client.delete_component(name="componentName")

client.delete_component(name="componentName")

client.delete_component(name="componentName")

client.delete_component(name="componentName")

client.delete_component(name="componentName")

client.delete_component(name="componentName")

client.delete_component(name="componentName")

advanced_options = client.create_advanced_options_dict(dt_overlay="0")

platform = client.create_platform_component(name = "cosmosplus",hw_design = "$COMPONENT_LOCATION/../../sys_top_wrapper.xsa",os = "standalone",cpu = "ps7_cortexa9_0",domain_name = "standalone_ps7_cortexa9_0",generate_dtb = False,advanced_options = advanced_options,compiler = "gcc")

platform = client.get_component(name="cosmosplus")
status = platform.build()

comp = client.create_app_component(name="run-gftl3",platform = "$COMPONENT_LOCATION/../cosmosplus/export/cosmosplus/cosmosplus.xpfm",domain = "standalone_ps7_cortexa9_0")

comp = client.get_component(name="run-gftl3")
status = comp.import_files(from_loc="", files=["C:\Users\hgcho\OneDrive\πŸ≈¡ »≠∏È\run-gftl3\address_translation.c", "C:\Users\hgcho\OneDrive\πŸ≈¡ »≠∏È\run-gftl3\address_translation.h", "C:\Users\hgcho\OneDrive\πŸ≈¡ »≠∏È\run-gftl3\data_buffer.c", "C:\Users\hgcho\OneDrive\πŸ≈¡ »≠∏È\run-gftl3\data_buffer.h", "C:\Users\hgcho\OneDrive\πŸ≈¡ »≠∏È\run-gftl3\ftl_config.c", "C:\Users\hgcho\OneDrive\πŸ≈¡ »≠∏È\run-gftl3\ftl_config.h", "C:\Users\hgcho\OneDrive\πŸ≈¡ »≠∏È\run-gftl3\garbage_collection.c", "C:\Users\hgcho\OneDrive\πŸ≈¡ »≠∏È\run-gftl3\garbage_collection.h", "C:\Users\hgcho\OneDrive\πŸ≈¡ »≠∏È\run-gftl3\main.c", "C:\Users\hgcho\OneDrive\πŸ≈¡ »≠∏È\run-gftl3\memory_map.h", "C:\Users\hgcho\OneDrive\πŸ≈¡ »≠∏È\run-gftl3\nsc_driver.c", "C:\Users\hgcho\OneDrive\πŸ≈¡ »≠∏È\run-gftl3\nsc_driver.h", "C:\Users\hgcho\OneDrive\πŸ≈¡ »≠∏È\run-gftl3\request_allocation.c", "C:\Users\hgcho\OneDrive\πŸ≈¡ »≠∏È\run-gftl3\request_allocation.h", "C:\Users\hgcho\OneDrive\πŸ≈¡ »≠∏È\run-gftl3\request_format.h", "C:\Users\hgcho\OneDrive\πŸ≈¡ »≠∏È\run-gftl3\request_queue.h", "C:\Users\hgcho\OneDrive\πŸ≈¡ »≠∏È\run-gftl3\request_schedule.c", "C:\Users\hgcho\OneDrive\πŸ≈¡ »≠∏È\run-gftl3\request_schedule.h", "C:\Users\hgcho\OneDrive\πŸ≈¡ »≠∏È\run-gftl3\request_transform.c", "C:\Users\hgcho\OneDrive\πŸ≈¡ »≠∏È\run-gftl3\request_transform.h", "C:\Users\hgcho\OneDrive\πŸ≈¡ »≠∏È\run-gftl3\t4nsc_pm.h", "C:\Users\hgcho\OneDrive\πŸ≈¡ »≠∏È\run-gftl3\t4nsc_ucode.h", "C:\Users\hgcho\OneDrive\πŸ≈¡ »≠∏È\run-gftl3\nvme"])

comp = client.get_component(name="run-gftl3")
comp.build()

comp.build()

vitis.dispose()


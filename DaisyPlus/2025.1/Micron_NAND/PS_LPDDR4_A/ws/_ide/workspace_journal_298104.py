# 2026-02-25T16:22:28.727145300
import vitis

client = vitis.create_client()
client.set_workspace(path="ws")

advanced_options = client.create_advanced_options_dict(dt_overlay="0")

platform = client.create_platform_component(name = "daisyplus",hw_design = "$COMPONENT_LOCATION/../../sys_top_wrapper.xsa",os = "standalone",cpu = "psu_cortexa53_0",domain_name = "standalone_psu_cortexa53_0",generate_dtb = False,advanced_options = advanced_options,architecture = "64-bit",compiler = "gcc")

platform = client.get_component(name="daisyplus")
status = platform.build()

comp = client.create_app_component(name="run-gr3ftl",platform = "$COMPONENT_LOCATION/../daisyplus/export/daisyplus/daisyplus.xpfm",domain = "standalone_psu_cortexa53_0")

comp = client.get_component(name="run-gr3ftl")
status = comp.import_files(from_loc="", files=["C:\Users\hgcho\OneDrive\πŸ≈¡ »≠∏È\run-gr3ftl\address_translation.c", "C:\Users\hgcho\OneDrive\πŸ≈¡ »≠∏È\run-gr3ftl\address_translation.h", "C:\Users\hgcho\OneDrive\πŸ≈¡ »≠∏È\run-gr3ftl\data_buffer.c", "C:\Users\hgcho\OneDrive\πŸ≈¡ »≠∏È\run-gr3ftl\data_buffer.h", "C:\Users\hgcho\OneDrive\πŸ≈¡ »≠∏È\run-gr3ftl\ftl_config.c", "C:\Users\hgcho\OneDrive\πŸ≈¡ »≠∏È\run-gr3ftl\ftl_config.h", "C:\Users\hgcho\OneDrive\πŸ≈¡ »≠∏È\run-gr3ftl\garbage_collection.c", "C:\Users\hgcho\OneDrive\πŸ≈¡ »≠∏È\run-gr3ftl\garbage_collection.h", "C:\Users\hgcho\OneDrive\πŸ≈¡ »≠∏È\run-gr3ftl\main.c", "C:\Users\hgcho\OneDrive\πŸ≈¡ »≠∏È\run-gr3ftl\memory_map.h", "C:\Users\hgcho\OneDrive\πŸ≈¡ »≠∏È\run-gr3ftl\nsc_driver.c", "C:\Users\hgcho\OneDrive\πŸ≈¡ »≠∏È\run-gr3ftl\nsc_driver.h", "C:\Users\hgcho\OneDrive\πŸ≈¡ »≠∏È\run-gr3ftl\README.txt", "C:\Users\hgcho\OneDrive\πŸ≈¡ »≠∏È\run-gr3ftl\request_allocation.c", "C:\Users\hgcho\OneDrive\πŸ≈¡ »≠∏È\run-gr3ftl\request_allocation.h", "C:\Users\hgcho\OneDrive\πŸ≈¡ »≠∏È\run-gr3ftl\request_format.h", "C:\Users\hgcho\OneDrive\πŸ≈¡ »≠∏È\run-gr3ftl\request_queue.h", "C:\Users\hgcho\OneDrive\πŸ≈¡ »≠∏È\run-gr3ftl\request_schedule.c", "C:\Users\hgcho\OneDrive\πŸ≈¡ »≠∏È\run-gr3ftl\request_schedule.h", "C:\Users\hgcho\OneDrive\πŸ≈¡ »≠∏È\run-gr3ftl\request_transform.c", "C:\Users\hgcho\OneDrive\πŸ≈¡ »≠∏È\run-gr3ftl\request_transform.h", "C:\Users\hgcho\OneDrive\πŸ≈¡ »≠∏È\run-gr3ftl\t4nsc_pm.h", "C:\Users\hgcho\OneDrive\πŸ≈¡ »≠∏È\run-gr3ftl\t4nsc_ucode.h", "C:\Users\hgcho\OneDrive\πŸ≈¡ »≠∏È\run-gr3ftl\nvme"])

status = platform.build()

comp = client.get_component(name="run-gr3ftl")
comp.build()

vitis.dispose()


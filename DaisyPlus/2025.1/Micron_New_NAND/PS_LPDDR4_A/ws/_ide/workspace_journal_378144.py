# 2026-02-25T13:59:02.127987500
import vitis

client = vitis.create_client()
client.set_workspace(path="ws")

comp = client.create_app_component(name="run-gr3ftl",platform = "$COMPONENT_LOCATION/../daisyplus/export/daisyplus/daisyplus.xpfm",domain = "standalone_psu_cortexa53_0")

comp = client.get_component(name="run-gr3ftl")
status = comp.import_files(from_loc="", files=["D:\tmp\run-gr3ftl\src\address_translation.c", "D:\tmp\run-gr3ftl\src\address_translation.h", "D:\tmp\run-gr3ftl\src\data_buffer.c", "D:\tmp\run-gr3ftl\src\data_buffer.h", "D:\tmp\run-gr3ftl\src\ftl_config.c", "D:\tmp\run-gr3ftl\src\ftl_config.h", "D:\tmp\run-gr3ftl\src\garbage_collection.c", "D:\tmp\run-gr3ftl\src\garbage_collection.h", "D:\tmp\run-gr3ftl\src\main.c", "D:\tmp\run-gr3ftl\src\memory_map.h", "D:\tmp\run-gr3ftl\src\nsc_driver.c", "D:\tmp\run-gr3ftl\src\nsc_driver.h", "D:\tmp\run-gr3ftl\src\README.txt", "D:\tmp\run-gr3ftl\src\request_allocation.c", "D:\tmp\run-gr3ftl\src\request_allocation.h", "D:\tmp\run-gr3ftl\src\request_format.h", "D:\tmp\run-gr3ftl\src\request_queue.h", "D:\tmp\run-gr3ftl\src\request_schedule.c", "D:\tmp\run-gr3ftl\src\request_schedule.h", "D:\tmp\run-gr3ftl\src\request_transform.c", "D:\tmp\run-gr3ftl\src\request_transform.h", "D:\tmp\run-gr3ftl\src\t4nsc_pm.h", "D:\tmp\run-gr3ftl\src\t4nsc_ucode.h", "D:\tmp\run-gr3ftl\src\nvme"])

comp = client.get_component(name="run-gr3ftl")
comp.build()

comp.build()

vitis.dispose()


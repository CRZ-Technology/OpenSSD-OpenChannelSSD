# 2026-02-19T15:46:29.551088600
import vitis

client = vitis.create_client()
client.set_workspace(path="ws")

platform = client.get_component(name="cosmosplus")
status = platform.update_hw(hw_design = "$COMPONENT_LOCATION/../../sys_top_wrapper.xsa")

status = platform.build()

comp = client.get_component(name="run-gftl3")
status = comp.clean()

comp.build()

comp.build()

vitis.dispose()

vitis.dispose()


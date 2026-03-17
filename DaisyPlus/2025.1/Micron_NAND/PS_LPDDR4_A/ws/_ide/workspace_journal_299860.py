# 2026-02-24T15:41:19.806652800
import vitis

client = vitis.create_client()
client.set_workspace(path="ws2")

platform = client.get_component(name="daisyplus")
status = platform.update_hw(hw_design = "$COMPONENT_LOCATION/../../sys_top_wrapper.xsa")

status = platform.build()

status = platform.build()

comp = client.get_component(name="ftl")
comp.build()

vitis.dispose()


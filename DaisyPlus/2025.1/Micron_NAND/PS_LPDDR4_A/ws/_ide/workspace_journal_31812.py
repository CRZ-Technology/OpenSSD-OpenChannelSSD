# 2026-03-10T16:37:41.554788500
import vitis

client = vitis.create_client()
client.set_workspace(path="ws")

platform = client.get_component(name="daisyplus")
status = platform.build()

comp = client.get_component(name="run-gr3ftl")
status = comp.clean()

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


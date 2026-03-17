# 2026-03-17T16:29:02.843816500
import vitis

client = vitis.create_client()
client.set_workspace(path="ws")

platform = client.get_component(name="daisyplus")
status = platform.build()

status = platform.build()

comp = client.get_component(name="run-gr3ftl")
comp.build()

status = platform.build()

comp.build()

vitis.dispose()


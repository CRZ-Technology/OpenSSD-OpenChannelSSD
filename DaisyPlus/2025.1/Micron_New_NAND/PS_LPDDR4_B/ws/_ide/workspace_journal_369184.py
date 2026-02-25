# 2026-02-24T17:18:45.392416
import vitis

client = vitis.create_client()
client.set_workspace(path="ws2")

platform = client.get_component(name="daisyplus")
status = platform.build()

status = platform.build()

comp = client.get_component(name="ftl")
comp.build()

vitis.dispose()

vitis.dispose()


# 2026-02-25T16:06:08.868676200
import vitis

client = vitis.create_client()
client.set_workspace(path="ws")

comp = client.get_component(name="run-gr3ftl")
status = comp.clean()

status = comp.clean()

vitis.dispose()


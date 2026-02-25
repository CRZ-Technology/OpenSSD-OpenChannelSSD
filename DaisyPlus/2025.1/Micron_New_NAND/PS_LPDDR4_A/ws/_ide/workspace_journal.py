# 2026-02-25T17:12:21.862384500
import vitis

client = vitis.create_client()
client.set_workspace(path="ws")

comp = client.get_component(name="run-gr3ftl")
status = comp.clean()


# 2026-03-17T19:21:31.420839800
import vitis

client = vitis.create_client()
client.set_workspace(path="ws")

comp = client.get_component(name="run-gr3ftl")
status = comp.clean()

status = comp.clean()

vitis.dispose()


# 2026-02-26T11:37:39.014228400
import vitis

client = vitis.create_client()
client.set_workspace(path="ws")

comp = client.get_component(name="run-gftl3")
status = comp.clean()

vitis.dispose()


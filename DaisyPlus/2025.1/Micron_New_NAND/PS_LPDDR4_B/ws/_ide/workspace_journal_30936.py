# 2025-08-19T16:51:23.421261
import vitis

client = vitis.create_client()
client.set_workspace(path="ws2")

advanced_options = client.create_advanced_options_dict(dt_overlay="0")

platform = client.create_platform_component(name = "daisyplus",hw_design = "$COMPONENT_LOCATION/../../sys_top_wrapper.xsa",os = "standalone",cpu = "psu_cortexa53_0",domain_name = "standalone_psu_cortexa53_0",generate_dtb = False,advanced_options = advanced_options,architecture = "64-bit",compiler = "gcc")

platform = client.get_component(name="daisyplus")
status = platform.build()

comp = client.create_app_component(name="ftl",platform = "$COMPONENT_LOCATION/../daisyplus/export/daisyplus/daisyplus.xpfm",domain = "standalone_psu_cortexa53_0")

comp = client.get_component(name="ftl")
status = comp.import_files(from_loc="", files=["D:\tmp\daisyplus_lpddr4_b_25.1_250819\ws\daisyplus\run-gr3ftl"])

status = platform.build()

comp = client.get_component(name="ftl")
comp.build()

vitis.dispose()


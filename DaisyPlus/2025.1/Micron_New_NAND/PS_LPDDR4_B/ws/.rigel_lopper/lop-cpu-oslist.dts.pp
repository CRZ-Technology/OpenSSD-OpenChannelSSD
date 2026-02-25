# 1 "D:/Xilinx/2025.1/Vitis/bin/unwrapped/win64.o/lopper/depends/lopper/lops/lop-cpu-oslist.dts"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "D:/Xilinx/2025.1/Vitis/bin/unwrapped/win64.o/lopper/depends/lopper/lops/lop-cpu-oslist.dts"
# 10 "D:/Xilinx/2025.1/Vitis/bin/unwrapped/win64.o/lopper/depends/lopper/lops/lop-cpu-oslist.dts"
/dts-v1/;

/ {
        compatible = "system-device-tree-v1,lop";
        lops {
                compatible = "system-device-tree-v1,lop";
                lop_0 {
                      compatible = "system-device-tree-v1,lop,select-v1";
                      select_1;
                      select_2 = "/.*:device_type:cpu";
                      lop_0_1 {
                              compatible = "system-device-tree-v1,lop,code-v1";
                              code = "
                                     import yaml
                                     yaml_dict = {}
                                     for node in __selected__:
                                        cpu_ip_name = node.propval('xlnx,ip-name')[0]
                                        if not cpu_ip_name:
                                            continue
                                        yaml_dict[node.label] = {'ip_name' : '','supported_os' : []}
                                        yaml_dict[node.label]['ip_name'] = cpu_ip_name
                                        if ('cortex' in cpu_ip_name or cpu_ip_name == 'microblaze') and cpu_ip_name not in ('cortexa78', 'cortexr52'):
                                            yaml_dict[node.label]['supported_os'] = ['standalone','freertos']
                                        else:
                                            yaml_dict[node.label]['supported_os'] = ['standalone']
                                     with open('cpulist.yaml', 'w') as fd:
                                         fd.write(yaml.dump(yaml_dict, indent = 4))
                                     ";
                      };
                };
                lop_1 {
                       compatible = "system-device-tree-v1,lop,select-v1";
                       select_1;
                       select_2 = "/.*:xlnx,ip-name:ai_engine";
                       lop_1_1 {
                               compatible = "system-device-tree-v1,lop,code-v1";
                               code = "
                                      import yaml
                                      with open('cpulist.yaml', 'r') as fd:
                                        yaml_data = yaml.safe_load(fd)
                                      for node in __selected__:
                                         yaml_data[node.label] = {'ip_name' : 'ai_engine','supported_os' : ['aie_runtime']}
                                      with open('cpulist.yaml', 'w') as fd:
                                          fd.write(yaml.dump(yaml_data, indent = 4))
                                      ";
                               };
                };
        };
};

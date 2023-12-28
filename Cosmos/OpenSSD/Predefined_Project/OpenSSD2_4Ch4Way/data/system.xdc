#
# pin constraints
#
set_property LOC P5 [ get_ports PCI_Express_pci_exp_rxn]

set_property LOC P6 [ get_ports PCI_Express_pci_exp_rxp]

set_property LOC N3 [ get_ports PCI_Express_pci_exp_txn]

set_property LOC N4 [ get_ports PCI_Express_pci_exp_txp]

#
# additional constraints
#
###############################################################################
#
# PCIe Location Constraints
#
###############################################################################
set_property LOC N8 [ get_ports PCIe_Diff_Clk_P]
set_property LOC N7 [ get_ports PCIe_Diff_Clk_N]



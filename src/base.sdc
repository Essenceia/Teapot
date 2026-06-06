# read librelane base sdc before overwritting it
read_sdc $::env(SCRIPTS_DIR)/base.sdc

read_sdc $::env(DESIGN_DIR)/lan8720a.sdc

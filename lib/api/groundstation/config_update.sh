######################################################################
#<
#
# Function:
#	p6_aws_groundstation_config_update(config_data, config_id, config_type, name)
#
#  Args:
#	config_data - 
#	config_id - 
#	config_type - 
#	name - 
#
#>
######################################################################
p6_aws_groundstation_config_update() {
    local config_data="$1"
    local config_id="$2"
    local config_type="$3"
    local name="$4"
    shift 4

    p6_run_write_cmd aws groundstation update-config --config-data $config_data --config-id $config_id --config-type $config_type --name $name "$@"
}
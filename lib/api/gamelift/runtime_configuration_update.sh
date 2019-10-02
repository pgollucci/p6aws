######################################################################
#<
#
# Function:
#	p6_aws_gamelift_runtime_configuration_update(fleet_id, runtime_configuration)
#
#  Args:
#	fleet_id - 
#	runtime_configuration - 
#
#>
######################################################################
p6_aws_gamelift_runtime_configuration_update() {
    local fleet_id="$1"
    local runtime_configuration="$2"
    shift 2

    p6_run_write_cmd aws gamelift update-runtime-configuration --fleet-id $fleet_id --runtime-configuration $runtime_configuration "$@"
}
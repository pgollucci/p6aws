######################################################################
#<
#
# Function:
#	p6_aws_greengrass_device_definition_versions_list(device_definition_id)
#
#  Args:
#	device_definition_id - 
#
#>
######################################################################
p6_aws_greengrass_device_definition_versions_list() {
    local device_definition_id="$1"
    shift 1

    p6_run_read_cmd aws greengrass list-device-definition-versions --device-definition-id $device_definition_id "$@"
}
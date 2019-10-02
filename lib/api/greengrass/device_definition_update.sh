######################################################################
#<
#
# Function:
#	p6_aws_greengrass_device_definition_update(device_definition_id)
#
#  Args:
#	device_definition_id - 
#
#>
######################################################################
p6_aws_greengrass_device_definition_update() {
    local device_definition_id="$1"
    shift 1

    p6_run_write_cmd aws greengrass update-device-definition --device-definition-id $device_definition_id "$@"
}
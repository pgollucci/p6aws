######################################################################
#<
#
# Function:
#	p6_aws_greengrass_device_definition_delete(device_definition_id)
#
#  Args:
#	device_definition_id - 
#
#>
######################################################################
p6_aws_greengrass_device_definition_delete() {
    local device_definition_id="$1"
    shift 1

    p6_run_write_cmd aws greengrass delete-device-definition --device-definition-id $device_definition_id "$@"
}
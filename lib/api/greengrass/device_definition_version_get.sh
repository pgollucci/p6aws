######################################################################
#<
#
# Function:
#	p6_aws_greengrass_device_definition_version_get(device_definition_id, device_definition_version_id)
#
#  Args:
#	device_definition_id - 
#	device_definition_version_id - 
#
#>
######################################################################
p6_aws_greengrass_device_definition_version_get() {
    local device_definition_id="$1"
    local device_definition_version_id="$2"
    shift 2

    p6_run_read_cmd aws greengrass get-device-definition-version --device-definition-id $device_definition_id --device-definition-version-id $device_definition_version_id "$@"
}
######################################################################
#<
#
# Function:
#	p6_aws_greengrass_device_definition_version_create(device_definition_id)
#
#  Args:
#	device_definition_id - 
#
#>
######################################################################
p6_aws_greengrass_device_definition_version_create() {
    local device_definition_id="$1"
    shift 1

    p6_run_write_cmd aws greengrass create-device-definition-version --device-definition-id $device_definition_id "$@"
}
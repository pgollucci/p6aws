######################################################################
#<
#
# Function:
#	p6_aws_storagegateway_vtl_device_type_update(vtl_device_arn, device_type)
#
#  Args:
#	vtl_device_arn - 
#	device_type - 
#
#>
######################################################################
p6_aws_storagegateway_vtl_device_type_update() {
    local vtl_device_arn="$1"
    local device_type="$2"
    shift 2

    p6_run_write_cmd aws storagegateway update-vtl-device-type --vtl-device-arn $vtl_device_arn --device-type $device_type "$@"
}
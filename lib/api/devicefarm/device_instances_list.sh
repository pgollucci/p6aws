######################################################################
#<
#
# Function:
#	p6_aws_devicefarm_device_instances_list()
#
#>
######################################################################
p6_aws_devicefarm_device_instances_list() {

    p6_run_read_cmd aws devicefarm list-device-instances "$@"
}
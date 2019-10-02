######################################################################
#<
#
# Function:
#	p6_aws_iot1click_devices_devices_list()
#
#>
######################################################################
p6_aws_iot1click_devices_devices_list() {

    p6_run_read_cmd aws iot1click-devices list-devices "$@"
}
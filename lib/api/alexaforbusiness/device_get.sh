######################################################################
#<
#
# Function:
#	p6_aws_alexaforbusiness_device_get()
#
#>
######################################################################
p6_aws_alexaforbusiness_device_get() {

    p6_run_read_cmd aws alexaforbusiness get-device "$@"
}
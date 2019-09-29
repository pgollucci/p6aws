######################################################################
#<
#
# Function:
#      = p6_aws_alexaforbusiness_devices_search()
#
#
#
#>
######################################################################
p6_aws_alexaforbusiness_devices_search() {

    p6_run_write_cmd aws alexaforbusiness search-devices "$@"
}
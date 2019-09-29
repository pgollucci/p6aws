######################################################################
#<
#
# Function:
#      = p6_aws_datasync_locations_list()
#
#
#
#>
######################################################################
p6_aws_datasync_locations_list() {

    p6_run_read_cmd aws datasync list-locations "$@"
}
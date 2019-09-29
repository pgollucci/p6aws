######################################################################
#<
#
# Function:
#      = p6_aws_mediapackage_origin_endpoints_list()
#
#
#
#>
######################################################################
p6_aws_mediapackage_origin_endpoints_list() {

    p6_run_read_cmd aws mediapackage list-origin-endpoints "$@"
}
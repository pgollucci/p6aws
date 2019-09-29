######################################################################
#<
#
# Function:
#      = p6_aws_mediaconnect_entitlements_list()
#
#
#
#>
######################################################################
p6_aws_mediaconnect_entitlements_list() {

    p6_run_read_cmd aws mediaconnect list-entitlements "$@"
}
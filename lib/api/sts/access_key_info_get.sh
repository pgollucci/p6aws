######################################################################
#<
#
# Function:
#      = p6_aws_sts_access_key_info_get(access_key_id)
#
# Arg(s):
#    access_key_id - 
#
#
#>
######################################################################
p6_aws_sts_access_key_info_get() {
    local access_key_id="$1"
    shift 1

    p6_run_read_cmd aws sts get-access-key-info --access-key-id $access_key_id "$@"
}
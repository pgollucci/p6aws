######################################################################
#<
#
# Function:
#	p6_aws_iam_access_key_last_used_get(access_key_id)
#
#  Args:
#	access_key_id - 
#
#>
######################################################################
p6_aws_iam_access_key_last_used_get() {
    local access_key_id="$1"
    shift 1

    p6_run_read_cmd aws iam get-access-key-last-used --access-key-id $access_key_id "$@"
}
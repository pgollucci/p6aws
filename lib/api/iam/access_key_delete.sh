######################################################################
#<
#
# Function:
#	p6_aws_iam_access_key_delete(access_key_id)
#
#  Args:
#	access_key_id - 
#
#>
######################################################################
p6_aws_iam_access_key_delete() {
    local access_key_id="$1"
    shift 1

    p6_run_write_cmd aws iam delete-access-key --access-key-id $access_key_id "$@"
}
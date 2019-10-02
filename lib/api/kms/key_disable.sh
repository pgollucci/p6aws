######################################################################
#<
#
# Function:
#	p6_aws_kms_key_disable(key_id)
#
#  Args:
#	key_id - 
#
#>
######################################################################
p6_aws_kms_key_disable() {
    local key_id="$1"
    shift 1

    p6_run_write_cmd aws kms disable-key --key-id $key_id "$@"
}
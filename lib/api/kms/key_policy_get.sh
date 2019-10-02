######################################################################
#<
#
# Function:
#	p6_aws_kms_key_policy_get(key_id, policy_name)
#
#  Args:
#	key_id - 
#	policy_name - 
#
#>
######################################################################
p6_aws_kms_key_policy_get() {
    local key_id="$1"
    local policy_name="$2"
    shift 2

    p6_run_read_cmd aws kms get-key-policy --key-id $key_id --policy-name $policy_name "$@"
}
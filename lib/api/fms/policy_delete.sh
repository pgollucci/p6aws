######################################################################
#<
#
# Function:
#      = p6_aws_fms_policy_delete(policy_id)
#
# Arg(s):
#    policy_id - 
#
#
#>
######################################################################
p6_aws_fms_policy_delete() {
    local policy_id="$1"
    shift 1

    p6_run_write_cmd aws fms delete-policy --policy-id $policy_id "$@"
}
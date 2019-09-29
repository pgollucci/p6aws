######################################################################
#<
#
# Function:
#      = p6_aws_dlm_lifecycle_policy_get(policy_id)
#
# Arg(s):
#    policy_id - 
#
#
#>
######################################################################
p6_aws_dlm_lifecycle_policy_get() {
    local policy_id="$1"
    shift 1

    p6_run_read_cmd aws dlm get-lifecycle-policy --policy-id $policy_id "$@"
}
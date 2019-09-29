######################################################################
#<
#
# Function:
#      = p6_aws_fms_protection_status_get(policy_id)
#
# Arg(s):
#    policy_id - 
#
#
#>
######################################################################
p6_aws_fms_protection_status_get() {
    local policy_id="$1"
    shift 1

    p6_run_read_cmd aws fms get-protection-status --policy-id $policy_id "$@"
}
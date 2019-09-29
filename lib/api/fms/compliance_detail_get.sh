######################################################################
#<
#
# Function:
#      = p6_aws_fms_compliance_detail_get(policy_id, member_account)
#
# Arg(s):
#    policy_id - 
#    member_account - 
#
#
#>
######################################################################
p6_aws_fms_compliance_detail_get() {
    local policy_id="$1"
    local member_account="$2"
    shift 2

    p6_run_read_cmd aws fms get-compliance-detail --policy-id $policy_id --member-account $member_account "$@"
}
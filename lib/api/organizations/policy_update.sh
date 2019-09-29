######################################################################
#<
#
# Function:
#      = p6_aws_organizations_policy_update(policy_id)
#
# Arg(s):
#    policy_id - 
#
#
#>
######################################################################
p6_aws_organizations_policy_update() {
    local policy_id="$1"
    shift 1

    p6_run_write_cmd aws organizations update-policy --policy-id $policy_id "$@"
}
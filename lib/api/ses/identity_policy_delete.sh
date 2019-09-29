######################################################################
#<
#
# Function:
#      = p6_aws_ses_identity_policy_delete(identity, policy_name)
#
# Arg(s):
#    identity - 
#    policy_name - 
#
#
#>
######################################################################
p6_aws_ses_identity_policy_delete() {
    local identity="$1"
    local policy_name="$2"
    shift 2

    p6_run_write_cmd aws ses delete-identity-policy --identity $identity --policy-name $policy_name "$@"
}
######################################################################
#<
#
# Function:
#      = p6_aws_ses_identity_policy_put(identity, policy_name, policy)
#
# Arg(s):
#    identity - 
#    policy_name - 
#    policy - 
#
#
#>
######################################################################
p6_aws_ses_identity_policy_put() {
    local identity="$1"
    local policy_name="$2"
    local policy="$3"
    shift 3

    p6_run_write_cmd aws ses put-identity-policy --identity $identity --policy-name $policy_name --policy $policy "$@"
}
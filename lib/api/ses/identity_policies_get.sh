######################################################################
#<
#
# Function:
#      = p6_aws_ses_identity_policies_get(identity, policy_names)
#
# Arg(s):
#    identity - 
#    policy_names - 
#
#
#>
######################################################################
p6_aws_ses_identity_policies_get() {
    local identity="$1"
    local policy_names="$2"
    shift 2

    p6_run_read_cmd aws ses get-identity-policies --identity $identity --policy-names $policy_names "$@"
}
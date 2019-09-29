######################################################################
#<
#
# Function:
#      = p6_aws_iam_user_policy_get(user_name, policy_name)
#
# Arg(s):
#    user_name - 
#    policy_name - 
#
#
#>
######################################################################
p6_aws_iam_user_policy_get() {
    local user_name="$1"
    local policy_name="$2"
    shift 2

    p6_run_read_cmd aws iam get-user-policy --user-name $user_name --policy-name $policy_name "$@"
}
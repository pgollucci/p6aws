######################################################################
#<
#
# Function:
#      = p6_aws_iam_user_policy_detach(user_name, policy_arn)
#
# Arg(s):
#    user_name - 
#    policy_arn - 
#
#
#>
######################################################################
p6_aws_iam_user_policy_detach() {
    local user_name="$1"
    local policy_arn="$2"
    shift 2

    p6_run_write_cmd aws iam detach-user-policy --user-name $user_name --policy-arn $policy_arn "$@"
}
######################################################################
#<
#
# Function:
#      = p6_aws_iam_user_policy_put(user_name, policy_name, policy_document)
#
# Arg(s):
#    user_name - 
#    policy_name - 
#    policy_document - 
#
#
#>
######################################################################
p6_aws_iam_user_policy_put() {
    local user_name="$1"
    local policy_name="$2"
    local policy_document="$3"
    shift 3

    p6_run_write_cmd aws iam put-user-policy --user-name $user_name --policy-name $policy_name --policy-document $policy_document "$@"
}
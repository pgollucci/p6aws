######################################################################
#<
#
# Function:
#      = p6_aws_iam_policy_versions_list(policy_arn)
#
# Arg(s):
#    policy_arn - 
#
#
#>
######################################################################
p6_aws_iam_policy_versions_list() {
    local policy_arn="$1"
    shift 1

    p6_run_read_cmd aws iam list-policy-versions --policy-arn $policy_arn "$@"
}
######################################################################
#<
#
# Function:
#      = p6_aws_iam_context_keys_for_principal_policy_get(policy_source_arn)
#
# Arg(s):
#    policy_source_arn - 
#
#
#>
######################################################################
p6_aws_iam_context_keys_for_principal_policy_get() {
    local policy_source_arn="$1"
    shift 1

    p6_run_read_cmd aws iam get-context-keys-for-principal-policy --policy-source-arn $policy_source_arn "$@"
}
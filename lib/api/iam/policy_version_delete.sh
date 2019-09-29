######################################################################
#<
#
# Function:
#      = p6_aws_iam_policy_version_delete(policy_arn, version_id)
#
# Arg(s):
#    policy_arn - 
#    version_id - 
#
#
#>
######################################################################
p6_aws_iam_policy_version_delete() {
    local policy_arn="$1"
    local version_id="$2"
    shift 2

    p6_run_write_cmd aws iam delete-policy-version --policy-arn $policy_arn --version-id $version_id "$@"
}
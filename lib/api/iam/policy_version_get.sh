######################################################################
#<
#
# Function:
#	p6_aws_iam_policy_version_get(policy_arn, version_id)
#
#  Args:
#	policy_arn - 
#	version_id - 
#
#>
######################################################################
p6_aws_iam_policy_version_get() {
    local policy_arn="$1"
    local version_id="$2"
    shift 2

    p6_run_read_cmd aws iam get-policy-version --policy-arn $policy_arn --version-id $version_id "$@"
}
######################################################################
#<
#
# Function:
#	p6_aws_ecr_repository_policy_set(repository_name, policy_text)
#
#  Args:
#	repository_name - 
#	policy_text - 
#
#>
######################################################################
p6_aws_ecr_repository_policy_set() {
    local repository_name="$1"
    local policy_text="$2"
    shift 2

    p6_run_write_cmd aws ecr set-repository-policy --repository-name $repository_name --policy-text $policy_text "$@"
}
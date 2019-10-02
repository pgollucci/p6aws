######################################################################
#<
#
# Function:
#	p6_aws_ecr_lifecycle_policy_put(repository_name, lifecycle_policy_text)
#
#  Args:
#	repository_name - 
#	lifecycle_policy_text - 
#
#>
######################################################################
p6_aws_ecr_lifecycle_policy_put() {
    local repository_name="$1"
    local lifecycle_policy_text="$2"
    shift 2

    p6_run_write_cmd aws ecr put-lifecycle-policy --repository-name $repository_name --lifecycle-policy-text $lifecycle_policy_text "$@"
}
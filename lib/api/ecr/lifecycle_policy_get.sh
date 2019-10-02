######################################################################
#<
#
# Function:
#	p6_aws_ecr_lifecycle_policy_get(repository_name)
#
#  Args:
#	repository_name - 
#
#>
######################################################################
p6_aws_ecr_lifecycle_policy_get() {
    local repository_name="$1"
    shift 1

    p6_run_read_cmd aws ecr get-lifecycle-policy --repository-name $repository_name "$@"
}
######################################################################
#<
#
# Function:
#	p6_aws_ecr_repository_policy_delete(repository_name)
#
#  Args:
#	repository_name - 
#
#>
######################################################################
p6_aws_ecr_repository_policy_delete() {
    local repository_name="$1"
    shift 1

    p6_run_write_cmd aws ecr delete-repository-policy --repository-name $repository_name "$@"
}
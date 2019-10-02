######################################################################
#<
#
# Function:
#	p6_aws_codecommit_default_branch_update(repository_name, default_branch_name)
#
#  Args:
#	repository_name - 
#	default_branch_name - 
#
#>
######################################################################
p6_aws_codecommit_default_branch_update() {
    local repository_name="$1"
    local default_branch_name="$2"
    shift 2

    p6_run_write_cmd aws codecommit update-default-branch --repository-name $repository_name --default-branch-name $default_branch_name "$@"
}
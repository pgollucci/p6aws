######################################################################
#<
#
# Function:
#      = p6_aws_codecommit_commit_create(repository_name, branch_name)
#
# Arg(s):
#    repository_name - 
#    branch_name - 
#
#
#>
######################################################################
p6_aws_codecommit_commit_create() {
    local repository_name="$1"
    local branch_name="$2"
    shift 2

    p6_run_write_cmd aws codecommit create-commit --repository-name $repository_name --branch-name $branch_name "$@"
}
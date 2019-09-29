######################################################################
#<
#
# Function:
#      = p6_aws_codecommit_branch_create(repository_name, branch_name, commit_id)
#
# Arg(s):
#    repository_name - 
#    branch_name - 
#    commit_id - 
#
#
#>
######################################################################
p6_aws_codecommit_branch_create() {
    local repository_name="$1"
    local branch_name="$2"
    local commit_id="$3"
    shift 3

    p6_run_write_cmd aws codecommit create-branch --repository-name $repository_name --branch-name $branch_name --commit-id $commit_id "$@"
}
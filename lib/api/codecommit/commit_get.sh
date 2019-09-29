######################################################################
#<
#
# Function:
#      = p6_aws_codecommit_commit_get(repository_name, commit_id)
#
# Arg(s):
#    repository_name - 
#    commit_id - 
#
#
#>
######################################################################
p6_aws_codecommit_commit_get() {
    local repository_name="$1"
    local commit_id="$2"
    shift 2

    p6_run_read_cmd aws codecommit get-commit --repository-name $repository_name --commit-id $commit_id "$@"
}
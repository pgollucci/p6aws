######################################################################
#<
#
# Function:
#      = p6_aws_codecommit_file_delete(repository_name, branch_name, file_path, parent_commit_id)
#
# Arg(s):
#    repository_name - 
#    branch_name - 
#    file_path - 
#    parent_commit_id - 
#
#
#>
######################################################################
p6_aws_codecommit_file_delete() {
    local repository_name="$1"
    local branch_name="$2"
    local file_path="$3"
    local parent_commit_id="$4"
    shift 4

    p6_run_write_cmd aws codecommit delete-file --repository-name $repository_name --branch-name $branch_name --file-path $file_path --parent-commit-id $parent_commit_id "$@"
}
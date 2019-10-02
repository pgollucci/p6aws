######################################################################
#<
#
# Function:
#	p6_aws_codecommit_branches_by_fast_forward_merge(repository_name, source_commit_specifier, destination_commit_specifier)
#
#  Args:
#	repository_name - 
#	source_commit_specifier - 
#	destination_commit_specifier - 
#
#>
######################################################################
p6_aws_codecommit_branches_by_fast_forward_merge() {
    local repository_name="$1"
    local source_commit_specifier="$2"
    local destination_commit_specifier="$3"
    shift 3

    p6_run_write_cmd aws codecommit merge-branches-by-fast-forward --repository-name $repository_name --source-commit-specifier $source_commit_specifier --destination-commit-specifier $destination_commit_specifier "$@"
}
######################################################################
#<
#
# Function:
#      = p6_aws_codecommit_describe_merge_conflicts_batch(repository_name, destination_commit_specifier, source_commit_specifier, merge_option)
#
# Arg(s):
#    repository_name - 
#    destination_commit_specifier - 
#    source_commit_specifier - 
#    merge_option - 
#
#
#>
######################################################################
p6_aws_codecommit_describe_merge_conflicts_batch() {
    local repository_name="$1"
    local destination_commit_specifier="$2"
    local source_commit_specifier="$3"
    local merge_option="$4"
    shift 4

    p6_run_read_cmd aws codecommit batch-describe-merge-conflicts --repository-name $repository_name --destination-commit-specifier $destination_commit_specifier --source-commit-specifier $source_commit_specifier --merge-option $merge_option "$@"
}
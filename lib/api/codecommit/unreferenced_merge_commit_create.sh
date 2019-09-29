######################################################################
#<
#
# Function:
#      = p6_aws_codecommit_unreferenced_merge_commit_create(repository_name, source_commit_specifier, destination_commit_specifier, merge_option)
#
# Arg(s):
#    repository_name - 
#    source_commit_specifier - 
#    destination_commit_specifier - 
#    merge_option - 
#
#
#>
######################################################################
p6_aws_codecommit_unreferenced_merge_commit_create() {
    local repository_name="$1"
    local source_commit_specifier="$2"
    local destination_commit_specifier="$3"
    local merge_option="$4"
    shift 4

    p6_run_write_cmd aws codecommit create-unreferenced-merge-commit --repository-name $repository_name --source-commit-specifier $source_commit_specifier --destination-commit-specifier $destination_commit_specifier --merge-option $merge_option "$@"
}
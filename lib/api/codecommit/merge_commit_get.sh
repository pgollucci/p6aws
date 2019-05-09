p6_aws_codecommit_merge_commit_get() {
    local repository_name="$1"
    local source_commit_specifier="$2"
    local destination_commit_specifier="$3"
    shift 3

    p6_run_read_cmd aws codecommit get-merge-commit --repository-name $repository_name --source-commit-specifier $source_commit_specifier --destination-commit-specifier $destination_commit_specifier "$@"
}

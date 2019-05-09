p6_aws_codecommit_branches_by_squash_merge() {
    local repository_name="$1"
    local source_commit_specifier="$2"
    local destination_commit_specifier="$3"
    shift 3

    p6_run_write_cmd aws codecommit merge-branches-by-squash --repository-name $repository_name --source-commit-specifier $source_commit_specifier --destination-commit-specifier $destination_commit_specifier "$@"
}

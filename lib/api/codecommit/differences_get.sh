p6_aws_codecommit_differences_get() {
    local repository_name="$1"
    local after_commit_specifier="$2"
    shift 2

    p6_run_read_cmd aws codecommit get-differences --repository-name $repository_name --after-commit-specifier $after_commit_specifier "$@"
}

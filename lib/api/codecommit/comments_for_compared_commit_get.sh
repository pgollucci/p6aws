p6_aws_codecommit_comments_for_compared_commit_get() {
    local repository_name="$1"
    local after_commit_id="$2"
    shift 2

    p6_run_read_cmd aws codecommit get-comments-for-compared-commit --repository-name $repository_name --after-commit-id $after_commit_id "$@"
}

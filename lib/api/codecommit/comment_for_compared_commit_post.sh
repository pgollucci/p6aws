p6_aws_codecommit_comment_for_compared_commit_post() {
    local repository_name="$1"
    local after_commit_id="$2"
    local content="$3"
    shift 3

    p6_run_write_cmd aws codecommit post-comment-for-compared-commit --repository-name $repository_name --after-commit-id $after_commit_id --content $content "$@"
}

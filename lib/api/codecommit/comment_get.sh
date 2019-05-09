p6_aws_codecommit_comment_get() {
    local comment_id="$1"
    shift 1

    p6_run_read_cmd aws codecommit get-comment --comment-id $comment_id "$@"
}

p6_aws_codecommit_comment_reply_post() {
    local in_reply_to="$1"
    local content="$2"
    shift 2

    p6_run_write_cmd aws codecommit post-comment-reply --in-reply-to $in_reply_to --content $content "$@"
}

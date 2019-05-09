p6_aws_mturk_hit_review_status_update() {
    local hit_id="$1"
    shift 1

    p6_log_or_run aws mturk update-hit-review-status --hit-id $hit_id "$@"
}

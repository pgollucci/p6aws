p6_aws_mturk_hit_review_status_update() {
    local hit_id="$1"
    shift 1

    p6_run_write_cmd aws mturk update-hit-review-status --hit-id $hit_id "$@"
}

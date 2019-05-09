p6_aws_mturk_hit_delete() {
    local hit_id="$1"
    shift 1

    p6_log_or_run aws mturk delete-hit --hit-id $hit_id "$@"
}

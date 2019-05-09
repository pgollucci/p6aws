p6_aws_mturk_assignments_for_hit_list() {
    local hit_id="$1"
    shift 1

    p6_log_and_run aws mturk list-assignments-for-hit --hit-id $hit_id "$@"
}

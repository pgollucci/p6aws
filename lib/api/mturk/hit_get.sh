p6_aws_mturk_hit_get() {
    local hit_id="$1"
    shift 1

    p6_run_read_cmd aws mturk get-hit --hit-id $hit_id "$@"
}

p6_aws_mturk_hit_with_hit_type_create() {
    local hit_type_id="$1"
    local lifetime_in_seconds="$2"
    shift 2

    p6_run_write_cmd aws mturk create-hit-with-hit-type --hit-type-id $hit_type_id --lifetime-in-seconds $lifetime_in_seconds "$@"
}

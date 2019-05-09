p6_aws_ce_tags_get() {
    local time_period="$1"
    shift 1

    p6_run_read_cmd aws ce get-tags --time-period $time_period "$@"
}

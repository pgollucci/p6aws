p6_aws_events_targets_put() {
    local rule="$1"
    local targets="$2"
    shift 2

    p6_log_and_run aws events put-targets --rule $rule --targets $targets "$@"
}

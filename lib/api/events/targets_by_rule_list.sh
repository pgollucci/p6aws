p6_aws_events_targets_by_rule_list() {
    local rule="$1"
    shift 1

    p6_log_and_run aws events list-targets-by-rule --rule $rule "$@"
}

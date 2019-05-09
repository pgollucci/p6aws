p6_aws_events_rule_put() {
    local name="$1"
    shift 1

    p6_log_or_run aws events put-rule --name $name "$@"
}

p6_aws_events_rule_disable() {
    local name="$1"
    shift 1

    p6_run_write_cmd aws events disable-rule --name $name "$@"
}

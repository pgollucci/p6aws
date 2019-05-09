p6_aws_events_rule_put() {
    local name="$1"
    shift 1

    p6_run_write_cmd aws events put-rule --name $name "$@"
}

p6_aws_cloudwatch_alarm_actions_enable() {
    local alarm_names="$1"
    shift 1

    p6_run_write_cmd aws cloudwatch enable-alarm-actions --alarm-names $alarm_names "$@"
}

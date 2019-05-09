p6_aws_cloudwatch_alarms_delete() {
    local alarm_names="$1"
    shift 1

    p6_run_write_cmd aws cloudwatch delete-alarms --alarm-names $alarm_names "$@"
}

p6_aws_ec2_export_task_cancel() {
    local export_task_id="$1"
    shift 1

    p6_log_or_run aws ec2 cancel-export-task --export-task-id $export_task_id "$@"
}

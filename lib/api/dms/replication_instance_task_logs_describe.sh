p6_aws_dms_replication_instance_task_logs_describe() {
    local replication_instance_arn="$1"
    shift 1

    p6_run_read_cmd aws dms describe-replication-instance-task-logs --replication-instance-arn $replication_instance_arn "$@"
}

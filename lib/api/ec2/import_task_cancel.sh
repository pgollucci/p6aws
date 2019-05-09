p6_aws_ec2_import_task_cancel() {

    p6_log_or_run aws ec2 cancel-import-task "$@"
}

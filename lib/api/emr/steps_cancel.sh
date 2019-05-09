p6_aws_emr_steps_cancel() {

    p6_log_or_run aws emr cancel-steps "$@"
}

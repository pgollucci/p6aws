p6_aws_emr_steps_cancel() {

    p6_run_write_cmd aws emr cancel-steps "$@"
}

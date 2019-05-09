p6_aws_ssm_association_delete() {

    p6_run_write_cmd aws ssm delete-association "$@"
}

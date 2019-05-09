p6_aws_ssm_association_delete() {

    p6_log_or_run aws ssm delete-association "$@"
}

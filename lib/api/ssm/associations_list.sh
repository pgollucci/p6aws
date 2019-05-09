p6_aws_ssm_associations_list() {

    p6_run_read_cmd aws ssm list-associations "$@"
}

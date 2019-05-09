p6_aws_emr_security_configurations_list() {

    p6_run_read_cmd aws emr list-security-configurations "$@"
}

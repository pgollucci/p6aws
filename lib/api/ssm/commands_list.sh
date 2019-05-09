p6_aws_ssm_commands_list() {

    p6_run_read_cmd aws ssm list-commands "$@"
}

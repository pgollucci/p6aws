p6_aws_iot_role_aliases_list() {

    p6_run_read_cmd aws iot list-role-aliases "$@"
}

p6_aws_iot_authorization_test() {
    local auth_infos="$1"
    shift 1

    p6_run_write_cmd aws iot test-authorization --auth-infos $auth_infos "$@"
}

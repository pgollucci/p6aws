p6_aws_iot_active_violations_list() {

    p6_run_read_cmd aws iot list-active-violations "$@"
}

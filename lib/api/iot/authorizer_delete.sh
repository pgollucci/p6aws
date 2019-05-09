p6_aws_iot_authorizer_delete() {
    local authorizer_name="$1"
    shift 1

    p6_run_write_cmd aws iot delete-authorizer --authorizer-name $authorizer_name "$@"
}

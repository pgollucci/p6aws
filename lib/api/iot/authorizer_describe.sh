p6_aws_iot_authorizer_describe() {
    local authorizer_name="$1"
    shift 1

    p6_run_read_cmd aws iot describe-authorizer --authorizer-name $authorizer_name "$@"
}

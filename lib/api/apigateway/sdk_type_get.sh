p6_aws_apigateway_sdk_type_get() {
    local id="$1"
    shift 1

    p6_run_read_cmd aws apigateway get-sdk-type --id $id "$@"
}

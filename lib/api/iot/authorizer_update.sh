p6_aws_iot_authorizer_update() {
    local authorizer_name="$1"
    shift 1

    p6_log_or_run aws iot update-authorizer --authorizer-name $authorizer_name "$@"
}

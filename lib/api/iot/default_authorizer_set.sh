p6_aws_iot_default_authorizer_set() {
    local authorizer_name="$1"
    shift 1

    p6_log_or_run aws iot set-default-authorizer --authorizer-name $authorizer_name "$@"
}

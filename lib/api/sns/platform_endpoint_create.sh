p6_aws_sns_platform_endpoint_create() {
    local platform_application_arn="$1"
    local token="$2"
    shift 2

    p6_log_or_run aws sns create-platform-endpoint --platform-application-arn $platform_application_arn --token $token "$@"
}

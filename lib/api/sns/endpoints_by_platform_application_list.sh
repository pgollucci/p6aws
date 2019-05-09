p6_aws_sns_endpoints_by_platform_application_list() {
    local platform_application_arn="$1"
    shift 1

    p6_run_read_cmd aws sns list-endpoints-by-platform-application --platform-application-arn $platform_application_arn "$@"
}

p6_aws_sns_platform_application_delete() {
    local platform_application_arn="$1"
    shift 1

    p6_run_write_cmd aws sns delete-platform-application --platform-application-arn $platform_application_arn "$@"
}

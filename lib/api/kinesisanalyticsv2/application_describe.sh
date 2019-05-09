p6_aws_kinesisanalyticsv2_application_describe() {
    local application_name="$1"
    shift 1

    p6_log_and_run aws kinesisanalyticsv2 describe-application --application-name $application_name "$@"
}

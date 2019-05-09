p6_aws_kinesisanalytics_application_stop() {
    local application_name="$1"
    shift 1

    p6_log_or_run aws kinesisanalytics stop-application --application-name $application_name "$@"
}

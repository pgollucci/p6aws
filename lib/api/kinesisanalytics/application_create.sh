p6_aws_kinesisanalytics_application_create() {
    local application_name="$1"
    shift 1

    p6_log_or_run aws kinesisanalytics create-application --application-name $application_name "$@"
}

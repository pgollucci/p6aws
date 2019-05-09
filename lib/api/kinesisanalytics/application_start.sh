p6_aws_kinesisanalytics_application_start() {
    local application_name="$1"
    local input_configurations="$2"
    shift 2

    p6_log_or_run aws kinesisanalytics start-application --application-name $application_name --input-configurations $input_configurations "$@"
}

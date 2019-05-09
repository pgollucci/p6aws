p6_aws_kinesisanalytics_application_update() {
    local application_name="$1"
    local current_application_version_id="$2"
    local application_update="$3"
    shift 3

    p6_log_or_run aws kinesisanalytics update-application --application-name $application_name --current-application-version-id $current_application_version_id --application-update $application_update "$@"
}

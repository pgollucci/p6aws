p6_aws_elasticbeanstalk_application_update() {
    local application_name="$1"
    shift 1

    p6_log_or_run aws elasticbeanstalk update-application --application-name $application_name "$@"
}

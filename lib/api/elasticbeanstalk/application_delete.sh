p6_aws_elasticbeanstalk_application_delete() {
    local application_name="$1"
    shift 1

    p6_run_write_cmd aws elasticbeanstalk delete-application --application-name $application_name "$@"
}

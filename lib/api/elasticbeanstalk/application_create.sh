p6_aws_elasticbeanstalk_application_create() {
    local application_name="$1"
    shift 1

    p6_run_write_cmd aws elasticbeanstalk create-application --application-name $application_name "$@"
}

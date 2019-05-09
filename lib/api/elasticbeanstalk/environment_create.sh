p6_aws_elasticbeanstalk_environment_create() {
    local application_name="$1"
    shift 1

    p6_log_or_run aws elasticbeanstalk create-environment --application-name $application_name "$@"
}

p6_aws_serverlessrepo_application_update() {
    local application_id="$1"
    shift 1

    p6_log_or_run aws serverlessrepo update-application --application-id $application_id "$@"
}

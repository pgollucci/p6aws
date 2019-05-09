p6_aws_serverlessrepo_application_get() {
    local application_id="$1"
    shift 1

    p6_log_and_run aws serverlessrepo get-application --application-id $application_id "$@"
}

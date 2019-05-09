p6_aws_serverlessrepo_application_delete() {
    local application_id="$1"
    shift 1

    p6_log_or_run aws serverlessrepo delete-application --application-id $application_id "$@"
}

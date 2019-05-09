p6_aws_mgh_application_state_describe() {
    local application_id="$1"
    shift 1

    p6_log_and_run aws mgh describe-application-state --application-id $application_id "$@"
}

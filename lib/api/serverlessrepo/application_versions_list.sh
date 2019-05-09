p6_aws_serverlessrepo_application_versions_list() {
    local application_id="$1"
    shift 1

    p6_log_and_run aws serverlessrepo list-application-versions --application-id $application_id "$@"
}

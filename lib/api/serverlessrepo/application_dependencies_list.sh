p6_aws_serverlessrepo_application_dependencies_list() {
    local application_id="$1"
    shift 1

    p6_run_read_cmd aws serverlessrepo list-application-dependencies --application-id $application_id "$@"
}

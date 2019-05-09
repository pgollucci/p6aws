p6_aws_serverlessrepo_application_policy_get() {
    local application_id="$1"
    shift 1

    p6_run_read_cmd aws serverlessrepo get-application-policy --application-id $application_id "$@"
}

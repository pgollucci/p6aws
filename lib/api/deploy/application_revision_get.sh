p6_aws_deploy_application_revision_get() {
    local application_name="$1"
    shift 1

    p6_run_read_cmd aws deploy get-application-revision --application-name $application_name "$@"
}

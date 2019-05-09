p6_aws_deploy_application_delete() {
    local application_name="$1"
    shift 1

    p6_run_write_cmd aws deploy delete-application --application-name $application_name "$@"
}

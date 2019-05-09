p6_aws_deploy_deployment_groups_list() {
    local application_name="$1"
    shift 1

    p6_run_read_cmd aws deploy list-deployment-groups --application-name $application_name "$@"
}

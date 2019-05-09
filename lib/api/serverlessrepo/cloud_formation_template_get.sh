p6_aws_serverlessrepo_cloud_formation_template_get() {
    local application_id="$1"
    local template_id="$2"
    shift 2

    p6_log_and_run aws serverlessrepo get-cloud-formation-template --application-id $application_id --template-id $template_id "$@"
}

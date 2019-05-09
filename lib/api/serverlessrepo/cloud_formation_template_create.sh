p6_aws_serverlessrepo_cloud_formation_template_create() {
    local application_id="$1"
    shift 1

    p6_log_or_run aws serverlessrepo create-cloud-formation-template --application-id $application_id "$@"
}

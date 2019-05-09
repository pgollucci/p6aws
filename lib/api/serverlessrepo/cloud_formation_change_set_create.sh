p6_aws_serverlessrepo_cloud_formation_change_set_create() {
    local application_id="$1"
    local stack_name="$2"
    shift 2

    p6_log_or_run aws serverlessrepo create-cloud-formation-change-set --application-id $application_id --stack-name $stack_name "$@"
}

p6_aws_elasticbeanstalk_application_resource_lifecycle_update() {
    local application_name="$1"
    local resource_lifecycle_config="$2"
    shift 2

    p6_log_or_run aws elasticbeanstalk update-application-resource-lifecycle --application-name $application_name --resource-lifecycle-config $resource_lifecycle_config "$@"
}

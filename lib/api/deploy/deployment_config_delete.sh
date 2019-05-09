p6_aws_deploy_deployment_config_delete() {
    local deployment_config_name="$1"
    shift 1

    p6_run_write_cmd aws deploy delete-deployment-config --deployment-config-name $deployment_config_name "$@"
}

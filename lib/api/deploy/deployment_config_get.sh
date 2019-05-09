p6_aws_deploy_deployment_config_get() {
    local deployment_config_name="$1"
    shift 1

    p6_run_read_cmd aws deploy get-deployment-config --deployment-config-name $deployment_config_name "$@"
}

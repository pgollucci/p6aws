p6_aws_deploy_deployment_get() {
    local deployment_id="$1"
    shift 1

    p6_run_read_cmd aws deploy get-deployment --deployment-id $deployment_id "$@"
}

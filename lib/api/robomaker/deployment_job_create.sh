p6_aws_robomaker_deployment_job_create() {
    local fleet="$1"
    local deployment_application_configs="$2"
    shift 2

    p6_log_or_run aws robomaker create-deployment-job --fleet $fleet --deployment-application-configs $deployment_application_configs "$@"
}

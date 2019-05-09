p6_aws_robomaker_deployment_job_sync() {
    local fleet="$1"
    shift 1

    p6_log_or_run aws robomaker sync-deployment-job --fleet $fleet "$@"
}

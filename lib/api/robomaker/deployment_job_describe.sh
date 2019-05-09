p6_aws_robomaker_deployment_job_describe() {
    local job="$1"
    shift 1

    p6_log_and_run aws robomaker describe-deployment-job --job $job "$@"
}

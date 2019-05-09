p6_aws_robomaker_deployment_job_describe() {
    local job="$1"
    shift 1

    p6_run_read_cmd aws robomaker describe-deployment-job --job $job "$@"
}

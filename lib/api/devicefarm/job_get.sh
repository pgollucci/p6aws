p6_aws_devicefarm_job_get() {
    local arn="$1"
    shift 1

    p6_run_read_cmd aws devicefarm get-job --arn $arn "$@"
}

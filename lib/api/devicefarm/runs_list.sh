p6_aws_devicefarm_runs_list() {
    local arn="$1"
    shift 1

    p6_run_read_cmd aws devicefarm list-runs --arn $arn "$@"
}

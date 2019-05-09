p6_aws_devicefarm_samples_list() {
    local arn="$1"
    shift 1

    p6_run_read_cmd aws devicefarm list-samples --arn $arn "$@"
}

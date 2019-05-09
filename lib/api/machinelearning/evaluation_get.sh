p6_aws_machinelearning_evaluation_get() {
    local evaluation_id="$1"
    shift 1

    p6_run_read_cmd aws machinelearning get-evaluation --evaluation-id $evaluation_id "$@"
}

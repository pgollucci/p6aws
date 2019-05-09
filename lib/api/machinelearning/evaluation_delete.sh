p6_aws_machinelearning_evaluation_delete() {
    local evaluation_id="$1"
    shift 1

    p6_run_write_cmd aws machinelearning delete-evaluation --evaluation-id $evaluation_id "$@"
}

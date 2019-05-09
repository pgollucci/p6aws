p6_aws_sagemaker_algorithm_delete() {
    local algorithm_name="$1"
    shift 1

    p6_run_write_cmd aws sagemaker delete-algorithm --algorithm-name $algorithm_name "$@"
}

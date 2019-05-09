p6_aws_sagemaker_algorithm_delete() {
    local algorithm_name="$1"
    shift 1

    p6_log_or_run aws sagemaker delete-algorithm --algorithm-name $algorithm_name "$@"
}

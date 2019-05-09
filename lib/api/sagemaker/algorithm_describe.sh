p6_aws_sagemaker_algorithm_describe() {
    local algorithm_name="$1"
    shift 1

    p6_log_and_run aws sagemaker describe-algorithm --algorithm-name $algorithm_name "$@"
}

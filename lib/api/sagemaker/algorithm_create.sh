p6_aws_sagemaker_algorithm_create() {
    local algorithm_name="$1"
    local training_specification="$2"
    shift 2

    p6_log_or_run aws sagemaker create-algorithm --algorithm-name $algorithm_name --training-specification $training_specification "$@"
}

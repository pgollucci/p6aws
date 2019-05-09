p6_aws_sagemaker_algorithm_create() {
    local algorithm_name="$1"
    local training_specification="$2"
    shift 2

    p6_run_write_cmd aws sagemaker create-algorithm --algorithm-name $algorithm_name --training-specification $training_specification "$@"
}

p6_aws_machinelearning_evaluation_create() {
    local evaluation_id="$1"
    local ml_model_id="$2"
    local evaluation_data_source_id="$3"
    shift 3

    p6_log_or_run aws machinelearning create-evaluation --evaluation-id $evaluation_id --ml-model-id $ml_model_id --evaluation-data-source-id $evaluation_data_source_id "$@"
}

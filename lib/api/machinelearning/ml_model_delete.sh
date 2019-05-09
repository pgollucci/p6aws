p6_aws_machinelearning_ml_model_delete() {
    local ml_model_id="$1"
    shift 1

    p6_log_or_run aws machinelearning delete-ml-model --ml-model-id $ml_model_id "$@"
}

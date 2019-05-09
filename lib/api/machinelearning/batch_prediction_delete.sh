p6_aws_machinelearning_batch_prediction_delete() {
    local batch_prediction_id="$1"
    shift 1

    p6_log_or_run aws machinelearning delete-batch-prediction --batch-prediction-id $batch_prediction_id "$@"
}

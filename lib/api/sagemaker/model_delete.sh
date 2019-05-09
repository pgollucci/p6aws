p6_aws_sagemaker_model_delete() {
    local model_name="$1"
    shift 1

    p6_log_or_run aws sagemaker delete-model --model-name $model_name "$@"
}

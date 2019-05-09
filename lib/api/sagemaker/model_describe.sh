p6_aws_sagemaker_model_describe() {
    local model_name="$1"
    shift 1

    p6_log_and_run aws sagemaker describe-model --model-name $model_name "$@"
}

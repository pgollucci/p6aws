p6_aws_sagemaker_model_package_describe() {
    local model_package_name="$1"
    shift 1

    p6_log_and_run aws sagemaker describe-model-package --model-package-name $model_package_name "$@"
}

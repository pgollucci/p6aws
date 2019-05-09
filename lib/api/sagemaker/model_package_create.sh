p6_aws_sagemaker_model_package_create() {
    local model_package_name="$1"
    shift 1

    p6_log_or_run aws sagemaker create-model-package --model-package-name $model_package_name "$@"
}

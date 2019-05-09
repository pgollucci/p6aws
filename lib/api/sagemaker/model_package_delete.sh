p6_aws_sagemaker_model_package_delete() {
    local model_package_name="$1"
    shift 1

    p6_run_write_cmd aws sagemaker delete-model-package --model-package-name $model_package_name "$@"
}

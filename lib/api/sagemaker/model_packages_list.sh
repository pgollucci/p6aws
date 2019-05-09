p6_aws_sagemaker_model_packages_list() {

    p6_run_read_cmd aws sagemaker list-model-packages "$@"
}

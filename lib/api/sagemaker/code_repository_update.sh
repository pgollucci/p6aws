p6_aws_sagemaker_code_repository_update() {
    local code_repository_name="$1"
    shift 1

    p6_run_write_cmd aws sagemaker update-code-repository --code-repository-name $code_repository_name "$@"
}

p6_aws_sagemaker_compilation_job_describe() {
    local compilation_job_name="$1"
    shift 1

    p6_log_and_run aws sagemaker describe-compilation-job --compilation-job-name $compilation_job_name "$@"
}

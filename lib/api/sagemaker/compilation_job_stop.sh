p6_aws_sagemaker_compilation_job_stop() {
    local compilation_job_name="$1"
    shift 1

    p6_log_or_run aws sagemaker stop-compilation-job --compilation-job-name $compilation_job_name "$@"
}

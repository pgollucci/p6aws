p6_aws_sagemaker_transform_job_stop() {
    local transform_job_name="$1"
    shift 1

    p6_log_or_run aws sagemaker stop-transform-job --transform-job-name $transform_job_name "$@"
}

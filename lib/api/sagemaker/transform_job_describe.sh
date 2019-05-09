p6_aws_sagemaker_transform_job_describe() {
    local transform_job_name="$1"
    shift 1

    p6_log_and_run aws sagemaker describe-transform-job --transform-job-name $transform_job_name "$@"
}

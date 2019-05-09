p6_aws_sagemaker_transform_job_stop() {
    local transform_job_name="$1"
    shift 1

    p6_run_write_cmd aws sagemaker stop-transform-job --transform-job-name $transform_job_name "$@"
}

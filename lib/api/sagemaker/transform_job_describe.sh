p6_aws_sagemaker_transform_job_describe() {
    local transform_job_name="$1"
    shift 1

    p6_run_read_cmd aws sagemaker describe-transform-job --transform-job-name $transform_job_name "$@"
}

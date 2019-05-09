p6_aws_sagemaker_labeling_job_describe() {
    local labeling_job_name="$1"
    shift 1

    p6_run_read_cmd aws sagemaker describe-labeling-job --labeling-job-name $labeling_job_name "$@"
}

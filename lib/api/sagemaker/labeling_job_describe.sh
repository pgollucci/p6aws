p6_aws_sagemaker_labeling_job_describe() {
    local labeling_job_name="$1"
    shift 1

    p6_log_and_run aws sagemaker describe-labeling-job --labeling-job-name $labeling_job_name "$@"
}

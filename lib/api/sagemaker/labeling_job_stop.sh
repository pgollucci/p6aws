p6_aws_sagemaker_labeling_job_stop() {
    local labeling_job_name="$1"
    shift 1

    p6_log_or_run aws sagemaker stop-labeling-job --labeling-job-name $labeling_job_name "$@"
}

p6_aws_sagemaker_training_job_describe() {
    local training_job_name="$1"
    shift 1

    p6_log_and_run aws sagemaker describe-training-job --training-job-name $training_job_name "$@"
}

p6_aws_sagemaker_training_job_stop() {
    local training_job_name="$1"
    shift 1

    p6_run_write_cmd aws sagemaker stop-training-job --training-job-name $training_job_name "$@"
}

p6_aws_sagemaker_training_jobs_for_hyper_parameter_tuning_job_list() {
    local hyper_parameter_tuning_job_name="$1"
    shift 1

    p6_log_and_run aws sagemaker list-training-jobs-for-hyper-parameter-tuning-job --hyper-parameter-tuning-job-name $hyper_parameter_tuning_job_name "$@"
}

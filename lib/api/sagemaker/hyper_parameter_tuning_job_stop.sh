p6_aws_sagemaker_hyper_parameter_tuning_job_stop() {
    local hyper_parameter_tuning_job_name="$1"
    shift 1

    p6_log_or_run aws sagemaker stop-hyper-parameter-tuning-job --hyper-parameter-tuning-job-name $hyper_parameter_tuning_job_name "$@"
}

p6_aws_sagemaker_hyper_parameter_tuning_job_describe() {
    local hyper_parameter_tuning_job_name="$1"
    shift 1

    p6_log_and_run aws sagemaker describe-hyper-parameter-tuning-job --hyper-parameter-tuning-job-name $hyper_parameter_tuning_job_name "$@"
}

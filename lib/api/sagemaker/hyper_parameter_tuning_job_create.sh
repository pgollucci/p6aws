p6_aws_sagemaker_hyper_parameter_tuning_job_create() {
    local hyper_parameter_tuning_job_name="$1"
    local hyper_parameter_tuning_job_config="$2"
    local training_job_definition="$3"
    shift 3

    p6_log_or_run aws sagemaker create-hyper-parameter-tuning-job --hyper-parameter-tuning-job-name $hyper_parameter_tuning_job_name --hyper-parameter-tuning-job-config $hyper_parameter_tuning_job_config --training-job-definition $training_job_definition "$@"
}

######################################################################
#<
#
# Function:
#      = p6_aws_sagemaker_hyper_parameter_tuning_job_create(hyper_parameter_tuning_job_name, hyper_parameter_tuning_job_config)
#
# Arg(s):
#    hyper_parameter_tuning_job_name - 
#    hyper_parameter_tuning_job_config - 
#
#
#>
######################################################################
p6_aws_sagemaker_hyper_parameter_tuning_job_create() {
    local hyper_parameter_tuning_job_name="$1"
    local hyper_parameter_tuning_job_config="$2"
    shift 2

    p6_run_write_cmd aws sagemaker create-hyper-parameter-tuning-job --hyper-parameter-tuning-job-name $hyper_parameter_tuning_job_name --hyper-parameter-tuning-job-config $hyper_parameter_tuning_job_config "$@"
}
######################################################################
#<
#
# Function:
#      = p6_aws_sagemaker_hyper_parameter_tuning_job_stop(hyper_parameter_tuning_job_name)
#
# Arg(s):
#    hyper_parameter_tuning_job_name - 
#
#
#>
######################################################################
p6_aws_sagemaker_hyper_parameter_tuning_job_stop() {
    local hyper_parameter_tuning_job_name="$1"
    shift 1

    p6_run_write_cmd aws sagemaker stop-hyper-parameter-tuning-job --hyper-parameter-tuning-job-name $hyper_parameter_tuning_job_name "$@"
}
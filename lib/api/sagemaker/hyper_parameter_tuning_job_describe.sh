######################################################################
#<
#
# Function:
#	p6_aws_sagemaker_hyper_parameter_tuning_job_describe(hyper_parameter_tuning_job_name)
#
#  Args:
#	hyper_parameter_tuning_job_name - 
#
#>
######################################################################
p6_aws_sagemaker_hyper_parameter_tuning_job_describe() {
    local hyper_parameter_tuning_job_name="$1"
    shift 1

    p6_run_read_cmd aws sagemaker describe-hyper-parameter-tuning-job --hyper-parameter-tuning-job-name $hyper_parameter_tuning_job_name "$@"
}
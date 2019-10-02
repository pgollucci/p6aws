######################################################################
#<
#
# Function:
#	p6_aws_sagemaker_hyper_parameter_tuning_jobs_list()
#
#>
######################################################################
p6_aws_sagemaker_hyper_parameter_tuning_jobs_list() {

    p6_run_read_cmd aws sagemaker list-hyper-parameter-tuning-jobs "$@"
}
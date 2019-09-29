######################################################################
#<
#
# Function:
#      = p6_aws_sagemaker_training_jobs_for_hyper_parameter_tuning_job_list(hyper_parameter_tuning_job_name)
#
# Arg(s):
#    hyper_parameter_tuning_job_name - 
#
#
#>
######################################################################
p6_aws_sagemaker_training_jobs_for_hyper_parameter_tuning_job_list() {
    local hyper_parameter_tuning_job_name="$1"
    shift 1

    p6_run_read_cmd aws sagemaker list-training-jobs-for-hyper-parameter-tuning-job --hyper-parameter-tuning-job-name $hyper_parameter_tuning_job_name "$@"
}
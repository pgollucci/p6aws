######################################################################
#<
#
# Function:
#	p6_aws_sagemaker_training_job_describe(training_job_name)
#
#  Args:
#	training_job_name - 
#
#>
######################################################################
p6_aws_sagemaker_training_job_describe() {
    local training_job_name="$1"
    shift 1

    p6_run_read_cmd aws sagemaker describe-training-job --training-job-name $training_job_name "$@"
}
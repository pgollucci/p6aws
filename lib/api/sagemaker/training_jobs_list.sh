######################################################################
#<
#
# Function:
#	p6_aws_sagemaker_training_jobs_list()
#
#>
######################################################################
p6_aws_sagemaker_training_jobs_list() {

    p6_run_read_cmd aws sagemaker list-training-jobs "$@"
}
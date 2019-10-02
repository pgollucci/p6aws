######################################################################
#<
#
# Function:
#	p6_aws_sagemaker_labeling_jobs_list()
#
#>
######################################################################
p6_aws_sagemaker_labeling_jobs_list() {

    p6_run_read_cmd aws sagemaker list-labeling-jobs "$@"
}
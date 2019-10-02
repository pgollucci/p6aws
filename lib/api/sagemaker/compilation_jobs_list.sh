######################################################################
#<
#
# Function:
#	p6_aws_sagemaker_compilation_jobs_list()
#
#>
######################################################################
p6_aws_sagemaker_compilation_jobs_list() {

    p6_run_read_cmd aws sagemaker list-compilation-jobs "$@"
}
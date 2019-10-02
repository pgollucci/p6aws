######################################################################
#<
#
# Function:
#	p6_aws_sagemaker_labeling_job_stop(labeling_job_name)
#
#  Args:
#	labeling_job_name - 
#
#>
######################################################################
p6_aws_sagemaker_labeling_job_stop() {
    local labeling_job_name="$1"
    shift 1

    p6_run_write_cmd aws sagemaker stop-labeling-job --labeling-job-name $labeling_job_name "$@"
}
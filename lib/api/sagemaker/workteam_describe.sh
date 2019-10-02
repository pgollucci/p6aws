######################################################################
#<
#
# Function:
#	p6_aws_sagemaker_workteam_describe(workteam_name)
#
#  Args:
#	workteam_name - 
#
#>
######################################################################
p6_aws_sagemaker_workteam_describe() {
    local workteam_name="$1"
    shift 1

    p6_run_read_cmd aws sagemaker describe-workteam --workteam-name $workteam_name "$@"
}
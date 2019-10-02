######################################################################
#<
#
# Function:
#	p6_aws_sagemaker_notebook_instance_describe(notebook_instance_name)
#
#  Args:
#	notebook_instance_name - 
#
#>
######################################################################
p6_aws_sagemaker_notebook_instance_describe() {
    local notebook_instance_name="$1"
    shift 1

    p6_run_read_cmd aws sagemaker describe-notebook-instance --notebook-instance-name $notebook_instance_name "$@"
}
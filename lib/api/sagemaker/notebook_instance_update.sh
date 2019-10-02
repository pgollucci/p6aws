######################################################################
#<
#
# Function:
#	p6_aws_sagemaker_notebook_instance_update(notebook_instance_name)
#
#  Args:
#	notebook_instance_name - 
#
#>
######################################################################
p6_aws_sagemaker_notebook_instance_update() {
    local notebook_instance_name="$1"
    shift 1

    p6_run_write_cmd aws sagemaker update-notebook-instance --notebook-instance-name $notebook_instance_name "$@"
}
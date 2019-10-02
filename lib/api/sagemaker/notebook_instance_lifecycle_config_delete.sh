######################################################################
#<
#
# Function:
#	p6_aws_sagemaker_notebook_instance_lifecycle_config_delete(notebook_instance_lifecycle_config_name)
#
#  Args:
#	notebook_instance_lifecycle_config_name - 
#
#>
######################################################################
p6_aws_sagemaker_notebook_instance_lifecycle_config_delete() {
    local notebook_instance_lifecycle_config_name="$1"
    shift 1

    p6_run_write_cmd aws sagemaker delete-notebook-instance-lifecycle-config --notebook-instance-lifecycle-config-name $notebook_instance_lifecycle_config_name "$@"
}
######################################################################
#<
#
# Function:
#      = p6_aws_sagemaker_notebook_instance_lifecycle_config_create(notebook_instance_lifecycle_config_name)
#
# Arg(s):
#    notebook_instance_lifecycle_config_name - 
#
#
#>
######################################################################
p6_aws_sagemaker_notebook_instance_lifecycle_config_create() {
    local notebook_instance_lifecycle_config_name="$1"
    shift 1

    p6_run_write_cmd aws sagemaker create-notebook-instance-lifecycle-config --notebook-instance-lifecycle-config-name $notebook_instance_lifecycle_config_name "$@"
}
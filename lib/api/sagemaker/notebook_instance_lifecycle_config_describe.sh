######################################################################
#<
#
# Function:
#      = p6_aws_sagemaker_notebook_instance_lifecycle_config_describe(notebook_instance_lifecycle_config_name)
#
# Arg(s):
#    notebook_instance_lifecycle_config_name - 
#
#
#>
######################################################################
p6_aws_sagemaker_notebook_instance_lifecycle_config_describe() {
    local notebook_instance_lifecycle_config_name="$1"
    shift 1

    p6_run_read_cmd aws sagemaker describe-notebook-instance-lifecycle-config --notebook-instance-lifecycle-config-name $notebook_instance_lifecycle_config_name "$@"
}
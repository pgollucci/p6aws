######################################################################
#<
#
# Function:
#      = p6_aws_sagemaker_lifecycle_config(notebook_instance_name)
#
# Arg(s):
#    notebook_instance_name - 
#
#
#>
######################################################################
p6_aws_sagemaker_lifecycle_config() {
        local notebook_instance_name="$1"
        shift 1

    cond_log_and_run aws sagemaker update-notebook-instance --notebook-instance-name $notebook_instance_name --disassociate-lifecycle-config "$@"
}

######################################################################
#<
#
# Function:
#      = p6_aws_sagemaker_accelerator_types(notebook_instance_name)
#
# Arg(s):
#    notebook_instance_name - 
#
#
#>
######################################################################
p6_aws_sagemaker_accelerator_types() {
        local notebook_instance_name="$1"
        shift 1

    cond_log_and_run aws sagemaker update-notebook-instance --notebook-instance-name $notebook_instance_name --disassociate-accelerator-types "$@"
}

######################################################################
#<
#
# Function:
#      = p6_aws_sagemaker_default_code_repository(notebook_instance_name)
#
# Arg(s):
#    notebook_instance_name - 
#
#
#>
######################################################################
p6_aws_sagemaker_default_code_repository() {
        local notebook_instance_name="$1"
        shift 1

    cond_log_and_run aws sagemaker update-notebook-instance --notebook-instance-name $notebook_instance_name --disassociate-default-code-repository "$@"
}

######################################################################
#<
#
# Function:
#      = p6_aws_sagemaker_additional_code_repositories(notebook_instance_name)
#
# Arg(s):
#    notebook_instance_name - 
#
#
#>
######################################################################
p6_aws_sagemaker_additional_code_repositories() {
        local notebook_instance_name="$1"
        shift 1

    cond_log_and_run aws sagemaker update-notebook-instance --notebook-instance-name $notebook_instance_name --disassociate-additional-code-repositories "$@"
}

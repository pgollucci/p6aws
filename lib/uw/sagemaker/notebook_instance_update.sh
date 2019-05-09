aws_sagemaker_lifecycle_config() {
        local notebook_instance_name="$1"
        shift 1

    cond_log_and_run aws sagemaker update-notebook-instance --notebook-instance-name $notebook_instance_name --disassociate-lifecycle-config "$@"
}

aws_sagemaker_accelerator_types() {
        local notebook_instance_name="$1"
        shift 1

    cond_log_and_run aws sagemaker update-notebook-instance --notebook-instance-name $notebook_instance_name --disassociate-accelerator-types "$@"
}

aws_sagemaker_default_code_repository() {
        local notebook_instance_name="$1"
        shift 1

    cond_log_and_run aws sagemaker update-notebook-instance --notebook-instance-name $notebook_instance_name --disassociate-default-code-repository "$@"
}

aws_sagemaker_additional_code_repositories() {
        local notebook_instance_name="$1"
        shift 1

    cond_log_and_run aws sagemaker update-notebook-instance --notebook-instance-name $notebook_instance_name --disassociate-additional-code-repositories "$@"
}


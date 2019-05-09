p6_aws_sagemaker_notebook_instance_update() {
    local notebook_instance_name="$1"
    shift 1

    p6_log_or_run aws sagemaker update-notebook-instance --notebook-instance-name $notebook_instance_name "$@"
}

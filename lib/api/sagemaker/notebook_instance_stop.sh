p6_aws_sagemaker_notebook_instance_stop() {
    local notebook_instance_name="$1"
    shift 1

    p6_log_or_run aws sagemaker stop-notebook-instance --notebook-instance-name $notebook_instance_name "$@"
}

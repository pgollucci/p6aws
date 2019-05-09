p6_aws_sagemaker_notebook_instance_describe() {
    local notebook_instance_name="$1"
    shift 1

    p6_log_and_run aws sagemaker describe-notebook-instance --notebook-instance-name $notebook_instance_name "$@"
}

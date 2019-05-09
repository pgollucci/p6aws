p6_aws_sagemaker_notebook_instance_start() {
    local notebook_instance_name="$1"
    shift 1

    p6_run_write_cmd aws sagemaker start-notebook-instance --notebook-instance-name $notebook_instance_name "$@"
}

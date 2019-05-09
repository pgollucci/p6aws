p6_aws_sagemaker_presigned_notebook_instance_url_create() {
    local notebook_instance_name="$1"
    shift 1

    p6_log_or_run aws sagemaker create-presigned-notebook-instance-url --notebook-instance-name $notebook_instance_name "$@"
}

p6_aws_sagemaker_notebook_instance_create() {
    local notebook_instance_name="$1"
    local instance_type="$2"
    local role_arn="$3"
    shift 3

    p6_log_or_run aws sagemaker create-notebook-instance --notebook-instance-name $notebook_instance_name --instance-type $instance_type --role-arn $role_arn "$@"
}

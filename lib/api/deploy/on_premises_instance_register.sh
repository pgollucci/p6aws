p6_aws_deploy_on_premises_instance_register() {
    local instance_name="$1"
    shift 1

    p6_run_write_cmd aws deploy register-on-premises-instance --instance-name $instance_name "$@"
}

p6_aws_ec2_password_data_get() {
    local instance_id="$1"
    shift 1

    p6_run_read_cmd aws ec2 get-password-data --instance-id $instance_id "$@"
}

p6_aws_ec2_image_register() {
    local name="$1"
    shift 1

    p6_log_or_run aws ec2 register-image --name $name "$@"
}

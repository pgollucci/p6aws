p6_aws_ec2_image_create() {
    local instance_id="$1"
    local name="$2"
    shift 2

    p6_log_or_run aws ec2 create-image --instance-id $instance_id --name $name "$@"
}

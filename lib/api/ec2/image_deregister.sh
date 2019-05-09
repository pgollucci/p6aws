p6_aws_ec2_image_deregister() {
    local image_id="$1"
    shift 1

    p6_log_or_run aws ec2 deregister-image --image-id $image_id "$@"
}

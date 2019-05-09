p6_aws_ec2_image_deregister() {
    local image_id="$1"
    shift 1

    p6_run_write_cmd aws ec2 deregister-image --image-id $image_id "$@"
}

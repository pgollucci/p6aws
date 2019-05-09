p6_aws_ec2_image_attribute_reset() {
    local attribute="$1"
    local image_id="$2"
    shift 2

    p6_run_write_cmd aws ec2 reset-image-attribute --attribute $attribute --image-id $image_id "$@"
}

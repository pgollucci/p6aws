p6_aws_ec2_image_copy() {
    local name="$1"
    local source_image_id="$2"
    local source_region="$3"
    shift 3

    p6_run_write_cmd aws ec2 copy-image --name $name --source-image-id $source_image_id --source-region $source_region "$@"
}

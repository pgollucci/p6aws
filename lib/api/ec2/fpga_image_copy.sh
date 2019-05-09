p6_aws_ec2_fpga_image_copy() {
    local source_fpga_image_id="$1"
    local source_region="$2"
    shift 2

    p6_log_or_run aws ec2 copy-fpga-image --source-fpga-image-id $source_fpga_image_id --source-region $source_region "$@"
}

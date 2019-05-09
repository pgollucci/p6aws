p6_aws_ec2_fpga_image_attribute_modify() {
    local fpga_image_id="$1"
    shift 1

    p6_run_write_cmd aws ec2 modify-fpga-image-attribute --fpga-image-id $fpga_image_id "$@"
}

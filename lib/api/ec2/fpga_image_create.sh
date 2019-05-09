p6_aws_ec2_fpga_image_create() {
    local input_storage_location="$1"
    shift 1

    p6_log_or_run aws ec2 create-fpga-image --input-storage-location $input_storage_location "$@"
}

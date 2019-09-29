######################################################################
#<
#
# Function:
#      = p6_aws_ec2_fpga_image_copy(source_fpga_image_id, source_region)
#
# Arg(s):
#    source_fpga_image_id - 
#    source_region - 
#
#
#>
######################################################################
p6_aws_ec2_fpga_image_copy() {
    local source_fpga_image_id="$1"
    local source_region="$2"
    shift 2

    p6_run_write_cmd aws ec2 copy-fpga-image --source-fpga-image-id $source_fpga_image_id --source-region $source_region "$@"
}
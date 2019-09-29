######################################################################
#<
#
# Function:
#      = p6_aws_ec2_fpga_image_attribute_describe(fpga_image_id, attribute)
#
# Arg(s):
#    fpga_image_id - 
#    attribute - 
#
#
#>
######################################################################
p6_aws_ec2_fpga_image_attribute_describe() {
    local fpga_image_id="$1"
    local attribute="$2"
    shift 2

    p6_run_read_cmd aws ec2 describe-fpga-image-attribute --fpga-image-id $fpga_image_id --attribute $attribute "$@"
}
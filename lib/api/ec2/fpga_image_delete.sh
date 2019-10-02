######################################################################
#<
#
# Function:
#	p6_aws_ec2_fpga_image_delete(fpga_image_id)
#
#  Args:
#	fpga_image_id - 
#
#>
######################################################################
p6_aws_ec2_fpga_image_delete() {
    local fpga_image_id="$1"
    shift 1

    p6_run_write_cmd aws ec2 delete-fpga-image --fpga-image-id $fpga_image_id "$@"
}
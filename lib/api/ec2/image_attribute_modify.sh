######################################################################
#<
#
# Function:
#	p6_aws_ec2_image_attribute_modify(image_id)
#
#  Args:
#	image_id - 
#
#>
######################################################################
p6_aws_ec2_image_attribute_modify() {
    local image_id="$1"
    shift 1

    p6_run_write_cmd aws ec2 modify-image-attribute --image-id $image_id "$@"
}
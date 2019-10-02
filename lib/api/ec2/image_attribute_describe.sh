######################################################################
#<
#
# Function:
#	p6_aws_ec2_image_attribute_describe(attribute, image_id)
#
#  Args:
#	attribute - 
#	image_id - 
#
#>
######################################################################
p6_aws_ec2_image_attribute_describe() {
    local attribute="$1"
    local image_id="$2"
    shift 2

    p6_run_read_cmd aws ec2 describe-image-attribute --attribute $attribute --image-id $image_id "$@"
}
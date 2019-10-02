######################################################################
#<
#
# Function:
#	p6_aws_ec2_volume_attribute_describe(attribute, volume_id)
#
#  Args:
#	attribute - 
#	volume_id - 
#
#>
######################################################################
p6_aws_ec2_volume_attribute_describe() {
    local attribute="$1"
    local volume_id="$2"
    shift 2

    p6_run_read_cmd aws ec2 describe-volume-attribute --attribute $attribute --volume-id $volume_id "$@"
}
######################################################################
#<
#
# Function:
#      = p6_aws_ec2_instance_attribute_reset(attribute, instance_id)
#
# Arg(s):
#    attribute - 
#    instance_id - 
#
#
#>
######################################################################
p6_aws_ec2_instance_attribute_reset() {
    local attribute="$1"
    local instance_id="$2"
    shift 2

    p6_run_write_cmd aws ec2 reset-instance-attribute --attribute $attribute --instance-id $instance_id "$@"
}
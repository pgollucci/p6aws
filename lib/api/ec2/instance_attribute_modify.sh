######################################################################
#<
#
# Function:
#      = p6_aws_ec2_instance_attribute_modify(instance_id)
#
# Arg(s):
#    instance_id - 
#
#
#>
######################################################################
p6_aws_ec2_instance_attribute_modify() {
    local instance_id="$1"
    shift 1

    p6_run_write_cmd aws ec2 modify-instance-attribute --instance-id $instance_id "$@"
}
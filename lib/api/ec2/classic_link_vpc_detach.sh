######################################################################
#<
#
# Function:
#	p6_aws_ec2_classic_link_vpc_detach(instance_id, vpc_id)
#
#  Args:
#	instance_id - 
#	vpc_id - 
#
#>
######################################################################
p6_aws_ec2_classic_link_vpc_detach() {
    local instance_id="$1"
    local vpc_id="$2"
    shift 2

    p6_run_write_cmd aws ec2 detach-classic-link-vpc --instance-id $instance_id --vpc-id $vpc_id "$@"
}
######################################################################
#<
#
# Function:
#	p6_aws_ec2_classic_link_vpc_attach(groups, instance_id, vpc_id)
#
#  Args:
#	groups - 
#	instance_id - 
#	vpc_id - 
#
#>
######################################################################
p6_aws_ec2_classic_link_vpc_attach() {
    local groups="$1"
    local instance_id="$2"
    local vpc_id="$3"
    shift 3

    p6_run_write_cmd aws ec2 attach-classic-link-vpc --groups $groups --instance-id $instance_id --vpc-id $vpc_id "$@"
}
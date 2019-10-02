######################################################################
#<
#
# Function:
#	p6_aws_ec2_vpc_tenancy_modify(vpc_id, instance_tenancy)
#
#  Args:
#	vpc_id - 
#	instance_tenancy - 
#
#>
######################################################################
p6_aws_ec2_vpc_tenancy_modify() {
    local vpc_id="$1"
    local instance_tenancy="$2"
    shift 2

    p6_run_write_cmd aws ec2 modify-vpc-tenancy --vpc-id $vpc_id --instance-tenancy $instance_tenancy "$@"
}
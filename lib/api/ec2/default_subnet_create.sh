######################################################################
#<
#
# Function:
#	p6_aws_ec2_default_subnet_create(availability_zone)
#
#  Args:
#	availability_zone - 
#
#>
######################################################################
p6_aws_ec2_default_subnet_create() {
    local availability_zone="$1"
    shift 1

    p6_run_write_cmd aws ec2 create-default-subnet --availability-zone $availability_zone "$@"
}
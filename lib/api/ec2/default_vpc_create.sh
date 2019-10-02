######################################################################
#<
#
# Function:
#	p6_aws_ec2_default_vpc_create()
#
#>
######################################################################
p6_aws_ec2_default_vpc_create() {

    p6_run_write_cmd aws ec2 create-default-vpc "$@"
}
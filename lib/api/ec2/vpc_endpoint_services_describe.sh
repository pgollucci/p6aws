######################################################################
#<
#
# Function:
#      = p6_aws_ec2_vpc_endpoint_services_describe()
#
#
#
#>
######################################################################
p6_aws_ec2_vpc_endpoint_services_describe() {

    p6_run_read_cmd aws ec2 describe-vpc-endpoint-services "$@"
}
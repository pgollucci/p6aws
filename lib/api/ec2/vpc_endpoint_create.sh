######################################################################
#<
#
# Function:
#	p6_aws_ec2_vpc_endpoint_create(vpc_id, service_name)
#
#  Args:
#	vpc_id - 
#	service_name - 
#
#>
######################################################################
p6_aws_ec2_vpc_endpoint_create() {
    local vpc_id="$1"
    local service_name="$2"
    shift 2

    p6_run_write_cmd aws ec2 create-vpc-endpoint --vpc-id $vpc_id --service-name $service_name "$@"
}
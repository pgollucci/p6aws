######################################################################
#<
#
# Function:
#	p6_aws_ec2_vpc_endpoint_connections_accept(service_id, vpc_endpoint_ids)
#
#  Args:
#	service_id - 
#	vpc_endpoint_ids - 
#
#>
######################################################################
p6_aws_ec2_vpc_endpoint_connections_accept() {
    local service_id="$1"
    local vpc_endpoint_ids="$2"
    shift 2

    p6_run_write_cmd aws ec2 accept-vpc-endpoint-connections --service-id $service_id --vpc-endpoint-ids $vpc_endpoint_ids "$@"
}
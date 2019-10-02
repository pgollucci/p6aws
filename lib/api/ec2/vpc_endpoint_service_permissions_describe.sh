######################################################################
#<
#
# Function:
#	p6_aws_ec2_vpc_endpoint_service_permissions_describe(service_id)
#
#  Args:
#	service_id - 
#
#>
######################################################################
p6_aws_ec2_vpc_endpoint_service_permissions_describe() {
    local service_id="$1"
    shift 1

    p6_run_read_cmd aws ec2 describe-vpc-endpoint-service-permissions --service-id $service_id "$@"
}
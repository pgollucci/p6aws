######################################################################
#<
#
# Function:
#	p6_aws_ec2_vpc_endpoint_service_configurations_delete(service_ids)
#
#  Args:
#	service_ids - 
#
#>
######################################################################
p6_aws_ec2_vpc_endpoint_service_configurations_delete() {
    local service_ids="$1"
    shift 1

    p6_run_write_cmd aws ec2 delete-vpc-endpoint-service-configurations --service-ids $service_ids "$@"
}
######################################################################
#<
#
# Function:
#      = p6_aws_ec2_vpc_endpoint_service_permissions_modify(service_id)
#
# Arg(s):
#    service_id - 
#
#
#>
######################################################################
p6_aws_ec2_vpc_endpoint_service_permissions_modify() {
    local service_id="$1"
    shift 1

    p6_run_write_cmd aws ec2 modify-vpc-endpoint-service-permissions --service-id $service_id "$@"
}
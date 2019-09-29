######################################################################
#<
#
# Function:
#      = p6_aws_ec2_flow_logs_create(resource_ids, resource_type, traffic_type)
#
# Arg(s):
#    resource_ids - 
#    resource_type - 
#    traffic_type - 
#
#
#>
######################################################################
p6_aws_ec2_flow_logs_create() {
    local resource_ids="$1"
    local resource_type="$2"
    local traffic_type="$3"
    shift 3

    p6_run_write_cmd aws ec2 create-flow-logs --resource-ids $resource_ids --resource-type $resource_type --traffic-type $traffic_type "$@"
}
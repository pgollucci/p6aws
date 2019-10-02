######################################################################
#<
#
# Function:
#	p6_aws_servicediscovery_instances_list(service_id)
#
#  Args:
#	service_id - 
#
#>
######################################################################
p6_aws_servicediscovery_instances_list() {
    local service_id="$1"
    shift 1

    p6_run_read_cmd aws servicediscovery list-instances --service-id $service_id "$@"
}
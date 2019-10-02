######################################################################
#<
#
# Function:
#	p6_aws_servicediscovery_instance_deregister(service_id, instance_id)
#
#  Args:
#	service_id - 
#	instance_id - 
#
#>
######################################################################
p6_aws_servicediscovery_instance_deregister() {
    local service_id="$1"
    local instance_id="$2"
    shift 2

    p6_run_write_cmd aws servicediscovery deregister-instance --service-id $service_id --instance-id $instance_id "$@"
}
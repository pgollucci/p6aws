######################################################################
#<
#
# Function:
#	p6_aws_servicediscovery_instance_custom_health_status_update(service_id, instance_id, status)
#
#  Args:
#	service_id - 
#	instance_id - 
#	status - 
#
#>
######################################################################
p6_aws_servicediscovery_instance_custom_health_status_update() {
    local service_id="$1"
    local instance_id="$2"
    local status="$3"
    shift 3

    p6_run_write_cmd aws servicediscovery update-instance-custom-health-status --service-id $service_id --instance-id $instance_id --status $status "$@"
}